Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D3A1148F4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 22:58:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0B06F90A;
	Thu,  5 Dec 2019 21:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D996F90A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 21:58:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19476956-1500050 
 for multiple; Thu, 05 Dec 2019 21:58:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 21:58:42 +0000
Message-Id: <20191205215842.862750-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Acquire a GT wakeref for the
 breadcrumb interrupt
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGFrZSBhIHdha2VyZWYgb24gdGhlIGludGVsX2d0IHNwZWNpZmljYWxseSBmb3IgdGhlIGVuYWJs
ZWQgYnJlYWRjcnVtYgppbnRlcnJ1cHQgc28gdGhhdCB3ZSBjYW4gc2FmZWx5IHByb2Nlc3MgdGhl
IG1taW8uIElmIHRoZSBpbnRlbF9ndCBpcwphbHJlYWR5IGFzbGVlcCBieSB0aGUgdGltZSB3ZSB0
cnkgYW5kIHNldHVwIHRoZSBicmVhZGNydW1iIGludGVycnVwdCwgYnkKYSBwcm9jZXNzIG9mIGVs
aW1pbmF0aW9uIHdlIGtub3cgdGhlIHJlcXVlc3QgbXVzdCBoYXZlIGJlZW4gY29tcGxldGVkCmFu
ZCB3ZSBjYW4gc2tpcCBpdHMgZW5hYmxlbWVudCEKCjw0PiBbMTUxOC4zNTAwMDVdIFVuY2xhaW1l
ZCB3cml0ZSB0byByZWdpc3RlciAweDIyMGE4Cjw0PiBbMTUxOC4zNTAzMjNdIFdBUk5JTkc6IENQ
VTogMiBQSUQ6IDM2ODUgYXQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmM6MTE2
MyBfX3VuY2xhaW1lZF9yZWdfZGVidWcrMHg0MC8weDUwIFtpOTE1XQo8ND4gWzE1MTguMzUwMzkz
XSBNb2R1bGVzIGxpbmtlZCBpbjogdmdlbSBzbmRfaGRhX2NvZGVjX2hkbWkgeDg2X3BrZ190ZW1w
X3RoZXJtYWwgaTkxNSBjb3JldGVtcCBjcmN0MTBkaWZfcGNsbXVsIGNyYzMyX3BjbG11bCBnaGFz
aF9jbG11bG5pX2ludGVsIHNuZF9oZGFfaW50ZWwgc25kX2ludGVsX2RzcGNmZyBzbmRfaGRhX2Nv
ZGVjIHNuZF9od2RlcCBzbmRfaGRhX2NvcmUgYnR1c2IgY2RjX2V0aGVyIGJ0cnRsIHVzYm5ldCBi
dGJjbSBidGludGVsIHI4MTUyIHNuZF9wY20gbWlpIGJsdWV0b290aCBlY2RoX2dlbmVyaWMgZWNj
IGkyY19oaWQgcGluY3RybF9zdW5yaXNlcG9pbnQgcGluY3RybF9pbnRlbCBpbnRlbF9scHNzX3Bj
aSBwcmltZV9udW1iZXJzIFtsYXN0IHVubG9hZGVkOiB2Z2VtXQo8ND4gWzE1MTguMzUwNjQ2XSBD
UFU6IDIgUElEOiAzNjg1IENvbW06IGdlbV9leGVjX3BhcnNlXyBUYWludGVkOiBHICAgICBVICAg
ICAgICAgICAgNS40LjAtcmM4LUNJLUNJX0RSTV83NDkwKyAjMQo8ND4gWzE1MTguMzUwNzA4XSBI
YXJkd2FyZSBuYW1lOiBHb29nbGUgQ2Fyb2xpbmUvQ2Fyb2xpbmUsIEJJT1MgTXJDaHJvbWVib3gg
MDgvMjcvMjAxOAo8ND4gWzE1MTguMzUwOTQ2XSBSSVA6IDAwMTA6X191bmNsYWltZWRfcmVnX2Rl
YnVnKzB4NDAvMHg1MCBbaTkxNV0KPDQ+IFsxNTE4LjM1MDk5Ml0gQ29kZTogNzQgMDUgNWIgNWQg
NDEgNWMgYzMgNDUgODQgZTQgNDggYzcgYzAgOTUgOGQgNDcgYTAgNDggYzcgYzYgOGIgOGQgNDcg
YTAgNDggMGYgNDQgZjAgODkgZWEgNDggYzcgYzcgOWUgOGQgNDcgYTAgZTggNDAgNDUgZTMgZTAg
PDBmPiAwYiA4MyAyZCAyNyA0ZiAyYSAwMCAwMSA1YiA1ZCA0MSA1YyBjMyA2NiA5MCA0MSA1NSA0
MSA1NCA1NSA1Mwo8ND4gWzE1MTguMzUxMTAwXSBSU1A6IDAwMTg6ZmZmZmM5MDAwMDdmMzljOCBF
RkxBR1M6IDAwMDEwMDg2Cjw0PiBbMTUxOC4zNTExNDBdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBS
Qlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwMDAwMDAwMDAwMDA2Cjw0PiBbMTUxOC4zNTEy
MDJdIFJEWDogMDAwMDAwMDA4MDAwMDAwNiBSU0k6IDAwMDAwMDAwMDAwMDAwMDAgUkRJOiAwMDAw
MDAwMGZmZmZmZmZmCjw0PiBbMTUxOC4zNTEyNDldIFJCUDogMDAwMDAwMDAwMDAyMjBhOCBSMDg6
IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAwCjw0PiBbMTUxOC4zNTEyOTZd
IFIxMDogZmZmZmM5MDAwMDdmMzk5MCBSMTE6IGZmZmZjOTAwMDA3ZjM4NjggUjEyOiAwMDAwMDAw
MDAwMDAwMDAwCjw0PiBbMTUxOC4zNTEzNDJdIFIxMzogMDAwMDAwMDBmZWZlZmZmZiBSMTQ6IDAw
MDAwMDAwMDAwMDAwOTIgUjE1OiBmZmZmODg4MTU1ZmVhMDAwCjw0PiBbMTUxOC4zNTEzOTFdIEZT
OiAgMDAwMDdmYzI1NWFiZmU0MCgwMDAwKSBHUzpmZmZmODg4MTdhYjAwMDAwKDAwMDApIGtubEdT
OjAwMDAwMDAwMDAwMDAwMDAKPDQ+IFsxNTE4LjM1MTQ0NV0gQ1M6ICAwMDEwIERTOiAwMDAwIEVT
OiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo8ND4gWzE1MTguMzUxNDg1XSBDUjI6IDAwMDA3
ZmMyNTU0ODgyZDAgQ1IzOiAwMDAwMDAwMTY4Y2EyMDA1IENSNDogMDAwMDAwMDAwMDM2MDZlMAo8
ND4gWzE1MTguMzUxNTI5XSBDYWxsIFRyYWNlOgo8ND4gWzE1MTguMzUxNzQ2XSAgZnd0YWJsZV93
cml0ZTMyKzB4MTE0LzB4MWQwIFtpOTE1XQo8ND4gWzE1MTguMzUxNzk1XSAgPyBzeW5jX2ZpbGVf
YWxsb2MrMHg4MC8weDgwCjw0PiBbMTUxOC4zNTIwMzldICBnZW44X2xvZ2ljYWxfcmluZ19lbmFi
bGVfaXJxKzB4MzAvMHg1MCBbaTkxNV0KPDQ+IFsxNTE4LjM1MjI5NV0gIGlycV9lbmFibGUucGFy
dC4xMCsweDIzLzB4NDAgW2k5MTVdCjw0PiBbMTUxOC4zNTI1MjNdICBpOTE1X3JlcXVlc3RfZW5h
YmxlX2JyZWFkY3J1bWIrMHhiNS8weDMzMCBbaTkxNV0KPDQ+IFsxNTE4LjM1MjU3NV0gID8gc3lu
Y19maWxlX2FsbG9jKzB4ODAvMHg4MAo8ND4gWzE1MTguMzUyNjEyXSAgX19kbWFfZmVuY2VfZW5h
YmxlX3NpZ25hbGluZysweDYwLzB4MTYwCjw0PiBbMTUxOC4zNTI2NTNdICA/IHN5bmNfZmlsZV9h
bGxvYysweDgwLzB4ODAKPDQ+IFsxNTE4LjM1MjY4NV0gIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2sr
MHg0NC8weGQwCjw0PiBbMTUxOC4zNTI3MjZdICBzeW5jX2ZpbGVfcG9sbCsweDk1LzB4YzAKPDQ+
IFsxNTE4LjM1Mjc2N10gIGRvX3N5c19wb2xsKzB4MjRkLzB4NTcwCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jIHwgMjIgKysrKysrKysrKysrKysrLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwppbmRleCA1NTMxNzA4MWQ0
OGIuLjhhOWZhY2Y0ZjNiNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfYnJlYWRjcnVtYnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVh
ZGNydW1icy5jCkBAIC0yOCw2ICsyOCw3IEBACiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2lu
Y2x1ZGUgImk5MTVfdHJhY2UuaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9wbS5oIgogCiBzdGF0aWMg
dm9pZCBpcnFfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKQEAgLTUz
LDE1ICs1NCwxNyBAQCBzdGF0aWMgdm9pZCBpcnFfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiAKIHN0YXRpYyB2b2lkIF9faW50ZWxfYnJlYWRjcnVtYnNfZGlzYXJtX2ly
cShzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIpCiB7CisJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lID0KKwkJY29udGFpbmVyX29mKGIsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MsIGJy
ZWFkY3J1bWJzKTsKKwogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmItPmlycV9sb2NrKTsKIAogCUdF
TV9CVUdfT04oIWItPmlycV9lbmFibGVkKTsKIAlpZiAoIS0tYi0+aXJxX2VuYWJsZWQpCi0JCWly
cV9kaXNhYmxlKGNvbnRhaW5lcl9vZihiLAotCQkJCQkgc3RydWN0IGludGVsX2VuZ2luZV9jcywK
LQkJCQkJIGJyZWFkY3J1bWJzKSk7CisJCWlycV9kaXNhYmxlKGVuZ2luZSk7CiAKIAliLT5pcnFf
YXJtZWQgPSBmYWxzZTsKKwlpbnRlbF9ndF9wbV9wdXRfYXN5bmMoZW5naW5lLT5ndCk7CiB9CiAK
IHZvaWQgaW50ZWxfZW5naW5lX2Rpc2FybV9icmVhZGNydW1icyhzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCkBAIC0yMDcsMTQgKzIxMCwxNyBAQCBzdGF0aWMgdm9pZCBzaWduYWxfaXJx
X3dvcmsoc3RydWN0IGlycV93b3JrICp3b3JrKQogCWludGVsX2VuZ2luZV9icmVhZGNydW1ic19p
cnEoZW5naW5lKTsKIH0KIAotc3RhdGljIHZvaWQgX19pbnRlbF9icmVhZGNydW1ic19hcm1faXJx
KHN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAqYikKK3N0YXRpYyBib29sIF9faW50ZWxfYnJlYWRj
cnVtYnNfYXJtX2lycShzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIpCiB7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lID0KIAkJY29udGFpbmVyX29mKGIsIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MsIGJyZWFkY3J1bWJzKTsKIAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmItPmlycV9s
b2NrKTsKIAlpZiAoYi0+aXJxX2FybWVkKQotCQlyZXR1cm47CisJCXJldHVybiB0cnVlOworCisJ
aWYgKCFpbnRlbF9ndF9wbV9nZXRfaWZfYXdha2UoZW5naW5lLT5ndCkpCisJCXJldHVybiBmYWxz
ZTsKIAogCS8qCiAJICogVGhlIGJyZWFkY3J1bWIgaXJxIHdpbGwgYmUgZGlzYXJtZWQgb24gdGhl
IGludGVycnVwdCBhZnRlciB0aGUKQEAgLTIzNCw2ICsyNDAsOCBAQCBzdGF0aWMgdm9pZCBfX2lu
dGVsX2JyZWFkY3J1bWJzX2FybV9pcnEoc3RydWN0IGludGVsX2JyZWFkY3J1bWJzICpiKQogCiAJ
aWYgKCFiLT5pcnFfZW5hYmxlZCsrKQogCQlpcnFfZW5hYmxlKGVuZ2luZSk7CisKKwlyZXR1cm4g
dHJ1ZTsKIH0KIAogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9icmVhZGNydW1icyhzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCkBAIC0yNzcsNyArMjg1LDggQEAgYm9vbCBpOTE1X3JlcXVl
c3RfZW5hYmxlX2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCXNwaW5fbG9j
aygmYi0+aXJxX2xvY2spOwogCQlHRU1fQlVHX09OKHRlc3RfYml0KEk5MTVfRkVOQ0VfRkxBR19T
SUdOQUwsICZycS0+ZmVuY2UuZmxhZ3MpKTsKIAotCQlfX2ludGVsX2JyZWFkY3J1bWJzX2FybV9p
cnEoYik7CisJCWlmICghX19pbnRlbF9icmVhZGNydW1ic19hcm1faXJxKGIpKQorCQkJZ290byB1
bmxvY2s7CiAKIAkJLyoKIAkJICogV2Uga2VlcCB0aGUgc2Vxbm8gaW4gcmV0aXJlbWVudCBvcmRl
ciwgc28gd2UgY2FuIGJyZWFrCkBAIC0zMDYsNiArMzE1LDcgQEAgYm9vbCBpOTE1X3JlcXVlc3Rf
ZW5hYmxlX2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCUdFTV9CVUdfT04o
IWNoZWNrX3NpZ25hbF9vcmRlcihjZSwgcnEpKTsKIAogCQlzZXRfYml0KEk5MTVfRkVOQ0VfRkxB
R19TSUdOQUwsICZycS0+ZmVuY2UuZmxhZ3MpOwordW5sb2NrOgogCQlzcGluX3VubG9jaygmYi0+
aXJxX2xvY2spOwogCX0KIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
