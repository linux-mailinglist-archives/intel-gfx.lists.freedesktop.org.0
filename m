Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C1AF6AFF
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 19:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D121C6E7D3;
	Sun, 10 Nov 2019 18:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1C96E06B
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 18:58:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19151901-1500050 
 for multiple; Sun, 10 Nov 2019 18:58:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Nov 2019 18:58:02 +0000
Message-Id: <20191110185806.17413-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191110185806.17413-1-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/25] drm/i915: Push the use-semaphore marker
 onto the intel_context
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

SW5zdGVhZCBvZiBydW1tYWdpbmcgdGhyb3VnaCB0aGUgaW50ZWxfY29udGV4dCB0byBwZWVrIGF0
IHRoZSBHRU0KY29udGV4dCBpbiB0aGUgbWlkZGxlIG9mIHJlcXVlc3Qgc3VibWlzc2lvbiB0byBk
ZWNpZGUgd2hldGhlciB0byB1c2UKc2VtYXBob3Jlcywgc3RvcmUgdGhhdCBpbmZvcm1hdGlvbiBv
biB0aGUgaW50ZWxfY29udGV4dCBpdHNlbGYuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jICAgfCA1MiArKysrKysrKysrKysrLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgICAgICAgfCAgMyArKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oICAgICAgIHwgMTUgKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3R5cGVzLmggfCAgNyArLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgICAgICB8ICA4ICsrLQogNSBmaWxlcyBjaGFu
Z2VkLCA2MCBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCA5Zjc1NmRkZWE3OTAuLmU2OTFiOWVm
Y2IyYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBA
IC0xODQzLDYgKzE4NDMsNDAgQEAgc2V0X3BlcnNpc3RlbmNlKHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHgsCiAJcmV0dXJuIF9fY29udGV4dF9zZXRfcGVyc2lzdGVuY2UoY3R4LCBhcmdzLT52
YWx1ZSk7CiB9CiAKK3N0YXRpYyB2b2lkIF9fYXBwbHlfcHJpb3JpdHkoc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlLCB2b2lkICphcmcpCit7CisJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9
IGFyZzsKKworCWlmIChpbnRlbF9jb250ZXh0X3VzZV9zZW1hcGhvcmVzKGNlKSAmJgorCSAgICBj
dHgtPnNjaGVkLnByaW9yaXR5IDwgSTkxNV9QUklPUklUWV9OT1JNQUwpCisJCWludGVsX2NvbnRl
eHRfY2xlYXJfdXNlX3NlbWFwaG9yZXMoY2UpOworfQorCitzdGF0aWMgaW50IHNldF9wcmlvcml0
eShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAorCQkJY29uc3Qgc3RydWN0IGRybV9pOTE1
X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQoreworCXM2NCBwcmlvcml0eSA9IGFyZ3MtPnZhbHVl
OworCisJaWYgKGFyZ3MtPnNpemUpCisJCXJldHVybiAtRUlOVkFMOworCisJaWYgKCEoY3R4LT5p
OTE1LT5jYXBzLnNjaGVkdWxlciAmIEk5MTVfU0NIRURVTEVSX0NBUF9QUklPUklUWSkpCisJCXJl
dHVybiAtRU5PREVWOworCisJaWYgKHByaW9yaXR5ID4gSTkxNV9DT05URVhUX01BWF9VU0VSX1BS
SU9SSVRZIHx8CisJICAgIHByaW9yaXR5IDwgSTkxNV9DT05URVhUX01JTl9VU0VSX1BSSU9SSVRZ
KQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChwcmlvcml0eSA+IEk5MTVfQ09OVEVYVF9ERUZB
VUxUX1BSSU9SSVRZICYmCisJICAgICFjYXBhYmxlKENBUF9TWVNfTklDRSkpCisJCXJldHVybiAt
RVBFUk07CisKKwljdHgtPnNjaGVkLnByaW9yaXR5ID0gSTkxNV9VU0VSX1BSSU9SSVRZKHByaW9y
aXR5KTsKKwljb250ZXh0X2FwcGx5X2FsbChjdHgsIF9fYXBwbHlfcHJpb3JpdHksIGN0eCk7CisK
KwlyZXR1cm4gMDsKK30KKwogc3RhdGljIGludCBjdHhfc2V0cGFyYW0oc3RydWN0IGRybV9pOTE1
X2ZpbGVfcHJpdmF0ZSAqZnByaXYsCiAJCQlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAog
CQkJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQpAQCAtMTg4OSwyMyAr
MTkyMyw3IEBAIHN0YXRpYyBpbnQgY3R4X3NldHBhcmFtKHN0cnVjdCBkcm1faTkxNV9maWxlX3By
aXZhdGUgKmZwcml2LAogCQlicmVhazsKIAogCWNhc2UgSTkxNV9DT05URVhUX1BBUkFNX1BSSU9S
SVRZOgotCQl7Ci0JCQlzNjQgcHJpb3JpdHkgPSBhcmdzLT52YWx1ZTsKLQotCQkJaWYgKGFyZ3Mt
PnNpemUpCi0JCQkJcmV0ID0gLUVJTlZBTDsKLQkJCWVsc2UgaWYgKCEoY3R4LT5pOTE1LT5jYXBz
LnNjaGVkdWxlciAmIEk5MTVfU0NIRURVTEVSX0NBUF9QUklPUklUWSkpCi0JCQkJcmV0ID0gLUVO
T0RFVjsKLQkJCWVsc2UgaWYgKHByaW9yaXR5ID4gSTkxNV9DT05URVhUX01BWF9VU0VSX1BSSU9S
SVRZIHx8Ci0JCQkJIHByaW9yaXR5IDwgSTkxNV9DT05URVhUX01JTl9VU0VSX1BSSU9SSVRZKQot
CQkJCXJldCA9IC1FSU5WQUw7Ci0JCQllbHNlIGlmIChwcmlvcml0eSA+IEk5MTVfQ09OVEVYVF9E
RUZBVUxUX1BSSU9SSVRZICYmCi0JCQkJICFjYXBhYmxlKENBUF9TWVNfTklDRSkpCi0JCQkJcmV0
ID0gLUVQRVJNOwotCQkJZWxzZQotCQkJCWN0eC0+c2NoZWQucHJpb3JpdHkgPQotCQkJCQlJOTE1
X1VTRVJfUFJJT1JJVFkocHJpb3JpdHkpOwotCQl9CisJCXJldCA9IHNldF9wcmlvcml0eShjdHgs
IGFyZ3MpOwogCQlicmVhazsKIAogCWNhc2UgSTkxNV9DT05URVhUX1BBUkFNX1NTRVU6CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKaW5kZXggNjI1Zjc1Zjc4MjVkLi43MDc1
ZDAzZjUwOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKQEAgLTIz
OCw2ICsyMzgsOSBAQCBpbnRlbF9jb250ZXh0X2luaXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LAogCXJjdV9yZWFkX3VubG9jaygpOwogCWlmIChjdHgtPnRpbWVsaW5lKQogCQljZS0+dGltZWxp
bmUgPSBpbnRlbF90aW1lbGluZV9nZXQoY3R4LT50aW1lbGluZSk7CisJaWYgKGN0eC0+c2NoZWQu
cHJpb3JpdHkgPj0gSTkxNV9QUklPUklUWV9OT1JNQUwgJiYKKwkgICAgaW50ZWxfZW5naW5lX2hh
c19zZW1hcGhvcmVzKGVuZ2luZSkpCisJCV9fc2V0X2JpdChDT05URVhUX1VTRV9TRU1BUEhPUkVT
LCAmY2UtPmZsYWdzKTsKIAogCWNlLT5lbmdpbmUgPSBlbmdpbmU7CiAJY2UtPm9wcyA9IGVuZ2lu
ZS0+Y29wczsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaAppbmRleCAxZTYw
NzM0M2QyNTYuLmQ3YjY2N2EyNmUwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Nv
bnRleHQuaApAQCAtMTU1LDYgKzE1NSwyMSBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9y
aW5nICpfX2ludGVsX2NvbnRleHRfcmluZ19zaXplKHU2NCBzeikKIAlyZXR1cm4gdTY0X3RvX3B0
cihzdHJ1Y3QgaW50ZWxfcmluZywgc3opOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxf
Y29udGV4dF91c2Vfc2VtYXBob3Jlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7
CisJcmV0dXJuIHRlc3RfYml0KENPTlRFWFRfVVNFX1NFTUFQSE9SRVMsICZjZS0+ZmxhZ3MpOwor
fQorCitzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfY29udGV4dF9zZXRfdXNlX3NlbWFwaG9yZXMo
c3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXNldF9iaXQoQ09OVEVYVF9VU0VfU0VNQVBI
T1JFUywgJmNlLT5mbGFncyk7Cit9CisKK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250ZXh0
X2NsZWFyX3VzZV9zZW1hcGhvcmVzKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwljbGVh
cl9iaXQoQ09OVEVYVF9VU0VfU0VNQVBIT1JFUywgJmNlLT5mbGFncyk7Cit9CisKIHN0YXRpYyBp
bmxpbmUgYm9vbCBpbnRlbF9jb250ZXh0X2lzX2Jhbm5lZChjb25zdCBzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCiB7CiAJcmV0dXJuIHRlc3RfYml0KENPTlRFWFRfQkFOTkVELCAmY2UtPmZsYWdz
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaAppbmRl
eCAwMjUxZWRjOGY1NjguLjI2NGMxZWZkZTc3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaApAQCAtNTUsOSArNTUsMTAgQEAgc3RydWN0IGludGVs
X2NvbnRleHQgewogCiAJdW5zaWduZWQgbG9uZyBmbGFnczsKICNkZWZpbmUgQ09OVEVYVF9BTExP
Q19CSVQJCTAKLSNkZWZpbmUgQ09OVEVYVF9CQU5ORUQJCQkxCi0jZGVmaW5lIENPTlRFWFRfRk9S
Q0VfU0lOR0xFX1NVQk1JU1NJT04JMgotI2RlZmluZSBDT05URVhUX05PUFJFRU1QVAkJMworI2Rl
ZmluZSBDT05URVhUX1VTRV9TRU1BUEhPUkVTCQkxCisjZGVmaW5lIENPTlRFWFRfQkFOTkVECQkJ
MgorI2RlZmluZSBDT05URVhUX0ZPUkNFX1NJTkdMRV9TVUJNSVNTSU9OCTMKKyNkZWZpbmUgQ09O
VEVYVF9OT1BSRUVNUFQJCTQKIAogCXUzMiAqbHJjX3JlZ19zdGF0ZTsKIAl1NjQgbHJjX2Rlc2M7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IDhhMWYxMDI2ZjAzNC4uNjc4YjMy
MDg5NTA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtOTA1LDE4ICs5MDUs
MTYgQEAgaTkxNV9yZXF1ZXN0X2F3YWl0X3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8s
IHN0cnVjdCBpOTE1X3JlcXVlc3QgKmZyb20pCiAJCQlyZXR1cm4gcmV0OwogCX0KIAotCWlmICh0
by0+ZW5naW5lID09IGZyb20tPmVuZ2luZSkgeworCWlmICh0by0+ZW5naW5lID09IGZyb20tPmVu
Z2luZSkKIAkJcmV0ID0gaTkxNV9zd19mZW5jZV9hd2FpdF9zd19mZW5jZV9nZnAoJnRvLT5zdWJt
aXQsCiAJCQkJCQkgICAgICAgJmZyb20tPnN1Ym1pdCwKIAkJCQkJCSAgICAgICBJOTE1X0ZFTkNF
X0dGUCk7Ci0JfSBlbHNlIGlmIChpbnRlbF9lbmdpbmVfaGFzX3NlbWFwaG9yZXModG8tPmVuZ2lu
ZSkgJiYKLQkJICAgdG8tPmNvbnRleHQtPmdlbV9jb250ZXh0LT5zY2hlZC5wcmlvcml0eSA+PSBJ
OTE1X1BSSU9SSVRZX05PUk1BTCkgeworCWVsc2UgaWYgKGludGVsX2NvbnRleHRfdXNlX3NlbWFw
aG9yZXModG8tPmNvbnRleHQpKQogCQlyZXQgPSBlbWl0X3NlbWFwaG9yZV93YWl0KHRvLCBmcm9t
LCBJOTE1X0ZFTkNFX0dGUCk7Ci0JfSBlbHNlIHsKKwllbHNlCiAJCXJldCA9IGk5MTVfc3dfZmVu
Y2VfYXdhaXRfZG1hX2ZlbmNlKCZ0by0+c3VibWl0LAogCQkJCQkJICAgICZmcm9tLT5mZW5jZSwg
MCwKIAkJCQkJCSAgICBJOTE1X0ZFTkNFX0dGUCk7Ci0JfQogCWlmIChyZXQgPCAwKQogCQlyZXR1
cm4gcmV0OwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
