#!/bin/bash -l

#SBATCH --job-name=srav1
#SBATCH --partition=normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=48:00:00
#SBATCH --exclude=c401-001,c401-002,c401-003,c401-004,c401-011,c401-012,c401-013,c401-014,c401-021,c401-022,c401-023,c401-024,c401-031,c401-032,c401-033,c401-034,c401-041,c401-042,c401-043,c401-044,c401-051,c401-052,c401-053,c401-054,c401-061,c401-062,c401-063,c401-064,c401-071,c401-072,c401-073,c401-074,c401-081,c401-082,c401-083,c401-084,c401-091,c401-092,c401-093,c401-094,c401-101,c401-102,c401-103,c401-104,c401-111,c401-112,c401-113,c401-114,c401-121,c401-122,c401-123,c401-124,c401-131,c401-132,c401-133,c401-134,c402-001,c402-002,c402-003,c402-004,c402-011,c402-012,c402-013,c402-014,c402-021,c402-022,c402-023,c402-024,c402-031,c402-032,c402-033,c402-034,c402-041,c402-042,c402-043,c402-044,c402-051,c402-052,c402-053,c402-054,c402-061,c402-062,c402-063,c402-064,c402-071,c402-072,c402-073,c402-074,c402-081,c402-082,c402-083,c402-084,c402-091,c402-092,c402-093,c402-094,c402-101,c402-102,c402-103,c402-104,c402-111,c402-112,c402-113,c402-114,c402-121,c402-122,c402-123,c402-124,c402-131,c402-132,c402-133,c402-134,c403-001,c403-002,c403-003,c403-004,c403-011,c403-012,c403-013,c403-014,c403-021,c403-022,c403-023,c403-024,c403-031,c403-032,c403-033,c403-034,c403-041,c403-042,c403-043,c403-044,c403-051,c403-052,c403-053,c403-054,c403-061,c403-062,c403-063,c403-064,c403-071,c403-072,c403-073,c403-074,c403-081,c403-082,c403-083,c403-084,c403-091,c403-092,c403-093,c403-094,c403-101,c403-102,c403-103,c403-104,c403-111,c403-112,c403-113,c403-114,c403-121,c403-122,c403-123,c403-124,c403-131,c403-132,c403-133,c403-134,c404-001,c404-002,c404-003,c404-004,c404-011,c404-012,c404-013,c404-014,c404-021,c404-022,c404-023,c404-024,c404-031,c404-032,c404-033,c404-034,c404-041,c404-042,c404-043,c404-044,c404-051,c404-052,c404-053,c404-054,c404-061,c404-062,c404-063,c404-064,c404-071,c404-072,c404-073,c404-074,c404-081,c404-082,c404-083,c404-084,c404-091,c404-092,c404-093,c404-094,c404-101,c404-102,c404-103,c404-104,c404-111,c404-112,c404-113,c404-114,c404-121,c404-122,c404-123,c404-124,c404-131,c404-132,c404-133,c404-134,c405-001,c405-002,c405-003,c405-004,c405-011,c405-012,c405-013,c405-014,c405-021,c405-022,c405-023,c405-024,c405-031,c405-032,c405-033,c405-034,c405-041,c405-042,c405-043,c405-044,c405-051,c405-052,c405-053,c405-054,c405-061,c405-062,c405-063,c405-064,c405-071,c405-072,c405-073,c405-074,c405-081,c405-082,c405-083,c405-084,c405-091,c405-092,c405-093,c405-094,c405-101,c405-102,c405-103,c405-104,c405-111,c405-112,c405-113,c405-114,c405-121,c405-122,c405-123,c405-124,c405-131,c405-132,c405-133,c405-134,c406-001,c406-002,c406-003,c406-004,c406-011,c406-012,c406-013,c406-014,c406-021,c406-022,c406-023,c406-024,c406-031,c406-032,c406-033,c406-034,c406-041,c406-042,c406-043,c406-044,c406-051,c406-052,c406-053,c406-054,c406-061,c406-062,c406-063,c406-064,c406-071,c406-072,c406-073,c406-074,c406-081,c406-082,c406-083,c406-084,c406-091,c406-092,c406-093,c406-094,c406-101,c406-102,c406-103,c406-104,c406-111,c406-112,c406-113,c406-114,c406-121,c406-122,c406-123,c406-124,c406-131,c406-132,c406-133,c406-134,c407-001,c407-002,c407-003,c407-004,c407-011,c407-012,c407-013,c407-014,c407-021,c407-022,c407-023,c407-024,c407-031,c407-032,c407-033,c407-034,c407-041,c407-042,c407-043,c407-044,c407-051,c407-052,c407-053,c407-054,c407-061,c407-062,c407-063,c407-064,c407-071,c407-072,c407-073,c407-074,c407-081,c407-082,c407-083,c407-084,c407-091,c407-092,c407-093,c407-094,c407-101,c407-102,c407-103,c407-104,c407-111,c407-112,c407-113,c407-114,c407-121,c407-122,c407-123,c407-124,c407-131,c407-132,c407-133,c407-134,c408-001,c408-002,c408-003,c408-004,c408-011,c408-012,c408-013,c408-014,c408-021,c408-022,c408-023,c408-024,c408-031,c408-032,c408-033,c408-034,c408-041,c408-042,c408-043,c408-044,c408-051,c408-052,c408-053,c408-054,c408-061,c408-062,c408-063,c408-064,c408-071,c408-072,c408-073,c408-074,c408-081,c408-082,c408-083,c408-084,c408-091,c408-092,c408-093,c408-094,c408-101,c408-102,c408-103,c408-104,c408-111,c408-112,c408-113,c408-114,c408-121,c408-122,c408-123,c408-124,c408-131,c408-132,c408-133,c408-134,c409-001,c409-002,c409-003,c409-004,c409-011,c409-012,c409-013,c409-014,c409-021,c409-022,c409-023,c409-024,c409-031,c409-032,c409-033,c409-034,c409-041,c409-042,c409-043,c409-044,c409-051,c409-052,c409-053,c409-054,c409-061,c409-062,c409-063,c409-064,c409-071,c409-072,c409-073,c409-074,c409-081,c409-082,c409-083,c409-084,c409-091,c409-092,c409-093,c409-094,c409-101,c409-102,c409-103,c409-104,c409-111,c409-112,c409-113,c409-114,c409-121,c409-122,c409-123,c409-124,c409-131,c409-132,c409-133,c409-134,c410-001,c410-002,c410-003,c410-004,c410-011,c410-012,c410-013,c410-014,c410-021,c410-022,c410-023,c410-024,c410-031,c410-032,c410-033,c410-034,c410-041,c410-042,c410-043,c410-044,c410-051,c410-052,c410-053,c410-054,c410-061,c410-062,c410-063,c410-064,c410-071,c410-072,c410-073,c410-074,c410-081,c410-082,c410-083,c410-084,c410-091,c410-092,c410-093,c410-094,c410-101,c410-102,c410-103,c410-104,c410-111,c410-112,c410-113,c410-114,c410-121,c410-122,c410-123,c410-124,c410-131,c410-132,c410-133,c410-134,c411-001,c411-002,c411-003,c411-004,c411-011,c411-012,c411-013,c411-014,c411-021,c411-022,c411-023,c411-024,c411-031,c411-032,c411-033,c411-034,c411-041,c411-042,c411-043,c411-044,c411-051,c411-052,c411-053,c411-054,c411-061,c411-062,c411-063,c411-064,c411-071,c411-072,c411-073,c411-074,c411-081,c411-082,c411-083,c411-084,c411-091,c411-092,c411-093,c411-094,c411-101,c411-102,c411-103,c411-104,c411-111,c411-112,c411-113,c411-114,c411-121,c411-122,c411-123,c411-124,c411-131,c411-132,c411-133,c411-134,c412-001,c412-002,c412-003,c412-004,c412-011,c412-012,c412-013,c412-014,c412-021,c412-022,c412-023,c412-024,c412-031,c412-032,c412-033,c412-034,c412-041,c412-042,c412-043,c412-044,c412-051,c412-052,c412-053,c412-054,c412-061,c412-062,c412-063,c412-064,c412-071,c412-072,c412-073,c412-074,c412-081,c412-082,c412-083,c412-084,c412-091,c412-092,c412-093,c412-094,c412-101,c412-102,c412-103,c412-104,c412-111,c412-112,c412-113,c412-114,c412-121,c412-122,c412-123,c412-124,c412-131,c412-132,c412-133,c412-134,c413-001,c413-002,c413-003,c413-004,c413-011,c413-012,c413-013,c413-014,c413-021,c413-022,c413-023,c413-024,c413-031,c413-032,c413-033,c413-034,c413-041,c413-042,c413-043,c413-044,c413-051,c413-052,c413-053,c413-054,c413-061,c413-062,c413-063,c413-064,c413-071,c413-072,c413-073,c413-074,c413-081,c413-082,c413-083,c413-084,c413-091,c413-092,c413-093,c413-094,c413-101,c413-102,c413-103,c413-104,c413-111,c413-112,c413-113,c413-114,c413-121,c413-122,c413-123,c413-124,c413-131,c413-132,c413-133,c413-134,c414-001,c414-002,c414-003,c414-004,c414-011,c414-012,c414-013,c414-014,c414-021,c414-022,c414-023,c414-024,c414-031,c414-032,c414-033,c414-034,c414-041,c414-042,c414-043,c414-044,c414-051,c414-052,c414-053,c414-054,c414-061,c414-062,c414-063,c414-064,c414-071,c414-072,c414-073,c414-074,c414-081,c414-082,c414-083,c414-084,c414-091,c414-092,c414-093,c414-094,c414-101,c414-102,c414-103,c414-104,c414-111,c414-112,c414-113,c414-114,c414-121,c414-122,c414-123,c414-124,c414-131,c414-132,c414-133,c414-134,c415-001,c415-002,c415-003,c415-004,c415-011,c415-012,c415-013,c415-014,c415-021,c415-022,c415-023,c415-024,c415-031,c415-032,c415-033,c415-034,c415-041,c415-042,c415-043,c415-044,c415-051,c415-052,c415-053,c415-054,c415-061,c415-062,c415-063,c415-064,c415-071,c415-072,c415-073,c415-074,c415-081,c415-082,c415-083,c415-084,c415-091,c415-092,c415-093,c415-094,c415-101,c415-102,c415-103,c415-104,c415-111,c415-112,c415-113,c415-114,c415-121,c415-122,c415-123,c415-124,c415-131,c415-132,c415-133,c415-134,c416-001,c416-002,c416-003,c416-004,c416-011,c416-012,c416-013,c416-014,c416-021,c416-022,c416-023,c416-024,c416-031,c416-032,c416-033,c416-034,c416-041,c416-042,c416-043,c416-044,c416-051,c416-052,c416-053,c416-054,c416-061,c416-062,c416-063,c416-064,c416-071,c416-072,c416-073,c416-074,c416-081,c416-082,c416-083,c416-084,c416-091,c416-092,c416-093,c416-094,c416-101,c416-102,c416-103,c416-104,c416-111,c416-112,c416-113,c416-114,c416-121,c416-122,c416-123,c416-124,c416-131,c416-132,c416-133,c416-134,c417-001,c417-002,c417-003,c417-004,c417-011,c417-012,c417-013,c417-014,c417-021,c417-022,c417-023,c417-024,c417-031,c417-032,c417-033,c417-034,c417-041,c417-042,c417-043,c417-044,c417-051,c417-052,c417-053,c417-054,c417-061,c417-062,c417-063,c417-064,c417-071,c417-072,c417-073,c417-074,c417-081,c417-082,c417-083,c417-084,c417-091,c417-092,c417-093,c417-094,c417-101,c417-102,c417-103,c417-104,c417-111,c417-112,c417-113,c417-114,c417-121,c417-122,c417-123,c417-124,c417-131,c417-132,c417-133,c417-134,c418-001,c418-002,c418-003,c418-004,c418-011,c418-012,c418-013,c418-014,c418-021,c418-022,c418-023,c418-024,c418-031,c418-032,c418-033,c418-034,c418-041,c418-042,c418-043,c418-044,c418-051,c418-052,c418-053,c418-054,c418-061,c418-062,c418-063,c418-064,c418-071,c418-072,c418-073,c418-074,c418-081,c418-082,c418-083,c418-084,c418-091,c418-092,c418-093,c418-094,c418-101,c418-102,c418-103,c418-104,c418-111,c418-112,c418-113,c418-114,c418-121,c418-122,c418-123,c418-124,c418-131,c418-132,c418-133,c418-134,c419-001,c419-002,c419-003,c419-004,c419-011,c419-012,c419-013,c419-014,c419-021,c419-022,c419-023,c419-024,c419-031,c419-032,c419-033,c419-034,c419-041,c419-042,c419-043,c419-044,c419-051,c419-052,c419-053,c419-054,c419-061,c419-062,c419-063,c419-064,c419-071,c419-072,c419-073,c419-074,c419-081,c419-082,c419-083,c419-084,c419-091,c419-092,c419-093,c419-094,c419-101,c419-102,c419-103,c419-104,c419-111,c419-112,c419-113,c419-114,c419-121,c419-122,c419-123,c419-124,c419-131,c419-132,c419-133,c419-134,c420-001,c420-002,c420-003,c420-004,c420-011,c420-012,c420-013,c420-014,c420-021,c420-022,c420-023,c420-024,c420-031,c420-032,c420-033,c420-034,c420-041,c420-042,c420-043,c420-044,c420-051,c420-052,c420-053,c420-054,c420-061,c420-062,c420-063,c420-064,c420-071,c420-072,c420-073,c420-074,c420-081,c420-082,c420-083,c420-084,c420-091,c420-092,c420-093,c420-094,c420-101,c420-102,c420-103,c420-104,c420-111,c420-112,c420-113,c420-114,c420-121,c420-122,c420-123,c420-124,c420-131,c420-132,c420-133,c420-134,c421-001,c421-002,c421-003,c421-004,c421-011,c421-012,c421-013,c421-014,c421-021,c421-022,c421-023,c421-024,c421-031,c421-032,c421-033,c421-034,c421-041,c421-042,c421-043,c421-044,c421-051,c421-052,c421-053,c421-054,c421-061,c421-062,c421-063,c421-064,c421-071,c421-072,c421-073,c421-074,c421-081,c421-082,c421-083,c421-084,c421-091,c421-092,c421-093,c421-094,c421-101,c421-102,c421-103,c421-104,c421-111,c421-112,c421-113,c421-114,c421-121,c421-122,c421-123,c421-124,c421-131,c421-132,c421-133,c421-134,c422-001,c422-002,c422-003,c422-004,c422-011,c422-012,c422-013,c422-014,c422-021,c422-022,c422-023,c422-024,c422-031,c422-032,c422-033,c422-034,c422-041,c422-042,c422-043,c422-044,c422-051,c422-052,c422-053,c422-054,c422-061,c422-062,c422-063,c422-064,c422-071,c422-072,c422-073,c422-074,c422-081,c422-082,c422-083,c422-084,c422-091,c422-092,c422-093,c422-094,c422-101,c422-102,c422-103,c422-104,c422-111,c422-112,c422-113,c422-114,c422-121,c422-122,c422-123,c422-124,c422-131,c422-132,c422-133,c422-134,c423-001,c423-002,c423-003,c423-004,c423-011,c423-012,c423-013,c423-014,c423-021,c423-022,c423-023,c423-024,c423-031,c423-032,c423-033,c423-034,c423-041,c423-042,c423-043,c423-044,c423-051,c423-052,c423-053,c423-054,c423-061,c423-062,c423-063,c423-064,c423-071,c423-072,c423-073,c423-074,c423-081,c423-082,c423-083,c423-084,c423-091,c423-092,c423-093,c423-094,c423-101,c423-102,c423-103,c423-104,c423-111,c423-112,c423-113,c423-114,c423-121,c423-122,c423-123,c423-124,c423-131,c423-132,c423-133,c423-134,c424-001,c424-002,c424-003,c424-004,c424-011,c424-012,c424-013,c424-014,c424-021,c424-022,c424-023,c424-024,c424-031,c424-032,c424-033,c424-034,c424-041,c424-042,c424-043,c424-044,c424-051,c424-052,c424-053,c424-054,c424-061,c424-062,c424-063,c424-064,c424-071,c424-072,c424-073,c424-074,c424-081,c424-082,c424-083,c424-084,c424-091,c424-092,c424-093,c424-094,c424-101,c424-102,c424-103,c424-104,c424-111,c424-112,c424-113,c424-114,c424-121,c424-122,c424-123,c424-124,c424-131,c424-132,c424-133,c424-134,c425-001,c425-002,c425-003,c425-004,c425-011,c425-012,c425-013,c425-014,c425-021,c425-022,c425-023,c425-024,c425-031,c425-032,c425-033,c425-034,c425-041,c425-042,c425-043,c425-044,c425-051,c425-052,c425-053,c425-054,c425-061,c425-062,c425-063,c425-064,c425-071,c425-072,c425-073,c425-074,c425-081,c425-082,c425-083,c425-084,c425-091,c425-092,c425-093,c425-094,c425-101,c425-102,c425-103,c425-104,c425-111,c425-112,c425-113,c425-114,c425-121,c425-122,c425-123,c425-124,c425-131,c425-132,c425-133,c425-134,c426-001,c426-002,c426-003,c426-004,c426-011,c426-012,c426-013,c426-014,c426-021,c426-022,c426-023,c426-024,c426-031,c426-032,c426-033,c426-034,c426-041,c426-042,c426-043,c426-044,c426-051,c426-052,c426-053,c426-054,c426-061,c426-062,c426-063,c426-064,c426-071,c426-072,c426-073,c426-074,c426-081,c426-082,c426-083,c426-084,c426-091,c426-092,c426-093,c426-094,c426-101,c426-102,c426-103,c426-104,c426-111,c426-112,c426-113,c426-114,c426-121,c426-122,c426-123,c426-124,c426-131,c426-132,c426-133,c426-134,c427-001,c427-002,c427-003,c427-004,c427-011,c427-012,c427-013,c427-014,c427-021,c427-022,c427-023,c427-024,c427-031,c427-032,c427-033,c427-034,c427-041,c427-042,c427-043,c427-044,c427-051,c427-052,c427-053,c427-054,c427-061,c427-062,c427-063,c427-064,c427-071,c427-072,c427-073,c427-074,c427-081,c427-082,c427-083,c427-084,c427-091,c427-092,c427-093,c427-094,c427-101,c427-102,c427-103,c427-104,c427-111,c427-112,c427-113,c427-114,c427-121,c427-122,c427-123,c427-124,c427-131,c427-132,c427-133,c427-134,c428-001,c428-002,c428-003,c428-004,c428-011,c428-012,c428-013,c428-014,c428-021,c428-022,c428-023,c428-024,c428-031,c428-032,c428-033,c428-034,c428-041,c428-042,c428-043,c428-044,c428-051,c428-052,c428-053,c428-054,c428-061,c428-062,c428-063,c428-064,c428-071,c428-072,c428-073,c428-074,c428-081,c428-082,c428-083,c428-084,c428-091,c428-092,c428-093,c428-094,c428-101,c428-102,c428-103,c428-104,c428-111,c428-112,c428-113,c428-114,c428-121,c428-122,c428-123,c428-124,c428-131,c428-132,c428-133,c428-134
#SBATCH -A TG-DEB180021

d=/work/04265/benbo81/stampede2/git/recount-pump

set -ex

hostname
module load sratoolkit && fastq-dump -X 10 -L info DRR001484

python ${d}/src/cluster.py run \
    --ini-base ${d}/projects/srav1/creds \
    --cluster-ini ~/.recount/cluster-knl.ini \
    1