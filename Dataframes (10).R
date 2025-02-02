
# Criando um dataframe vazio (sem par�metros)
df <- data.frame()
#ja que nao tem coluna e linha n�o imprime nada
class(df)
df


# Criando vetores vazios
#vetor de nomes varios
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

#vetor de vetores (fun��o C)
df <- data.frame(c(nomes, idades, itens, codigos))
df


# Criando vetores
pais = c("Portugal", "Inglaterra", "Irlanda", "Egito", "Brasil")
nome = c("Bruno", "Tiago", "Amanda", "Bianca", "Marta")
altura = c(1.88, 1.76, 1.53, 1.69, 1.68)
codigo = c(5001, 2183, 4702, 7965, 8890)


# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa
#pesquisa � o nome do dataframe

# Adicionando um novo vetor a um dataframe existente
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq = cbind(pesquisa, olhos)
pesq

#cbind unindo por coluna e inserir no novo dataframe no pesq

# Informações sobre o dataframe
#resumo sobre os dados
str(pesq)
#numero de dimens�es
dim(pesq)
#comprimento
length(pesq)


# Obtendo um vetor de um dataframe - dados da unica coluna
pesq$pais
pesq$nome


# Extraindo um unico valor- primeira linha e primeira coluna
pesq[1,1]
pesq[3,2]


# Número de Linhas e Colunas 
nrow(pesq)
ncol(pesq)

# Primeiros elementos do dataframe
head(pesq)
#dataset vem junto com o R
head(mtcars)


#  Ultimos elementos do dataframe
tail(pesq)
tail(mtcars)


# Data frames built-in do R
#help
?mtcars
mtcars
#Visualizar o banco
View(mtcars)

# Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq
#retorna ao �ndice  altura at� 1,60

# Dataframes Nomeados
names(pesq) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesq

#mudar nomes de colunas e linhas
colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq


# Carregando um arquivo csv
?read.csv
pacientes <- data.frame(read.csv(file = 'pacientes.csv', header = TRUE, sep = ","))


# Visualizando o dataset 
#View com letra maiuscula
View(pacientes)
#cabe�a primeiras linhas
head(pacientes)
#resumos estat�sticos
summary(pacientes)


# Visualizando as variáveis
pacientes$Diabete
pacientes$status
pacientes$Status


# Histograma - verificar distribuicao dos dados
hist(pacientes$Idade)


# Combinando dataframes
dataset_final <- merge(pesq, pacientes)
dataset_final


