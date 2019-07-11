Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A2565F74
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 20:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01F76E0EB;
	Thu, 11 Jul 2019 18:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E8906E0EB;
 Thu, 11 Jul 2019 18:31:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87C2AA0099;
 Thu, 11 Jul 2019 18:31:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 11 Jul 2019 18:31:55 -0000
Message-ID: <20190711183155.9538.54189@emeril.freedesktop.org>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Initial_support_for_Tiger_Lake_=28rev7=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogSW5pdGlhbCBzdXBwb3J0IGZvciBUaWdlciBM
YWtlIChyZXY3KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjI3MjYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAozYjMwODI4MGQxODYgZHJtL2k5MTU6IEFkZCA0dGggcGlwZSBhbmQg
dHJhbnNjb2RlcgoyMmZmMjBkNzE1NzggZHJtL2k5MTUvdGdsOiBhZGQgaW5pdGlhbCBUaWdlciBM
YWtlIGRlZmluaXRpb25zCjI5ODNkMWU3MDQ4MyBkcm0vaTkxNS90Z2w6IEludHJvZHVjZSBUaWdl
ciBMYWtlIFBDSAo3MTQ5YjFlZmZiOTkgZHJtL2k5MTUvdGdsOiBBZGQgVEdMIFBDSCBkZXRlY3Rp
b24gaW4gdmlydHVhbGl6ZWQgZW52aXJvbm1lbnQKMGRmOTNjMDFjNDAxIGRybS9pOTE1L3RnbDog
QWRkIFRHTCBQQ0kgSURzCi06MzQ6IEVSUk9SOkNPTVBMRVhfTUFDUk86IE1hY3JvcyB3aXRoIGNv
bXBsZXggdmFsdWVzIHNob3VsZCBiZSBlbmNsb3NlZCBpbiBwYXJlbnRoZXNlcwojMzQ6IEZJTEU6
IGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmg6NTg3OgorI2RlZmluZSBJTlRFTF9UR0xfMTJfSURT
KGluZm8pIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE0OSwgaW5mbyksIFwKKwlJTlRFTF9WR0Ff
REVWSUNFKDB4OUE0MCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE1OSwgaW5mbyks
IFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE2MCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNF
KDB4OUE2OCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE3MCwgaW5mbyksIFwKKwlJ
TlRFTF9WR0FfREVWSUNFKDB4OUE3OCwgaW5mbykKCi06MzQ6IENIRUNLOk1BQ1JPX0FSR19SRVVT
RTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ2luZm8nIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwoj
MzQ6IEZJTEU6IGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmg6NTg3OgorI2RlZmluZSBJTlRFTF9U
R0xfMTJfSURTKGluZm8pIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE0OSwgaW5mbyksIFwKKwlJ
TlRFTF9WR0FfREVWSUNFKDB4OUE0MCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE1
OSwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE2MCwgaW5mbyksIFwKKwlJTlRFTF9W
R0FfREVWSUNFKDB4OUE2OCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE3MCwgaW5m
byksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE3OCwgaW5mbykKCnRvdGFsOiAxIGVycm9ycywg
MCB3YXJuaW5ncywgMSBjaGVja3MsIDIxIGxpbmVzIGNoZWNrZWQKMmY4ZWY1MDAyN2JmIGRybS9p
OTE1L3RnbDogQ2hlY2sgaWYgcGlwZSBEIGlzIGZ1c2VkCjk0ZWJhMzBiM2U2YyBkcm0vaTkxNS90
Z2w6IHJlbmFtZSBUUkFOU0NPREVSX0VEUF9WRFNDIHRvIHVzZSBvbiB0cmFuc2NvZGVyIEEKYmY4
ZmYyYzA5MjE3IGRybS9pOTE1L3RnbDogQWRkIHBvd2VyIHdlbGwgc3VwcG9ydAoyOTg5YjExMDJk
YzIgZHJtL2k5MTUvdGdsOiBBZGQgcG93ZXIgd2VsbCB0byBzdXBwb3J0IDR0aCBwaXBlCmQ3NDAw
OTE0YzJmZiBkcm0vaTkxNS90Z2w6IEFkZCBuZXcgcGxsIGlkcwoyMmM2ZTE1ZjI3ZjYgZHJtL2k5
MTUvdGdsOiBBZGQgcGxsIG1hbmFnZXIKZGViYWUwOTRhMTg4IGRybS9pOTE1L3RnbDogQWRkIGFk
ZGl0aW9uYWwgcG9ydHMgZm9yIFRpZ2VyIExha2UKMDc3OGM0ZjQ5N2NkIGRybS9pOTE1L3RnbDog
QWRkIGFkZGl0aW9uYWwgUEhZcyBmb3IgVGlnZXIgTGFrZQoyZWIyYTY0MTM0MzQgZHJtL2k5MTUv
dGdsOiBpbml0IGRkaSBwb3J0IEEtQyBmb3IgVGlnZXIgTGFrZQo2NWNkYmE2OGZkMjcgZHJtL2k5
MTUvdGdsOiBhcHBseSBEaXNwbGF5IFdBICMxMTc4IHRvIGZpeCB0eXBlIEMgZG9uZ2xlcwoyMmMw
N2QzMzllYWQgZHJtL2k5MTUvZ2VuMTI6IE1CVVMgQiBjcmVkaXQgY2hhbmdlCmJlMTkwY2M5ODQ2
MCBkcm0vaTkxNS90Z2w6IEFkZCBnbWJ1cyBncGlvIHBpbiB0byBwb3J0IG1hcHBpbmcKM2U1NmQ3
Mjg2ZDMxIGRybS9pOTE1L3RnbDogcG9ydCB0byBkZGMgcGluIG1hcHBpbmcKZTBiZGIyNjg5MGM5
IGRybS9pOTE1L3RnbDogQWRkIHZidCB2YWx1ZSBtYXBwaW5nIGZvciBEREMgQnVzIHBpbgozZjZi
OWI4ZTMzMDYgZHJtL2k5MTUvdGdsOiBBZGQgRFBMTCByZWdpc3RlcnMKNTQyMzczYmY0NmM1IGRy
bS9pOTE1L3RnbDogVXBkYXRlIERQTEwgY2xvY2sgcmVmZXJlbmNlIHJlZ2lzdGVyCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
