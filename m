Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E91882E5E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 11:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD32A6E34E;
	Tue,  6 Aug 2019 09:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F8C6E343
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 09:06:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17901461-1500050 
 for multiple; Tue, 06 Aug 2019 10:05:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 10:05:17 +0100
Message-Id: <20190806090535.14807-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190806090535.14807-1-chris@chris-wilson.co.uk>
References: <20190806090535.14807-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/22] drm/i915/pmu: Use GT parked for
 estimating RC6 while asleep
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

QXMgd2UgdHJhY2sgd2hlbiB3ZSBwdXQgdGhlIEdUIGRldmljZSB0byBzbGVlcCB1cG9uIGlkbGlu
Zywgd2UgY2FuIHVzZQp0aGF0IGNhbGxiYWNrIHRvIHNhbXBsZSB0aGUgY3VycmVudCByYzYgY291
bnRlcnMgYW5kIHJlY29yZCB0aGUKdGltZXN0YW1wIGZvciBlc3RpbWF0aW5nIHNhbXBsZXMgYWZ0
ZXIgdGhhdCBwb2ludCB3aGlsZSBhc2xlZXAuCgp2MjogU3RpY2sgdG8gdXNpbmcga3RpbWVfdAp2
MzogVHJhY2sgdXNlcl93YWtlcmVmcyB0aGF0IGludGVyZmVyZSB3aXRoIHRoZSBuZXcKaW50ZWxf
Z3RfcG1fd2FpdF9mb3JfaWRsZQoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNTAxMApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMg
ICB8ICAxOSArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIHwg
ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgfCAgMzAgKysr
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jICAgICAgICAgIHwgMTIwICsrKysr
KysrKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5oICAgICAg
ICAgIHwgICA0ICstCiA1IGZpbGVzIGNoYW5nZWQsIDk2IGluc2VydGlvbnMoKyksIDc4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggMTdlMzYx
ODI0MWM1Li40Yjg2NmRiNDZkNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
bS5jCkBAIC0xNDEsNiArMTQxLDIxIEBAIGJvb2wgaTkxNV9nZW1fbG9hZF9wb3dlcl9jb250ZXh0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiBzd2l0Y2hfdG9fa2VybmVs
X2NvbnRleHRfc3luYygmaTkxNS0+Z3QpOwogfQogCitzdGF0aWMgdm9pZCB1c2VyX2ZvcmNld2Fr
ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIHN1c3BlbmQpCit7CisJaW50IGNvdW50ID0gYXRv
bWljX3JlYWQoJmd0LT51c2VyX3dha2VyZWYpOworCisJaWYgKGxpa2VseSghY291bnQpKQorCQly
ZXR1cm47CisKKwlpbnRlbF9ndF9wbV9nZXQoZ3QpOworCWlmIChzdXNwZW5kKQorCQlhdG9taWNf
c3ViKGNvdW50LCAmZ3QtPndha2VyZWYuY291bnQpOworCWVsc2UKKwkJYXRvbWljX2FkZChjb3Vu
dCwgJmd0LT53YWtlcmVmLmNvdW50KTsKKwlpbnRlbF9ndF9wbV9wdXQoZ3QpOworfQorCiB2b2lk
IGk5MTVfZ2VtX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJR0VN
X1RSQUNFKCJcbiIpOwpAQCAtMTQ4LDYgKzE2Myw4IEBAIHZvaWQgaTkxNV9nZW1fc3VzcGVuZChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpbnRlbF93YWtlcmVmX2F1dG8oJmk5MTUt
PmdndHQudXNlcmZhdWx0X3dha2VyZWYsIDApOwogCWZsdXNoX3dvcmtxdWV1ZShpOTE1LT53cSk7
CiAKKwl1c2VyX2ZvcmNld2FrZSgmaTkxNS0+Z3QsIHRydWUpOworCiAJbXV0ZXhfbG9jaygmaTkx
NS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKIAkvKgpAQCAtMjYyLDYgKzI3OSw4IEBAIHZvaWQgaTkx
NV9nZW1fcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWlmICghaTkxNV9n
ZW1fbG9hZF9wb3dlcl9jb250ZXh0KGk5MTUpKQogCQlnb3RvIGVycl93ZWRnZWQ7CiAKKwl1c2Vy
X2ZvcmNld2FrZSgmaTkxNS0+Z3QsIGZhbHNlKTsKKwogb3V0X3VubG9jazoKIAlpbnRlbF91bmNv
cmVfZm9yY2V3YWtlX3B1dCgmaTkxNS0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAltdXRleF91
bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmgKaW5kZXggNWZkMTFlMzYxZDAzLi45ZjM2ZWFjOWUyM2IgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApAQCAtNTEsNiArNTEsNyBAQCBzdHJ1
Y3QgaW50ZWxfZ3QgewogCXN0cnVjdCBsaXN0X2hlYWQgYWN0aXZlX3JpbmdzOwogCiAJc3RydWN0
IGludGVsX3dha2VyZWYgd2FrZXJlZjsKKwlhdG9taWNfdCB1c2VyX3dha2VyZWY7CiAKIAlzdHJ1
Y3QgbGlzdF9oZWFkIGNsb3NlZF92bWE7CiAJc3BpbmxvY2tfdCBjbG9zZWRfbG9jazsgLyogZ3Vh
cmRzIHRoZSBsaXN0IG9mIGNsb3NlZF92bWEgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMKaW5kZXggNjhhNmIwMDJjOWJhLi42NjU5YjYxNjM0NGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCkBAIC0zNjY2LDggKzM2NjYsMTIgQEAgaTkxNV9kcm9wX2NhY2hlc19zZXQo
dm9pZCAqZGF0YSwgdTY0IHZhbCkKIAogCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3Rf
bXV0ZXgpOwogCi0JCWlmIChyZXQgPT0gMCAmJiB2YWwgJiBEUk9QX0lETEUpCi0JCQlyZXQgPSBp
bnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlKCZpOTE1LT5ndCk7CisJCWlmIChyZXQgPT0gMCAmJiB2
YWwgJiBEUk9QX0lETEUpIHsKKwkJCWlmIChhdG9taWNfcmVhZCgmaTkxNS0+Z3QudXNlcl93YWtl
cmVmKSkKKwkJCQlyZXQgPSAtRUJVU1k7CisJCQllbHNlCisJCQkJcmV0ID0gaW50ZWxfZ3RfcG1f
d2FpdF9mb3JfaWRsZSgmaTkxNS0+Z3QpOworCQl9CiAJfQogCiAJaWYgKHZhbCAmIERST1BfUkVT
RVRfQUNUSVZFICYmIGludGVsX2d0X3Rlcm1pbmFsbHlfd2VkZ2VkKCZpOTE1LT5ndCkpCkBAIC0z
OTk1LDEzICszOTk5LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9zc2V1X3N0YXR1cyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIHN0YXRpYyBpbnQgaTkxNV9mb3JjZXdha2Vfb3Blbihz
dHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGlub2RlLT5pX3ByaXZhdGU7CisJc3RydWN0IGludGVsX2d0ICpn
dCA9ICZpOTE1LT5ndDsKIAotCWlmIChJTlRFTF9HRU4oaTkxNSkgPCA2KQotCQlyZXR1cm4gMDsK
LQotCWZpbGUtPnByaXZhdGVfZGF0YSA9Ci0JCSh2b2lkICopKHVpbnRwdHJfdClpbnRlbF9ydW50
aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7Ci0JaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV91
c2VyX2dldCgmaTkxNS0+dW5jb3JlKTsKKwlhdG9taWNfaW5jKCZndC0+dXNlcl93YWtlcmVmKTsK
KwlpbnRlbF9ndF9wbV9nZXQoZ3QpOworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNikKKwkJaW50
ZWxfdW5jb3JlX2ZvcmNld2FrZV91c2VyX2dldChndC0+dW5jb3JlKTsKIAogCXJldHVybiAwOwog
fQpAQCAtNDAwOSwxMyArNDAxMiwxMiBAQCBzdGF0aWMgaW50IGk5MTVfZm9yY2V3YWtlX29wZW4o
c3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCiBzdGF0aWMgaW50IGk5MTVf
Zm9yY2V3YWtlX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBpbm9kZS0+aV9wcml2YXRlOwor
CXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+Z3Q7CiAKLQlpZiAoSU5URUxfR0VOKGk5MTUp
IDwgNikKLQkJcmV0dXJuIDA7Ci0KLQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3VzZXJfcHV0KCZp
OTE1LT51bmNvcmUpOwotCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLAot
CQkJICAgICAoaW50ZWxfd2FrZXJlZl90KSh1aW50cHRyX3QpZmlsZS0+cHJpdmF0ZV9kYXRhKTsK
KwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDYpCisJCWludGVsX3VuY29yZV9mb3JjZXdha2VfdXNl
cl9wdXQoJmk5MTUtPnVuY29yZSk7CisJaW50ZWxfZ3RfcG1fcHV0KGd0KTsKKwlhdG9taWNfZGVj
KCZndC0+dXNlcl93YWtlcmVmKTsKIAogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11
LmMKaW5kZXggYzdlZTBhYjE4MGU4Li4yZmFlZmU5ZTYzMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcG11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
bXUuYwpAQCAtMTE2LDE5ICsxMTYsNTEgQEAgc3RhdGljIGJvb2wgcG11X25lZWRzX3RpbWVyKHN0
cnVjdCBpOTE1X3BtdSAqcG11LCBib29sIGdwdV9hY3RpdmUpCiAJcmV0dXJuIGVuYWJsZTsKIH0K
IAorc3RhdGljIHU2NCBfX2dldF9yYzYoc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OworCXU2NCB2YWw7CisKKwl2YWwgPSBp
bnRlbF9yYzZfcmVzaWRlbmN5X25zKGk5MTUsCisJCQkJICAgICBJU19WQUxMRVlWSUVXKGk5MTUp
ID8KKwkJCQkgICAgIFZMVl9HVF9SRU5ERVJfUkM2IDoKKwkJCQkgICAgIEdFTjZfR1RfR0ZYX1JD
Nik7CisKKwlpZiAoSEFTX1JDNnAoaTkxNSkpCisJCXZhbCArPSBpbnRlbF9yYzZfcmVzaWRlbmN5
X25zKGk5MTUsIEdFTjZfR1RfR0ZYX1JDNnApOworCisJaWYgKEhBU19SQzZwcChpOTE1KSkKKwkJ
dmFsICs9IGludGVsX3JjNl9yZXNpZGVuY3lfbnMoaTkxNSwgR0VONl9HVF9HRlhfUkM2cHApOwor
CisJcmV0dXJuIHZhbDsKK30KKwogdm9pZCBpOTE1X3BtdV9ndF9wYXJrZWQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RydWN0IGk5MTVfcG11ICpwbXUgPSAmaTkxNS0+cG11
OworCXU2NCB2YWw7CiAKIAlpZiAoIXBtdS0+YmFzZS5ldmVudF9pbml0KQogCQlyZXR1cm47CiAK
IAlzcGluX2xvY2tfaXJxKCZwbXUtPmxvY2spOworCisJdmFsID0gMDsKKwlpZiAocG11LT5zYW1w
bGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1cikKKwkJdmFsID0gX19nZXRfcmM2KCZpOTE1LT5ndCk7
CisKKwlpZiAodmFsID49IHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2X0VTVElNQVRFRF0u
Y3VyKSB7CisJCXBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2X0VTVElNQVRFRF0uY3VyID0g
MDsKKwkJcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1ciA9IHZhbDsKKwl9CisJcG11
LT5zbGVlcF9sYXN0ID0ga3RpbWVfZ2V0KCk7CisKIAkvKgogCSAqIFNpZ25hbCBzYW1wbGluZyB0
aW1lciB0byBzdG9wIGlmIG9ubHkgZW5naW5lIGV2ZW50cyBhcmUgZW5hYmxlZCBhbmQKIAkgKiBH
UFUgd2VudCBpZGxlLgogCSAqLwogCXBtdS0+dGltZXJfZW5hYmxlZCA9IHBtdV9uZWVkc190aW1l
cihwbXUsIGZhbHNlKTsKKwogCXNwaW5fdW5sb2NrX2lycSgmcG11LT5sb2NrKTsKIH0KIApAQCAt
MTQzLDYgKzE3NSwxMSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfcG11X21heWJlX3N0YXJ0X3RpbWVy
KHN0cnVjdCBpOTE1X3BtdSAqcG11KQogCX0KIH0KIAorc3RhdGljIGlubGluZSBzNjQga3RpbWVf
c2luY2UoY29uc3Qga3RpbWVfdCBrdCkKK3sKKwlyZXR1cm4ga3RpbWVfdG9fbnMoa3RpbWVfc3Vi
KGt0aW1lX2dldCgpLCBrdCkpOworfQorCiB2b2lkIGk5MTVfcG11X2d0X3VucGFya2VkKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0cnVjdCBpOTE1X3BtdSAqcG11ID0gJmk5
MTUtPnBtdTsKQEAgLTE1MSwxMCArMTg4LDIyIEBAIHZvaWQgaTkxNV9wbXVfZ3RfdW5wYXJrZWQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCXJldHVybjsKIAogCXNwaW5fbG9ja19p
cnEoJnBtdS0+bG9jayk7CisKIAkvKgogCSAqIFJlLWVuYWJsZSBzYW1wbGluZyB0aW1lciB3aGVu
IEdQVSBnb2VzIGFjdGl2ZS4KIAkgKi8KIAlfX2k5MTVfcG11X21heWJlX3N0YXJ0X3RpbWVyKHBt
dSk7CisKKwkvKiBFc3RpbWF0ZSBob3cgbG9uZyB3ZSBzbGVwdCBhbmQgYWNjdW11bGF0ZSB0aGF0
IGludG8gcmM2IGNvdW50ZXJzICovCisJaWYgKHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2
XS5jdXIpIHsKKwkJdTY0IHZhbDsKKworCQl2YWwgPSBrdGltZV9zaW5jZShwbXUtPnNsZWVwX2xh
c3QpOworCQl2YWwgKz0gcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1cjsKKworCQlw
bXUtPnNhbXBsZVtfX0k5MTVfU0FNUExFX1JDNl9FU1RJTUFURURdLmN1ciA9IHZhbDsKKwl9CisK
IAlzcGluX3VubG9ja19pcnEoJnBtdS0+bG9jayk7CiB9CiAKQEAgLTQyNiwzOSArNDc1LDE4IEBA
IHN0YXRpYyBpbnQgaTkxNV9wbXVfZXZlbnRfaW5pdChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQp
CiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyB1NjQgX19nZXRfcmM2KHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCi17Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKLQl1NjQg
dmFsOwotCi0JdmFsID0gaW50ZWxfcmM2X3Jlc2lkZW5jeV9ucyhpOTE1LAotCQkJCSAgICAgSVNf
VkFMTEVZVklFVyhpOTE1KSA/Ci0JCQkJICAgICBWTFZfR1RfUkVOREVSX1JDNiA6Ci0JCQkJICAg
ICBHRU42X0dUX0dGWF9SQzYpOwotCi0JaWYgKEhBU19SQzZwKGk5MTUpKQotCQl2YWwgKz0gaW50
ZWxfcmM2X3Jlc2lkZW5jeV9ucyhpOTE1LCBHRU42X0dUX0dGWF9SQzZwKTsKLQotCWlmIChIQVNf
UkM2cHAoaTkxNSkpCi0JCXZhbCArPSBpbnRlbF9yYzZfcmVzaWRlbmN5X25zKGk5MTUsIEdFTjZf
R1RfR0ZYX1JDNnBwKTsKLQotCXJldHVybiB2YWw7Ci19Ci0KIHN0YXRpYyB1NjQgZ2V0X3JjNihz
dHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewotI2lmIElTX0VOQUJMRUQoQ09ORklHX1BNKQogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7Ci0Jc3RydWN0IGludGVsX3J1bnRp
bWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwogCXN0cnVjdCBpOTE1X3BtdSAqcG11ID0g
Jmk5MTUtPnBtdTsKLQlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAl1bnNpZ25lZCBsb25nIGZs
YWdzOwogCXU2NCB2YWw7CiAKLQl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXRfaWZfaW5f
dXNlKHJwbSk7Ci0JaWYgKHdha2VyZWYpIHsKKwlzcGluX2xvY2tfaXJxc2F2ZSgmcG11LT5sb2Nr
LCBmbGFncyk7CisKKwlpZiAoaW50ZWxfZ3RfcG1fZ2V0X2lmX2F3YWtlKGd0KSkgewogCQl2YWwg
PSBfX2dldF9yYzYoZ3QpOwotCQlpbnRlbF9ydW50aW1lX3BtX3B1dChycG0sIHdha2VyZWYpOwor
CQlpbnRlbF9ndF9wbV9wdXQoZ3QpOwogCiAJCS8qCiAJCSAqIElmIHdlIGFyZSBjb21pbmcgYmFj
ayBmcm9tIGJlaW5nIHJ1bnRpbWUgc3VzcGVuZGVkIHdlIG11c3QKQEAgLTQ2NiwxOSArNDk0LDEz
IEBAIHN0YXRpYyB1NjQgZ2V0X3JjNihzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCQkgKiBwcmV2aW91
c2x5LgogCQkgKi8KIAotCQlzcGluX2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFncyk7Ci0K
IAkJaWYgKHZhbCA+PSBwbXUtPnNhbXBsZVtfX0k5MTVfU0FNUExFX1JDNl9FU1RJTUFURURdLmN1
cikgewogCQkJcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZfRVNUSU1BVEVEXS5jdXIgPSAw
OwogCQkJcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1ciA9IHZhbDsKIAkJfSBlbHNl
IHsKIAkJCXZhbCA9IHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2X0VTVElNQVRFRF0uY3Vy
OwogCQl9Ci0KLQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcG11LT5sb2NrLCBmbGFncyk7CiAJ
fSBlbHNlIHsKLQkJc3RydWN0IGRldmljZSAqa2RldiA9IHJwbS0+a2RldjsKLQogCQkvKgogCQkg
KiBXZSBhcmUgcnVudGltZSBzdXNwZW5kZWQuCiAJCSAqCkBAIC00ODYsNDIgKzUwOCwxNiBAQCBz
dGF0aWMgdTY0IGdldF9yYzYoc3RydWN0IGludGVsX2d0ICpndCkKIAkJICogb24gdG9wIG9mIHRo
ZSBsYXN0IGtub3duIHJlYWwgdmFsdWUsIGFzIHRoZSBhcHByb3hpbWF0ZWQgUkM2CiAJCSAqIGNv
dW50ZXIgdmFsdWUuCiAJCSAqLwotCQlzcGluX2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFn
cyk7CiAKLQkJLyoKLQkJICogQWZ0ZXIgdGhlIGFib3ZlIGJyYW5jaCBpbnRlbF9ydW50aW1lX3Bt
X2dldF9pZl9pbl91c2UgZmFpbGVkCi0JCSAqIHRvIGdldCB0aGUgcnVudGltZSBQTSByZWZlcmVu
Y2Ugd2UgY2Fubm90IGFzc3VtZSB3ZSBhcmUgaW4KLQkJICogcnVudGltZSBzdXNwZW5kIHNpbmNl
IHdlIGNhbiBlaXRoZXI6IGEpIHJhY2Ugd2l0aCBjb21pbmcgb3V0Ci0JCSAqIG9mIGl0IGJlZm9y
ZSB3ZSB0b29rIHRoZSBwb3dlci5sb2NrLCBvciBiKSB0aGVyZSBhcmUgb3RoZXIKLQkJICogc3Rh
dGVzIHRoYW4gc3VzcGVuZGVkIHdoaWNoIGNhbiBicmluZyB1cyBoZXJlLgotCQkgKgotCQkgKiBX
ZSBuZWVkIHRvIGRvdWJsZS1jaGVjayB0aGF0IHdlIGFyZSBpbmRlZWQgY3VycmVudGx5IHJ1bnRp
bWUKLQkJICogc3VzcGVuZGVkIGFuZCBpZiBub3Qgd2UgY2Fubm90IGRvIGJldHRlciB0aGFuIHJl
cG9ydCB0aGUgbGFzdAotCQkgKiBrbm93biBSQzYgdmFsdWUuCi0JCSAqLwotCQlpZiAocG1fcnVu
dGltZV9zdGF0dXNfc3VzcGVuZGVkKGtkZXYpKSB7Ci0JCQl2YWwgPSBwbV9ydW50aW1lX3N1c3Bl
bmRlZF90aW1lKGtkZXYpOworCQl2YWwgPSBrdGltZV9zaW5jZShwbXUtPnNsZWVwX2xhc3QpOwor
CQl2YWwgKz0gcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1cjsKIAotCQkJaWYgKCFw
bXUtPnNhbXBsZVtfX0k5MTVfU0FNUExFX1JDNl9FU1RJTUFURURdLmN1cikKLQkJCQlwbXUtPnN1
c3BlbmRlZF90aW1lX2xhc3QgPSB2YWw7Ci0KLQkJCXZhbCAtPSBwbXUtPnN1c3BlbmRlZF90aW1l
X2xhc3Q7Ci0JCQl2YWwgKz0gcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1cjsKLQot
CQkJcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZfRVNUSU1BVEVEXS5jdXIgPSB2YWw7Ci0J
CX0gZWxzZSBpZiAocG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZfRVNUSU1BVEVEXS5jdXIp
IHsKLQkJCXZhbCA9IHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2X0VTVElNQVRFRF0uY3Vy
OwotCQl9IGVsc2UgewotCQkJdmFsID0gcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1
cjsKLQkJfQotCi0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBtdS0+bG9jaywgZmxhZ3MpOwor
CQlwbXUtPnNhbXBsZVtfX0k5MTVfU0FNUExFX1JDNl9FU1RJTUFURURdLmN1ciA9IHZhbDsKIAl9
CiAKKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwbXUtPmxvY2ssIGZsYWdzKTsKKwogCXJldHVy
biB2YWw7Ci0jZWxzZQotCXJldHVybiBfX2dldF9yYzYoZ3QpOwotI2VuZGlmCiB9CiAKIHN0YXRp
YyB1NjQgX19pOTE1X3BtdV9ldmVudF9yZWFkKHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BtdS5oCmluZGV4IDRmYzRmMjQ3ODMwMS4uMDY3ZGJiZjNiZGZmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcG11LmgKQEAgLTk3LDkgKzk3LDkgQEAgc3RydWN0IGk5MTVfcG11IHsK
IAkgKi8KIAlzdHJ1Y3QgaTkxNV9wbXVfc2FtcGxlIHNhbXBsZVtfX0k5MTVfTlVNX1BNVV9TQU1Q
TEVSU107CiAJLyoqCi0JICogQHN1c3BlbmRlZF90aW1lX2xhc3Q6IENhY2hlZCBzdXNwZW5kIHRp
bWUgZnJvbSBQTSBjb3JlLgorCSAqIEBzbGVlcF9sYXN0OiBMYXN0IHRpbWUgR1QgcGFya2VkIGZv
ciBSQzYgZXN0aW1hdGlvbi4KIAkgKi8KLQl1NjQgc3VzcGVuZGVkX3RpbWVfbGFzdDsKKwlrdGlt
ZV90IHNsZWVwX2xhc3Q7CiAJLyoqCiAJICogQGk5MTVfYXR0cjogTWVtb3J5IGJsb2NrIGhvbGRp
bmcgZGV2aWNlIGF0dHJpYnV0ZXMuCiAJICovCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
