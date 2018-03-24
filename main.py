import os
import jinja2

def render(tpl_path, context):
    path, filename = os.path.split(tpl_path)
    return jinja2.Environment(
        loader=jinja2.FileSystemLoader(path or './')
    ).get_template(filename).render(context)

def writeResult(filePath, result):
    fh = open(filePath,"w")
    fh.write(result)
    fh.close()

def generateFeature(context):
    writeResult('./result/' + context['featureName'] + 'Controller.java', render('template/Controller.java.tpl', context))
    writeResult('./result/' + context['featureName'] + 'Entity.java', render('template/Entity.java.tpl', context))
    writeResult('./result/' + context['featureName'] + 'Model.java', render('template/Model.java.tpl', context))
    writeResult('./result/' + context['featureName'] + 'Repository.java', render('template/Repository.java.tpl', context))
    writeResult('./result/' + context['featureName'] + 'Service.java', render('template/Service.java.tpl', context))

def main():
    context = {
        'package': 'com.loyalty',
        'feature': 'memberPromotion',
        'featureName': 'MemberPromotion',
        'tableName': 'member_promotion'
    }
    generateFeature(context)

main()