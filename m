Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108A270C8D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 00:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFFE89D64;
	Mon, 22 Jul 2019 22:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF0D89D64
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 22:28:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17517008-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 23:28:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 23:28:47 +0100
Message-Id: <20190722222847.24178-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Rely on spinlock protection for GPU
 error capture
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

VHJ1c3QgdGhhdCB3ZSBub3cgaGF2ZSBhZGVxdWF0ZSBwcm90ZWN0aW9uIG92ZXIgdGhlIGxvdyBs
ZXZlbCBzdHJ1Y3R1cmVzCnZpYSB0aGUgZW5naW5lLT5hY3RpdmUubG9jayB0byBhbGxvdyBvdXJz
ZWx2ZXMgdG8gY2FwdHVyZSB0aGUgR1BVIGVycm9yCnN0YXRlIHdpdGhvdXQgdGhlIGhlYXZ5IGhh
bW1lciBvZiBzdG9wX21hY2hpbmUoKS4gU2FkbHkgdGhpcyBkb2VzIG1lYW4KdGhhdCB3ZSBoYXZl
IHRvIGZvcmdvIHNvbWUgb2YgdGhlIGxlc3NlciB1c2VkIGluZm9ybWF0aW9uIChub3QgZGVyaXZl
ZApmcm9tIHRoZSBhY3RpdmUgc3RhdGUpIHRoYXQgaXMgbm90IGNvbnRyb2xsZWQgYnkgdGhlIGFj
dGl2ZSBsb2Nrcy4gVGhpcwppbmNsdWRlcyB0aGUgbGlzdCBvZiBidWZmZXJzIGluIHRoZSBwcEdU
VCBhbmQgcGlubmVkIGdsb2JhbGx5IGluIHRoZQpHR1RULiBPcmlnaW5hbGx5IHRoaXMgd2FzIHVz
ZWQgdG8gbWFudWFsbHkgdmVyaWZ5IHJlbG9jYXRpb25zLCBidXQKaGFzbid0IGJlZW4gcmVxdWly
ZWQgZm9yIHNvbWV0aW1lIGFuZCBtb2Rlcm4gbWVzYSBub3cgaGFzIHRoZSBoYWJpdCBvZgplbnN1
cmluZyB0aGF0IGFsbCBpbnRlcmVzdGluZyBidWZmZXJzIHdpdGhpbiBhIGJhdGNoIGFyZSBjYXB0
dXJlZCBpbiB0aGVpcgplbnRpcmV0eSAodGhhdCBhcmUgdGhlIGF1eGlsaWFyeSBzdGF0ZSBidWZm
ZXJzLCBidXQgbm90IHRoZSB0ZXh0dXJlcykuCgpBIHVzZWZ1bCBzaWRlLWVmZmVjdCBpcyB0aGF0
IHRoaXMgYWxsb3dzIHVzIHRvIHJlc3RvcmUgZXJyb3IgY2FwdHVyaW5nCmZvciBCcmFzd2VsbCBh
bmQgQnJveHRvbi4KCnYyOiBVc2UgcGFnZXZlYyBmb3IgYSB0eXBpY2FsIGFyYml0cmFyeSBudW1i
ZXIgb2YgcHJlYWxsb2NhdGVkIHBhZ2VzCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMgICB8ICAgNSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwg
NDk3ICsrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dwdV9lcnJvci5oIHwgIDE3IC0KIDMgZmlsZXMgY2hhbmdlZCwgMjAxIGluc2VydGlvbnMoKyks
IDMxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDVh
N2U2NmIzMzJhNi4uNGRkMWZhOTU2MTQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YwpAQCAtMjk3MCwxMSArMjk3MCw2IEBAIHN0YXRpYyBpbnQgZ2VuOF9nbWNoX3Byb2JlKHN0cnVj
dCBpOTE1X2dndHQgKmdndHQpCiAJCWdndHQtPnZtLmluc2VydF9wYWdlICAgID0gYnh0X3Z0ZF9n
Z3R0X2luc2VydF9wYWdlX19CS0w7CiAJCWlmIChnZ3R0LT52bS5jbGVhcl9yYW5nZSAhPSBub3Bf
Y2xlYXJfcmFuZ2UpCiAJCQlnZ3R0LT52bS5jbGVhcl9yYW5nZSA9IGJ4dF92dGRfZ2d0dF9jbGVh
cl9yYW5nZV9fQktMOwotCi0JCS8qIFByZXZlbnQgcmVjdXJzaXZlbHkgY2FsbGluZyBzdG9wX21h
Y2hpbmUoKSBhbmQgZGVhZGxvY2tzLiAqLwotCQlkZXZfaW5mbyhkZXZfcHJpdi0+ZHJtLmRldiwK
LQkJCSAiRGlzYWJsaW5nIGVycm9yIGNhcHR1cmUgZm9yIFZULWQgd29ya2Fyb3VuZFxuIik7Ci0J
CWk5MTVfZGlzYWJsZV9lcnJvcl9zdGF0ZShkZXZfcHJpdiwgLUVOT0RFVik7CiAJfQogCiAJZ2d0
dC0+aW52YWxpZGF0ZSA9IGdlbjZfZ2d0dF9pbnZhbGlkYXRlOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ3B1X2Vycm9yLmMKaW5kZXggYzViODliZjRkNjE2Li4wNTlkZTg4ZWMwYzEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtMjksOCArMjksOCBAQAogCiAjaW5jbHVk
ZSA8bGludXgvYXNjaWk4NS5oPgogI2luY2x1ZGUgPGxpbnV4L25taS5oPgorI2luY2x1ZGUgPGxp
bnV4L3BhZ2V2ZWMuaD4KICNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPgotI2luY2x1ZGUg
PGxpbnV4L3N0b3BfbWFjaGluZS5oPgogI2luY2x1ZGUgPGxpbnV4L3V0c25hbWUuaD4KICNpbmNs
dWRlIDxsaW51eC96bGliLmg+CiAKQEAgLTQ2LDYgKzQ2LDkgQEAKICNpbmNsdWRlICJpOTE1X3Nj
YXR0ZXJsaXN0LmgiCiAjaW5jbHVkZSAiaW50ZWxfY3NyLmgiCiAKKyNkZWZpbmUgQUxMT1dfRkFJ
TCAoR0ZQX0tFUk5FTCB8IF9fR0ZQX1JFVFJZX01BWUZBSUwgfCBfX0dGUF9OT1dBUk4pCisjZGVm
aW5lIEFUT01JQ19NQVlGQUlMIChHRlBfQVRPTUlDIHwgX19HRlBfTk9XQVJOKQorCiBzdGF0aWMg
aW5saW5lIGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKgogZW5naW5lX2xvb2t1cChjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IGlkKQogewpAQCAt
NjcsMjYgKzcwLDYgQEAgZW5naW5lX25hbWUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIHVuc2lnbmVkIGludCBpZCkKIAlyZXR1cm4gX19lbmdpbmVfbmFtZShlbmdpbmVfbG9v
a3VwKGk5MTUsIGlkKSk7CiB9CiAKLXN0YXRpYyBjb25zdCBjaGFyICp0aWxpbmdfZmxhZyhpbnQg
dGlsaW5nKQotewotCXN3aXRjaCAodGlsaW5nKSB7Ci0JZGVmYXVsdDoKLQljYXNlIEk5MTVfVElM
SU5HX05PTkU6IHJldHVybiAiIjsKLQljYXNlIEk5MTVfVElMSU5HX1g6IHJldHVybiAiIFgiOwot
CWNhc2UgSTkxNV9USUxJTkdfWTogcmV0dXJuICIgWSI7Ci0JfQotfQotCi1zdGF0aWMgY29uc3Qg
Y2hhciAqZGlydHlfZmxhZyhpbnQgZGlydHkpCi17Ci0JcmV0dXJuIGRpcnR5ID8gIiBkaXJ0eSIg
OiAiIjsKLX0KLQotc3RhdGljIGNvbnN0IGNoYXIgKnB1cmdlYWJsZV9mbGFnKGludCBwdXJnZWFi
bGUpCi17Ci0JcmV0dXJuIHB1cmdlYWJsZSA/ICIgcHVyZ2VhYmxlIiA6ICIiOwotfQotCiBzdGF0
aWMgdm9pZCBfX3NnX3NldF9idWYoc3RydWN0IHNjYXR0ZXJsaXN0ICpzZywKIAkJCSB2b2lkICph
ZGRyLCB1bnNpZ25lZCBpbnQgbGVuLCBsb2ZmX3QgaXQpCiB7CkBAIC0xMTQsNyArOTcsNyBAQCBz
dGF0aWMgYm9vbCBfX2k5MTVfZXJyb3JfZ3JvdyhzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVf
YnVmICplLCBzaXplX3QgbGVuKQogCWlmIChlLT5jdXIgPT0gZS0+ZW5kKSB7CiAJCXN0cnVjdCBz
Y2F0dGVybGlzdCAqc2dsOwogCi0JCXNnbCA9ICh0eXBlb2Yoc2dsKSlfX2dldF9mcmVlX3BhZ2Uo
R0ZQX0tFUk5FTCk7CisJCXNnbCA9ICh0eXBlb2Yoc2dsKSlfX2dldF9mcmVlX3BhZ2UoQUxMT1df
RkFJTCk7CiAJCWlmICghc2dsKSB7CiAJCQllLT5lcnIgPSAtRU5PTUVNOwogCQkJcmV0dXJuIGZh
bHNlOwpAQCAtMTM0LDcgKzExNyw3IEBAIHN0YXRpYyBib29sIF9faTkxNV9lcnJvcl9ncm93KHN0
cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUsIHNpemVfdCBsZW4pCiAJfQogCiAJZS0+
c2l6ZSA9IEFMSUdOKGxlbiArIDEsIFNaXzY0Syk7Ci0JZS0+YnVmID0ga21hbGxvYyhlLT5zaXpl
LCBHRlBfS0VSTkVMIHwgX19HRlBfTk9XQVJOIHwgX19HRlBfTk9SRVRSWSk7CisJZS0+YnVmID0g
a21hbGxvYyhlLT5zaXplLCBBTExPV19GQUlMKTsKIAlpZiAoIWUtPmJ1ZikgewogCQllLT5zaXpl
ID0gUEFHRV9BTElHTihsZW4gKyAxKTsKIAkJZS0+YnVmID0ga21hbGxvYyhlLT5zaXplLCBHRlBf
S0VSTkVMKTsKQEAgLTIxMSw0NyArMTk0LDEyMyBAQCBpOTE1X2Vycm9yX3ByaW50ZXIoc3RydWN0
IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqZSkKIAlyZXR1cm4gcDsKIH0KIAorLyogc2luZ2xl
IHRocmVhZGVkIHBhZ2UgYWxsb2NhdG9yIHdpdGggYSByZXNlcnZlZCBzdGFzaCBmb3IgZW1lcmdl
bmNpZXMgKi8KK3N0YXRpYyB2b2lkICpfX2FsbG9jX3BhZ2UoZ2ZwX3QgZ2ZwKQoreworCXJldHVy
biAodm9pZCAqKV9fZ2V0X2ZyZWVfcGFnZShnZnApOworfQorCitzdGF0aWMgdm9pZCBwb29sX2Zp
bmkoc3RydWN0IHBhZ2V2ZWMgKnB2KQoreworCXBhZ2V2ZWNfcmVsZWFzZShwdik7Cit9CisKK3N0
YXRpYyBpbnQgcG9vbF9yZWZpbGwoc3RydWN0IHBhZ2V2ZWMgKnB2LCBnZnBfdCBnZnApCit7CisJ
d2hpbGUgKHBhZ2V2ZWNfc3BhY2UocHYpKSB7CisJCXN0cnVjdCBwYWdlICpwOworCisJCXAgPSBh
bGxvY19wYWdlKGdmcCk7CisJCWlmICghcCkKKwkJCXJldHVybiAtRU5PTUVNOworCisJCXBhZ2V2
ZWNfYWRkKHB2LCBwKTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBwb29sX2lu
aXQoc3RydWN0IHBhZ2V2ZWMgKnB2LCBnZnBfdCBnZnApCit7CisJaW50IGVycjsKKworCXBhZ2V2
ZWNfaW5pdChwdik7CisKKwllcnIgPSBwb29sX3JlZmlsbChwdiwgZ2ZwKTsKKwlpZiAoZXJyKQor
CQlwb29sX2ZpbmkocHYpOworCisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIHZvaWQgKnBvb2xf
YWxsb2Moc3RydWN0IHBhZ2V2ZWMgKnB2LCBnZnBfdCBnZnApCit7CisJdm9pZCAqcHRyOworCisJ
cHRyID0gX19hbGxvY19wYWdlKGdmcCk7CisJaWYgKHB0cikKKwkJcmV0dXJuIHB0cjsKKworCWlm
ICghcGFnZXZlY19jb3VudChwdikpCisJCXJldHVybiBOVUxMOworCisJcmV0dXJuIHBhZ2VfYWRk
cmVzcyhwdi0+cGFnZXNbLS1wdi0+bnJdKTsKK30KKworc3RhdGljIHZvaWQgcG9vbF9mcmVlKHN0
cnVjdCBwYWdldmVjICpwdiwgdm9pZCAqYWRkcikKK3sKKwlzdHJ1Y3QgcGFnZSAqcCA9IHZpcnRf
dG9fcGFnZShhZGRyKTsKKworCWlmIChwYWdldmVjX3NwYWNlKHB2KSkKKwkJcGFnZXZlY19hZGQo
cHYsIHApOworCWVsc2UKKwkJX19mcmVlX3BhZ2UocCk7Cit9CisKICNpZmRlZiBDT05GSUdfRFJN
X0k5MTVfQ09NUFJFU1NfRVJST1IKIAogc3RydWN0IGNvbXByZXNzIHsKKwlzdHJ1Y3QgcGFnZXZl
YyBwb29sOwogCXN0cnVjdCB6X3N0cmVhbV9zIHpzdHJlYW07CiAJdm9pZCAqdG1wOwogfTsKIAog
c3RhdGljIGJvb2wgY29tcHJlc3NfaW5pdChzdHJ1Y3QgY29tcHJlc3MgKmMpCiB7Ci0Jc3RydWN0
IHpfc3RyZWFtX3MgKnpzdHJlYW0gPSBtZW1zZXQoJmMtPnpzdHJlYW0sIDAsIHNpemVvZihjLT56
c3RyZWFtKSk7CisJc3RydWN0IHpfc3RyZWFtX3MgKnpzdHJlYW0gPSAmYy0+enN0cmVhbTsKIAot
CXpzdHJlYW0tPndvcmtzcGFjZSA9Ci0JCWttYWxsb2MoemxpYl9kZWZsYXRlX3dvcmtzcGFjZXNp
emUoTUFYX1dCSVRTLCBNQVhfTUVNX0xFVkVMKSwKLQkJCUdGUF9BVE9NSUMgfCBfX0dGUF9OT1dB
Uk4pOwotCWlmICghenN0cmVhbS0+d29ya3NwYWNlKQorCWlmIChwb29sX2luaXQoJmMtPnBvb2ws
IEFMTE9XX0ZBSUwpKQogCQlyZXR1cm4gZmFsc2U7CiAKLQlpZiAoemxpYl9kZWZsYXRlSW5pdCh6
c3RyZWFtLCBaX0RFRkFVTFRfQ09NUFJFU1NJT04pICE9IFpfT0spIHsKLQkJa2ZyZWUoenN0cmVh
bS0+d29ya3NwYWNlKTsKKwl6c3RyZWFtLT53b3Jrc3BhY2UgPQorCQlrbWFsbG9jKHpsaWJfZGVm
bGF0ZV93b3Jrc3BhY2VzaXplKE1BWF9XQklUUywgTUFYX01FTV9MRVZFTCksCisJCQlBTExPV19G
QUlMKTsKKwlpZiAoIXpzdHJlYW0tPndvcmtzcGFjZSkgeworCQlwb29sX2ZpbmkoJmMtPnBvb2wp
OwogCQlyZXR1cm4gZmFsc2U7CiAJfQogCiAJYy0+dG1wID0gTlVMTDsKIAlpZiAoaTkxNV9oYXNf
bWVtY3B5X2Zyb21fd2MoKSkKLQkJYy0+dG1wID0gKHZvaWQgKilfX2dldF9mcmVlX3BhZ2UoR0ZQ
X0FUT01JQyB8IF9fR0ZQX05PV0FSTik7CisJCWMtPnRtcCA9IHBvb2xfYWxsb2MoJmMtPnBvb2ws
IEFMTE9XX0ZBSUwpOwogCiAJcmV0dXJuIHRydWU7CiB9CiAKLXN0YXRpYyB2b2lkICpjb21wcmVz
c19uZXh0X3BhZ2Uoc3RydWN0IGRybV9pOTE1X2Vycm9yX29iamVjdCAqZHN0KQorc3RhdGljIGJv
b2wgY29tcHJlc3Nfc3RhcnQoc3RydWN0IGNvbXByZXNzICpjKQoreworCXN0cnVjdCB6X3N0cmVh
bV9zICp6c3RyZWFtID0gJmMtPnpzdHJlYW07CisJdm9pZCAqd29ya3NwYWNlID0genN0cmVhbS0+
d29ya3NwYWNlOworCisJbWVtc2V0KHpzdHJlYW0sIDAsIHNpemVvZigqenN0cmVhbSkpOworCXpz
dHJlYW0tPndvcmtzcGFjZSA9IHdvcmtzcGFjZTsKKworCXJldHVybiB6bGliX2RlZmxhdGVJbml0
KHpzdHJlYW0sIFpfREVGQVVMVF9DT01QUkVTU0lPTikgPT0gWl9PSzsKK30KKworc3RhdGljIHZv
aWQgKmNvbXByZXNzX25leHRfcGFnZShzdHJ1Y3QgY29tcHJlc3MgKmMsCisJCQkJc3RydWN0IGRy
bV9pOTE1X2Vycm9yX29iamVjdCAqZHN0KQogewotCXVuc2lnbmVkIGxvbmcgcGFnZTsKKwl2b2lk
ICpwYWdlOwogCiAJaWYgKGRzdC0+cGFnZV9jb3VudCA+PSBkc3QtPm51bV9wYWdlcykKIAkJcmV0
dXJuIEVSUl9QVFIoLUVOT1NQQyk7CiAKLQlwYWdlID0gX19nZXRfZnJlZV9wYWdlKEdGUF9BVE9N
SUMgfCBfX0dGUF9OT1dBUk4pOworCXBhZ2UgPSBwb29sX2FsbG9jKCZjLT5wb29sLCBBVE9NSUNf
TUFZRkFJTCk7CiAJaWYgKCFwYWdlKQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAotCXJl
dHVybiBkc3QtPnBhZ2VzW2RzdC0+cGFnZV9jb3VudCsrXSA9ICh2b2lkICopcGFnZTsKKwlyZXR1
cm4gZHN0LT5wYWdlc1tkc3QtPnBhZ2VfY291bnQrK10gPSBwYWdlOwogfQogCiBzdGF0aWMgaW50
IGNvbXByZXNzX3BhZ2Uoc3RydWN0IGNvbXByZXNzICpjLApAQCAtMjY3LDcgKzMyNiw3IEBAIHN0
YXRpYyBpbnQgY29tcHJlc3NfcGFnZShzdHJ1Y3QgY29tcHJlc3MgKmMsCiAKIAlkbyB7CiAJCWlm
ICh6c3RyZWFtLT5hdmFpbF9vdXQgPT0gMCkgewotCQkJenN0cmVhbS0+bmV4dF9vdXQgPSBjb21w
cmVzc19uZXh0X3BhZ2UoZHN0KTsKKwkJCXpzdHJlYW0tPm5leHRfb3V0ID0gY29tcHJlc3NfbmV4
dF9wYWdlKGMsIGRzdCk7CiAJCQlpZiAoSVNfRVJSKHpzdHJlYW0tPm5leHRfb3V0KSkKIAkJCQly
ZXR1cm4gUFRSX0VSUih6c3RyZWFtLT5uZXh0X291dCk7CiAKQEAgLTI5NSw3ICszNTQsNyBAQCBz
dGF0aWMgaW50IGNvbXByZXNzX2ZsdXNoKHN0cnVjdCBjb21wcmVzcyAqYywKIAlkbyB7CiAJCXN3
aXRjaCAoemxpYl9kZWZsYXRlKHpzdHJlYW0sIFpfRklOSVNIKSkgewogCQljYXNlIFpfT0s6IC8q
IG1vcmUgc3BhY2UgcmVxdWVzdGVkICovCi0JCQl6c3RyZWFtLT5uZXh0X291dCA9IGNvbXByZXNz
X25leHRfcGFnZShkc3QpOworCQkJenN0cmVhbS0+bmV4dF9vdXQgPSBjb21wcmVzc19uZXh0X3Bh
Z2UoYywgZHN0KTsKIAkJCWlmIChJU19FUlIoenN0cmVhbS0+bmV4dF9vdXQpKQogCQkJCXJldHVy
biBQVFJfRVJSKHpzdHJlYW0tPm5leHRfb3V0KTsKIApAQCAtMzE2LDE1ICszNzUsMTcgQEAgc3Rh
dGljIGludCBjb21wcmVzc19mbHVzaChzdHJ1Y3QgY29tcHJlc3MgKmMsCiAJcmV0dXJuIDA7CiB9
CiAKLXN0YXRpYyB2b2lkIGNvbXByZXNzX2Zpbmkoc3RydWN0IGNvbXByZXNzICpjLAotCQkJICBz
dHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfb2JqZWN0ICpkc3QpCitzdGF0aWMgdm9pZCBjb21wcmVzc19m
aW5pc2goc3RydWN0IGNvbXByZXNzICpjKQogewotCXN0cnVjdCB6X3N0cmVhbV9zICp6c3RyZWFt
ID0gJmMtPnpzdHJlYW07CisJemxpYl9kZWZsYXRlRW5kKCZjLT56c3RyZWFtKTsKK30KIAotCXps
aWJfZGVmbGF0ZUVuZCh6c3RyZWFtKTsKLQlrZnJlZSh6c3RyZWFtLT53b3Jrc3BhY2UpOworc3Rh
dGljIHZvaWQgY29tcHJlc3NfZmluaShzdHJ1Y3QgY29tcHJlc3MgKmMpCit7CisJa2ZyZWUoYy0+
enN0cmVhbS53b3Jrc3BhY2UpOwogCWlmIChjLT50bXApCi0JCWZyZWVfcGFnZSgodW5zaWduZWQg
bG9uZyljLT50bXApOworCQlwb29sX2ZyZWUoJmMtPnBvb2wsIGMtPnRtcCk7CisJcG9vbF9maW5p
KCZjLT5wb29sKTsKIH0KIAogc3RhdGljIHZvaWQgZXJyX2NvbXByZXNzaW9uX21hcmtlcihzdHJ1
Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICptKQpAQCAtMzM1LDkgKzM5NiwxNSBAQCBzdGF0
aWMgdm9pZCBlcnJfY29tcHJlc3Npb25fbWFya2VyKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0
ZV9idWYgKm0pCiAjZWxzZQogCiBzdHJ1Y3QgY29tcHJlc3MgeworCXN0cnVjdCBwYWdldmVjIHBv
b2w7CiB9OwogCiBzdGF0aWMgYm9vbCBjb21wcmVzc19pbml0KHN0cnVjdCBjb21wcmVzcyAqYykK
K3sKKwlyZXR1cm4gcG9vbF9pbml0KCZjLT5wb29sLCBBTExPV19GQUlMKSA9PSAwOworfQorCitz
dGF0aWMgYm9vbCBjb21wcmVzc19zdGFydChzdHJ1Y3QgY29tcHJlc3MgKmMpCiB7CiAJcmV0dXJu
IHRydWU7CiB9CkBAIC0zNDYsMTQgKzQxMywxMiBAQCBzdGF0aWMgaW50IGNvbXByZXNzX3BhZ2Uo
c3RydWN0IGNvbXByZXNzICpjLAogCQkJIHZvaWQgKnNyYywKIAkJCSBzdHJ1Y3QgZHJtX2k5MTVf
ZXJyb3Jfb2JqZWN0ICpkc3QpCiB7Ci0JdW5zaWduZWQgbG9uZyBwYWdlOwogCXZvaWQgKnB0cjsK
IAotCXBhZ2UgPSBfX2dldF9mcmVlX3BhZ2UoR0ZQX0FUT01JQyB8IF9fR0ZQX05PV0FSTik7Ci0J
aWYgKCFwYWdlKQorCXB0ciA9IHBvb2xfYWxsb2MoJmMtPnBvb2wsIEFUT01JQ19NQVlGQUlMKTsK
KwlpZiAoIXB0cikKIAkJcmV0dXJuIC1FTk9NRU07CiAKLQlwdHIgPSAodm9pZCAqKXBhZ2U7CiAJ
aWYgKCFpOTE1X21lbWNweV9mcm9tX3djKHB0ciwgc3JjLCBQQUdFX1NJWkUpKQogCQltZW1jcHko
cHRyLCBzcmMsIFBBR0VfU0laRSk7CiAJZHN0LT5wYWdlc1tkc3QtPnBhZ2VfY291bnQrK10gPSBw
dHI7CkBAIC0zNjcsOSArNDMyLDEzIEBAIHN0YXRpYyBpbnQgY29tcHJlc3NfZmx1c2goc3RydWN0
IGNvbXByZXNzICpjLAogCXJldHVybiAwOwogfQogCi1zdGF0aWMgdm9pZCBjb21wcmVzc19maW5p
KHN0cnVjdCBjb21wcmVzcyAqYywKLQkJCSAgc3RydWN0IGRybV9pOTE1X2Vycm9yX29iamVjdCAq
ZHN0KQorc3RhdGljIHZvaWQgY29tcHJlc3NfZmluaXNoKHN0cnVjdCBjb21wcmVzcyAqYykKK3sK
K30KKworc3RhdGljIHZvaWQgY29tcHJlc3NfZmluaShzdHJ1Y3QgY29tcHJlc3MgKmMpCiB7CisJ
cG9vbF9maW5pKCZjLT5wb29sKTsKIH0KIAogc3RhdGljIHZvaWQgZXJyX2NvbXByZXNzaW9uX21h
cmtlcihzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICptKQpAQCAtMzc5LDM2ICs0NDgs
NiBAQCBzdGF0aWMgdm9pZCBlcnJfY29tcHJlc3Npb25fbWFya2VyKHN0cnVjdCBkcm1faTkxNV9l
cnJvcl9zdGF0ZV9idWYgKm0pCiAKICNlbmRpZgogCi1zdGF0aWMgdm9pZCBwcmludF9lcnJvcl9i
dWZmZXJzKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKm0sCi0JCQkJY29uc3QgY2hh
ciAqbmFtZSwKLQkJCQlzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfYnVmZmVyICplcnIsCi0JCQkJaW50
IGNvdW50KQotewotCWVycl9wcmludGYobSwgIiVzIFslZF06XG4iLCBuYW1lLCBjb3VudCk7Ci0K
LQl3aGlsZSAoY291bnQtLSkgewotCQllcnJfcHJpbnRmKG0sICIgICAgJTA4eF8lMDh4ICU4dSAl
MDJ4ICUwMngiLAotCQkJICAgdXBwZXJfMzJfYml0cyhlcnItPmd0dF9vZmZzZXQpLAotCQkJICAg
bG93ZXJfMzJfYml0cyhlcnItPmd0dF9vZmZzZXQpLAotCQkJICAgZXJyLT5zaXplLAotCQkJICAg
ZXJyLT5yZWFkX2RvbWFpbnMsCi0JCQkgICBlcnItPndyaXRlX2RvbWFpbik7Ci0JCWVycl9wdXRz
KG0sIHRpbGluZ19mbGFnKGVyci0+dGlsaW5nKSk7Ci0JCWVycl9wdXRzKG0sIGRpcnR5X2ZsYWco
ZXJyLT5kaXJ0eSkpOwotCQllcnJfcHV0cyhtLCBwdXJnZWFibGVfZmxhZyhlcnItPnB1cmdlYWJs
ZSkpOwotCQllcnJfcHV0cyhtLCBlcnItPnVzZXJwdHIgPyAiIHVzZXJwdHIiIDogIiIpOwotCQll
cnJfcHV0cyhtLCBpOTE1X2NhY2hlX2xldmVsX3N0cihtLT5pOTE1LCBlcnItPmNhY2hlX2xldmVs
KSk7Ci0KLQkJaWYgKGVyci0+bmFtZSkKLQkJCWVycl9wcmludGYobSwgIiAobmFtZTogJWQpIiwg
ZXJyLT5uYW1lKTsKLQkJaWYgKGVyci0+ZmVuY2VfcmVnICE9IEk5MTVfRkVOQ0VfUkVHX05PTkUp
Ci0JCQllcnJfcHJpbnRmKG0sICIgKGZlbmNlOiAlZCkiLCBlcnItPmZlbmNlX3JlZyk7Ci0KLQkJ
ZXJyX3B1dHMobSwgIlxuIik7Ci0JCWVycisrOwotCX0KLX0KLQogc3RhdGljIHZvaWQgZXJyb3Jf
cHJpbnRfaW5zdGRvbmUoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwKIAkJCQkg
Y29uc3Qgc3RydWN0IGRybV9pOTE1X2Vycm9yX2VuZ2luZSAqZWUpCiB7CkBAIC03MzQsMzMgKzc3
Myw2IEBAIHN0YXRpYyB2b2lkIF9fZXJyX3ByaW50X3RvX3NnbChzdHJ1Y3QgZHJtX2k5MTVfZXJy
b3Jfc3RhdGVfYnVmICptLAogCQkJZXJyb3JfcHJpbnRfZW5naW5lKG0sICZlcnJvci0+ZW5naW5l
W2ldLCBlcnJvci0+ZXBvY2gpOwogCX0KIAotCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGVy
cm9yLT5hY3RpdmVfdm0pOyBpKyspIHsKLQkJY2hhciBidWZbMTI4XTsKLQkJaW50IGxlbiwgZmly
c3QgPSAxOwotCi0JCWlmICghZXJyb3ItPmFjdGl2ZV92bVtpXSkKLQkJCWJyZWFrOwotCi0JCWxl
biA9IHNjbnByaW50ZihidWYsIHNpemVvZihidWYpLCAiQWN0aXZlICgiKTsKLQkJZm9yIChqID0g
MDsgaiA8IEFSUkFZX1NJWkUoZXJyb3ItPmVuZ2luZSk7IGorKykgewotCQkJaWYgKGVycm9yLT5l
bmdpbmVbal0udm0gIT0gZXJyb3ItPmFjdGl2ZV92bVtpXSkKLQkJCQljb250aW51ZTsKLQotCQkJ
bGVuICs9IHNjbnByaW50ZihidWYgKyBsZW4sIHNpemVvZihidWYpLCAiJXMlcyIsCi0JCQkJCSBm
aXJzdCA/ICIiIDogIiwgIiwKLQkJCQkJIG0tPmk5MTUtPmVuZ2luZVtqXS0+bmFtZSk7Ci0JCQlm
aXJzdCA9IDA7Ci0JCX0KLQkJc2NucHJpbnRmKGJ1ZiArIGxlbiwgc2l6ZW9mKGJ1ZiksICIpIik7
Ci0JCXByaW50X2Vycm9yX2J1ZmZlcnMobSwgYnVmLAotCQkJCSAgICBlcnJvci0+YWN0aXZlX2Jv
W2ldLAotCQkJCSAgICBlcnJvci0+YWN0aXZlX2JvX2NvdW50W2ldKTsKLQl9Ci0KLQlwcmludF9l
cnJvcl9idWZmZXJzKG0sICJQaW5uZWQgKGdsb2JhbCkiLAotCQkJICAgIGVycm9yLT5waW5uZWRf
Ym8sCi0JCQkgICAgZXJyb3ItPnBpbm5lZF9ib19jb3VudCk7Ci0KIAlmb3IgKGkgPSAwOyBpIDwg
QVJSQVlfU0laRShlcnJvci0+ZW5naW5lKTsgaSsrKSB7CiAJCWNvbnN0IHN0cnVjdCBkcm1faTkx
NV9lcnJvcl9lbmdpbmUgKmVlID0gJmVycm9yLT5lbmdpbmVbaV07CiAKQEAgLTk3NCwxMCArOTg2
LDYgQEAgdm9pZCBfX2k5MTVfZ3B1X3N0YXRlX2ZyZWUoc3RydWN0IGtyZWYgKmVycm9yX3JlZikK
IAkJa2ZyZWUoZWUtPnJlcXVlc3RzKTsKIAl9CiAKLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0la
RShlcnJvci0+YWN0aXZlX2JvKTsgaSsrKQotCQlrZnJlZShlcnJvci0+YWN0aXZlX2JvW2ldKTsK
LQlrZnJlZShlcnJvci0+cGlubmVkX2JvKTsKLQogCWtmcmVlKGVycm9yLT5vdmVybGF5KTsKIAlr
ZnJlZShlcnJvci0+ZGlzcGxheSk7CiAKQEAgLTk5MCwxMiArOTk4LDEyIEBAIHZvaWQgX19pOTE1
X2dwdV9zdGF0ZV9mcmVlKHN0cnVjdCBrcmVmICplcnJvcl9yZWYpCiAKIHN0YXRpYyBzdHJ1Y3Qg
ZHJtX2k5MTVfZXJyb3Jfb2JqZWN0ICoKIGk5MTVfZXJyb3Jfb2JqZWN0X2NyZWF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCSBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKKwkJCSBz
dHJ1Y3QgaTkxNV92bWEgKnZtYSwKKwkJCSBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNzKQogewog
CXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKIAljb25zdCB1NjQgc2xvdCA9
IGdndHQtPmVycm9yX2NhcHR1cmUuc3RhcnQ7CiAJc3RydWN0IGRybV9pOTE1X2Vycm9yX29iamVj
dCAqZHN0OwotCXN0cnVjdCBjb21wcmVzcyBjb21wcmVzczsKIAl1bnNpZ25lZCBsb25nIG51bV9w
YWdlczsKIAlzdHJ1Y3Qgc2d0X2l0ZXIgaXRlcjsKIAlkbWFfYWRkcl90IGRtYTsKQEAgLTEwMDYs
MjIgKzEwMTQsMjEgQEAgaTkxNV9lcnJvcl9vYmplY3RfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LAogCiAJbnVtX3BhZ2VzID0gbWluX3QodTY0LCB2bWEtPnNpemUsIHZtYS0+
b2JqLT5iYXNlLnNpemUpID4+IFBBR0VfU0hJRlQ7CiAJbnVtX3BhZ2VzID0gRElWX1JPVU5EX1VQ
KDEwICogbnVtX3BhZ2VzLCA4KTsgLyogd29yc3RjYXNlIHpsaWIgZ3Jvd3RoICovCi0JZHN0ID0g
a21hbGxvYyhzaXplb2YoKmRzdCkgKyBudW1fcGFnZXMgKiBzaXplb2YodTMyICopLAotCQkgICAg
ICBHRlBfQVRPTUlDIHwgX19HRlBfTk9XQVJOKTsKKwlkc3QgPSBrbWFsbG9jKHNpemVvZigqZHN0
KSArIG51bV9wYWdlcyAqIHNpemVvZih1MzIgKiksIEFUT01JQ19NQVlGQUlMKTsKIAlpZiAoIWRz
dCkKIAkJcmV0dXJuIE5VTEw7CiAKKwlpZiAoIWNvbXByZXNzX3N0YXJ0KGNvbXByZXNzKSkgewor
CQlrZnJlZShkc3QpOworCQlyZXR1cm4gTlVMTDsKKwl9CisKIAlkc3QtPmd0dF9vZmZzZXQgPSB2
bWEtPm5vZGUuc3RhcnQ7CiAJZHN0LT5ndHRfc2l6ZSA9IHZtYS0+bm9kZS5zaXplOwogCWRzdC0+
bnVtX3BhZ2VzID0gbnVtX3BhZ2VzOwogCWRzdC0+cGFnZV9jb3VudCA9IDA7CiAJZHN0LT51bnVz
ZWQgPSAwOwogCi0JaWYgKCFjb21wcmVzc19pbml0KCZjb21wcmVzcykpIHsKLQkJa2ZyZWUoZHN0
KTsKLQkJcmV0dXJuIE5VTEw7Ci0JfQotCiAJcmV0ID0gLUVJTlZBTDsKIAlmb3JfZWFjaF9zZ3Rf
ZG1hKGRtYSwgaXRlciwgdm1hLT5wYWdlcykgewogCQl2b2lkIF9faW9tZW0gKnM7CkBAIC0xMDI5
LDY5ICsxMDM2LDIzIEBAIGk5MTVfZXJyb3Jfb2JqZWN0X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKIAkJZ2d0dC0+dm0uaW5zZXJ0X3BhZ2UoJmdndHQtPnZtLCBkbWEsIHNs
b3QsIEk5MTVfQ0FDSEVfTk9ORSwgMCk7CiAKIAkJcyA9IGlvX21hcHBpbmdfbWFwX2F0b21pY193
YygmZ2d0dC0+aW9tYXAsIHNsb3QpOwotCQlyZXQgPSBjb21wcmVzc19wYWdlKCZjb21wcmVzcywg
KHZvaWQgIF9fZm9yY2UgKilzLCBkc3QpOworCQlyZXQgPSBjb21wcmVzc19wYWdlKGNvbXByZXNz
LCAodm9pZCAgX19mb3JjZSAqKXMsIGRzdCk7CiAJCWlvX21hcHBpbmdfdW5tYXBfYXRvbWljKHMp
OwogCQlpZiAocmV0KQogCQkJYnJlYWs7CiAJfQogCi0JaWYgKHJldCB8fCBjb21wcmVzc19mbHVz
aCgmY29tcHJlc3MsIGRzdCkpIHsKKwlpZiAocmV0IHx8IGNvbXByZXNzX2ZsdXNoKGNvbXByZXNz
LCBkc3QpKSB7CiAJCXdoaWxlIChkc3QtPnBhZ2VfY291bnQtLSkKLQkJCWZyZWVfcGFnZSgodW5z
aWduZWQgbG9uZylkc3QtPnBhZ2VzW2RzdC0+cGFnZV9jb3VudF0pOworCQkJcG9vbF9mcmVlKCZj
b21wcmVzcy0+cG9vbCwgZHN0LT5wYWdlc1tkc3QtPnBhZ2VfY291bnRdKTsKIAkJa2ZyZWUoZHN0
KTsKIAkJZHN0ID0gTlVMTDsKIAl9CisJY29tcHJlc3NfZmluaXNoKGNvbXByZXNzKTsKIAotCWNv
bXByZXNzX2ZpbmkoJmNvbXByZXNzLCBkc3QpOwogCXJldHVybiBkc3Q7CiB9CiAKLXN0YXRpYyB2
b2lkIGNhcHR1cmVfYm8oc3RydWN0IGRybV9pOTE1X2Vycm9yX2J1ZmZlciAqZXJyLAotCQkgICAg
ICAgc3RydWN0IGk5MTVfdm1hICp2bWEpCi17Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiA9IHZtYS0+b2JqOwotCi0JZXJyLT5zaXplID0gb2JqLT5iYXNlLnNpemU7Ci0JZXJyLT5u
YW1lID0gb2JqLT5iYXNlLm5hbWU7Ci0KLQllcnItPmd0dF9vZmZzZXQgPSB2bWEtPm5vZGUuc3Rh
cnQ7Ci0JZXJyLT5yZWFkX2RvbWFpbnMgPSBvYmotPnJlYWRfZG9tYWluczsKLQllcnItPndyaXRl
X2RvbWFpbiA9IG9iai0+d3JpdGVfZG9tYWluOwotCWVyci0+ZmVuY2VfcmVnID0gdm1hLT5mZW5j
ZSA/IHZtYS0+ZmVuY2UtPmlkIDogLTE7Ci0JZXJyLT50aWxpbmcgPSBpOTE1X2dlbV9vYmplY3Rf
Z2V0X3RpbGluZyhvYmopOwotCWVyci0+ZGlydHkgPSBvYmotPm1tLmRpcnR5OwotCWVyci0+cHVy
Z2VhYmxlID0gb2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFEVl9XSUxMTkVFRDsKLQllcnItPnVzZXJw
dHIgPSBvYmotPnVzZXJwdHIubW0gIT0gTlVMTDsKLQllcnItPmNhY2hlX2xldmVsID0gb2JqLT5j
YWNoZV9sZXZlbDsKLX0KLQotc3RhdGljIHUzMiBjYXB0dXJlX2Vycm9yX2JvKHN0cnVjdCBkcm1f
aTkxNV9lcnJvcl9idWZmZXIgKmVyciwKLQkJCSAgICBpbnQgY291bnQsIHN0cnVjdCBsaXN0X2hl
YWQgKmhlYWQsCi0JCQkgICAgdW5zaWduZWQgaW50IGZsYWdzKQotI2RlZmluZSBBQ1RJVkVfT05M
WSBCSVQoMCkKLSNkZWZpbmUgUElOTkVEX09OTFkgQklUKDEpCi17Ci0Jc3RydWN0IGk5MTVfdm1h
ICp2bWE7Ci0JaW50IGkgPSAwOwotCi0JbGlzdF9mb3JfZWFjaF9lbnRyeSh2bWEsIGhlYWQsIHZt
X2xpbmspIHsKLQkJaWYgKCF2bWEtPm9iaikKLQkJCWNvbnRpbnVlOwotCi0JCWlmIChmbGFncyAm
IEFDVElWRV9PTkxZICYmICFpOTE1X3ZtYV9pc19hY3RpdmUodm1hKSkKLQkJCWNvbnRpbnVlOwot
Ci0JCWlmIChmbGFncyAmIFBJTk5FRF9PTkxZICYmICFpOTE1X3ZtYV9pc19waW5uZWQodm1hKSkK
LQkJCWNvbnRpbnVlOwotCi0JCWNhcHR1cmVfYm8oZXJyKyssIHZtYSk7Ci0JCWlmICgrK2kgPT0g
Y291bnQpCi0JCQlicmVhazsKLQl9Ci0KLQlyZXR1cm4gaTsKLX0KLQogLyoKICAqIEdlbmVyYXRl
IGEgc2VtaS11bmlxdWUgZXJyb3IgY29kZS4gVGhlIGNvZGUgaXMgbm90IG1lYW50IHRvIGhhdmUg
bWVhbmluZywgVGhlCiAgKiBjb2RlJ3Mgb25seSBwdXJwb3NlIGlzIHRvIHRyeSB0byBwcmV2ZW50
IGZhbHNlIGR1cGxpY2F0ZWQgYnVnIHJlcG9ydHMgYnkKQEAgLTEyODEsNyArMTI0Miw3IEBAIHN0
YXRpYyB2b2lkIGVuZ2luZV9yZWNvcmRfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLAogCWlmICghY291bnQpCiAJCXJldHVybjsKIAotCWVlLT5yZXF1ZXN0cyA9IGtjYWxs
b2MoY291bnQsIHNpemVvZigqZWUtPnJlcXVlc3RzKSwgR0ZQX0FUT01JQyk7CisJZWUtPnJlcXVl
c3RzID0ga2NhbGxvYyhjb3VudCwgc2l6ZW9mKCplZS0+cmVxdWVzdHMpLCBBVE9NSUNfTUFZRkFJ
TCk7CiAJaWYgKCFlZS0+cmVxdWVzdHMpCiAJCXJldHVybjsKIApAQCAtMTM0OSw4ICsxMzEwLDEw
IEBAIHN0YXRpYyB2b2lkIHJlY29yZF9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9lcnJvcl9jb250
ZXh0ICplLAogCWUtPmFjdGl2ZSA9IGF0b21pY19yZWFkKCZjdHgtPmFjdGl2ZV9jb3VudCk7CiB9
CiAKLXN0YXRpYyB2b2lkIHJlcXVlc3RfcmVjb3JkX3VzZXJfYm8oc3RydWN0IGk5MTVfcmVxdWVz
dCAqcmVxdWVzdCwKLQkJCQkgICBzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfZW5naW5lICplZSkKK3N0
YXRpYyB2b2lkCityZXF1ZXN0X3JlY29yZF91c2VyX2JvKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJl
cXVlc3QsCisJCSAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfZW5naW5lICplZSwKKwkJICAg
ICAgIHN0cnVjdCBjb21wcmVzcyAqY29tcHJlc3MpCiB7CiAJc3RydWN0IGk5MTVfY2FwdHVyZV9s
aXN0ICpjOwogCXN0cnVjdCBkcm1faTkxNV9lcnJvcl9vYmplY3QgKipibzsKQEAgLTEzNjIsMTgg
KzEzMjUsMjAgQEAgc3RhdGljIHZvaWQgcmVxdWVzdF9yZWNvcmRfdXNlcl9ibyhzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpyZXF1ZXN0LAogCWlmICghbWF4KQogCQlyZXR1cm47CiAKLQlibyA9IGttYWxs
b2NfYXJyYXkobWF4LCBzaXplb2YoKmJvKSwgR0ZQX0FUT01JQyk7CisJYm8gPSBrbWFsbG9jX2Fy
cmF5KG1heCwgc2l6ZW9mKCpibyksIEFUT01JQ19NQVlGQUlMKTsKIAlpZiAoIWJvKSB7CiAJCS8q
IElmIHdlIGNhbid0IGNhcHR1cmUgZXZlcnl0aGluZywgdHJ5IHRvIGNhcHR1cmUgc29tZXRoaW5n
LiAqLwogCQltYXggPSBtaW5fdChsb25nLCBtYXgsIFBBR0VfU0laRSAvIHNpemVvZigqYm8pKTsK
LQkJYm8gPSBrbWFsbG9jX2FycmF5KG1heCwgc2l6ZW9mKCpibyksIEdGUF9BVE9NSUMpOworCQli
byA9IGttYWxsb2NfYXJyYXkobWF4LCBzaXplb2YoKmJvKSwgQVRPTUlDX01BWUZBSUwpOwogCX0K
IAlpZiAoIWJvKQogCQlyZXR1cm47CiAKIAljb3VudCA9IDA7CiAJZm9yIChjID0gcmVxdWVzdC0+
Y2FwdHVyZV9saXN0OyBjOyBjID0gYy0+bmV4dCkgewotCQlib1tjb3VudF0gPSBpOTE1X2Vycm9y
X29iamVjdF9jcmVhdGUocmVxdWVzdC0+aTkxNSwgYy0+dm1hKTsKKwkJYm9bY291bnRdID0gaTkx
NV9lcnJvcl9vYmplY3RfY3JlYXRlKHJlcXVlc3QtPmk5MTUsCisJCQkJCQkgICAgIGMtPnZtYSwK
KwkJCQkJCSAgICAgY29tcHJlc3MpOwogCQlpZiAoIWJvW2NvdW50XSkKIAkJCWJyZWFrOwogCQlp
ZiAoKytjb3VudCA9PSBtYXgpCkBAIC0xMzg2LDcgKzEzNTEsOCBAQCBzdGF0aWMgdm9pZCByZXF1
ZXN0X3JlY29yZF91c2VyX2JvKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsCiAKIHN0YXRp
YyBzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfb2JqZWN0ICoKIGNhcHR1cmVfb2JqZWN0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaikKKwkgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkg
ICAgICAgc3RydWN0IGNvbXByZXNzICpjb21wcmVzcykKIHsKIAlpZiAob2JqICYmIGk5MTVfZ2Vt
X29iamVjdF9oYXNfcGFnZXMob2JqKSkgewogCQlzdHJ1Y3QgaTkxNV92bWEgZmFrZSA9IHsKQEAg
LTEzOTYsMTMgKzEzNjIsMTQgQEAgY2FwdHVyZV9vYmplY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCQkJLm9iaiA9IG9iaiwKIAkJfTsKIAotCQlyZXR1cm4gaTkxNV9lcnJv
cl9vYmplY3RfY3JlYXRlKGRldl9wcml2LCAmZmFrZSk7CisJCXJldHVybiBpOTE1X2Vycm9yX29i
amVjdF9jcmVhdGUoZGV2X3ByaXYsICZmYWtlLCBjb21wcmVzcyk7CiAJfSBlbHNlIHsKIAkJcmV0
dXJuIE5VTEw7CiAJfQogfQogCi1zdGF0aWMgdm9pZCBnZW1fcmVjb3JkX3JpbmdzKHN0cnVjdCBp
OTE1X2dwdV9zdGF0ZSAqZXJyb3IpCitzdGF0aWMgdm9pZAorZ2VtX3JlY29yZF9yaW5ncyhzdHJ1
Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yLCBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNzKQogewog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZXJyb3ItPmk5MTU7CiAJaW50IGk7CkBA
IC0xNDIwLDYgKzEzODcsOSBAQCBzdGF0aWMgdm9pZCBnZW1fcmVjb3JkX3JpbmdzKHN0cnVjdCBp
OTE1X2dwdV9zdGF0ZSAqZXJyb3IpCiAKIAkJZWUtPmVuZ2luZV9pZCA9IGk7CiAKKwkJLyogUmVm
aWxsIG91ciBwYWdlIHBvb2wgYmVmb3JlIGVudGVyaW5nIGF0b21pYyBzZWN0aW9uICovCisJCXBv
b2xfcmVmaWxsKCZjb21wcmVzcy0+cG9vbCwgQUxMT1dfRkFJTCk7CisKIAkJZXJyb3JfcmVjb3Jk
X2VuZ2luZV9yZWdpc3RlcnMoZXJyb3IsIGVuZ2luZSwgZWUpOwogCQllcnJvcl9yZWNvcmRfZW5n
aW5lX2V4ZWNsaXN0cyhlbmdpbmUsIGVlKTsKIApAQCAtMTQyOSw4ICsxMzk5LDYgQEAgc3RhdGlj
IHZvaWQgZ2VtX3JlY29yZF9yaW5ncyhzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogCQkJ
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IHJlcXVlc3QtPmdlbV9jb250ZXh0OwogCQkJ
c3RydWN0IGludGVsX3JpbmcgKnJpbmcgPSByZXF1ZXN0LT5yaW5nOwogCi0JCQllZS0+dm0gPSBj
dHgtPnZtID86ICZlbmdpbmUtPmd0LT5nZ3R0LT52bTsKLQogCQkJcmVjb3JkX2NvbnRleHQoJmVl
LT5jb250ZXh0LCBjdHgpOwogCiAJCQkvKiBXZSBuZWVkIHRvIGNvcHkgdGhlc2UgdG8gYW4gYW5v
bnltb3VzIGJ1ZmZlcgpAQCAtMTQzOCwxNyArMTQwNiwyMSBAQCBzdGF0aWMgdm9pZCBnZW1fcmVj
b3JkX3JpbmdzKHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJyb3IpCiAJCQkgKiBieSB1c2Vyc3Bh
Y2UuCiAJCQkgKi8KIAkJCWVlLT5iYXRjaGJ1ZmZlciA9Ci0JCQkJaTkxNV9lcnJvcl9vYmplY3Rf
Y3JlYXRlKGk5MTUsIHJlcXVlc3QtPmJhdGNoKTsKKwkJCQlpOTE1X2Vycm9yX29iamVjdF9jcmVh
dGUoaTkxNSwKKwkJCQkJCQkgcmVxdWVzdC0+YmF0Y2gsCisJCQkJCQkJIGNvbXByZXNzKTsKIAog
CQkJaWYgKEhBU19CUk9LRU5fQ1NfVExCKGk5MTUpKQogCQkJCWVlLT53YV9iYXRjaGJ1ZmZlciA9
CiAJCQkJICBpOTE1X2Vycm9yX29iamVjdF9jcmVhdGUoaTkxNSwKLQkJCQkJCQkgICBlbmdpbmUt
Pmd0LT5zY3JhdGNoKTsKLQkJCXJlcXVlc3RfcmVjb3JkX3VzZXJfYm8ocmVxdWVzdCwgZWUpOwor
CQkJCQkJCSAgIGVuZ2luZS0+Z3QtPnNjcmF0Y2gsCisJCQkJCQkJICAgY29tcHJlc3MpOworCQkJ
cmVxdWVzdF9yZWNvcmRfdXNlcl9ibyhyZXF1ZXN0LCBlZSwgY29tcHJlc3MpOwogCiAJCQllZS0+
Y3R4ID0KIAkJCQlpOTE1X2Vycm9yX29iamVjdF9jcmVhdGUoaTkxNSwKLQkJCQkJCQkgcmVxdWVz
dC0+aHdfY29udGV4dC0+c3RhdGUpOworCQkJCQkJCSByZXF1ZXN0LT5od19jb250ZXh0LT5zdGF0
ZSwKKwkJCQkJCQkgY29tcHJlc3MpOwogCiAJCQllcnJvci0+c2ltdWxhdGVkIHw9CiAJCQkJaTkx
NV9nZW1fY29udGV4dF9ub19lcnJvcl9jYXB0dXJlKGN0eCk7CkBAIC0xNDYwLDcgKzE0MzIsOSBA
QCBzdGF0aWMgdm9pZCBnZW1fcmVjb3JkX3JpbmdzKHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJy
b3IpCiAJCQllZS0+Y3B1X3JpbmdfaGVhZCA9IHJpbmctPmhlYWQ7CiAJCQllZS0+Y3B1X3Jpbmdf
dGFpbCA9IHJpbmctPnRhaWw7CiAJCQllZS0+cmluZ2J1ZmZlciA9Ci0JCQkJaTkxNV9lcnJvcl9v
YmplY3RfY3JlYXRlKGk5MTUsIHJpbmctPnZtYSk7CisJCQkJaTkxNV9lcnJvcl9vYmplY3RfY3Jl
YXRlKGk5MTUsCisJCQkJCQkJIHJpbmctPnZtYSwKKwkJCQkJCQkgY29tcHJlc3MpOwogCiAJCQll
bmdpbmVfcmVjb3JkX3JlcXVlc3RzKGVuZ2luZSwgcmVxdWVzdCwgZWUpOwogCQl9CkBAIC0xNDY4
LDg5ICsxNDQyLDIxIEBAIHN0YXRpYyB2b2lkIGdlbV9yZWNvcmRfcmluZ3Moc3RydWN0IGk5MTVf
Z3B1X3N0YXRlICplcnJvcikKIAogCQllZS0+aHdzX3BhZ2UgPQogCQkJaTkxNV9lcnJvcl9vYmpl
Y3RfY3JlYXRlKGk5MTUsCi0JCQkJCQkgZW5naW5lLT5zdGF0dXNfcGFnZS52bWEpOworCQkJCQkJ
IGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hLAorCQkJCQkJIGNvbXByZXNzKTsKIAotCQllZS0+d2Ff
Y3R4ID0gaTkxNV9lcnJvcl9vYmplY3RfY3JlYXRlKGk5MTUsIGVuZ2luZS0+d2FfY3R4LnZtYSk7
Ci0KLQkJZWUtPmRlZmF1bHRfc3RhdGUgPSBjYXB0dXJlX29iamVjdChpOTE1LCBlbmdpbmUtPmRl
ZmF1bHRfc3RhdGUpOwotCX0KLX0KLQotc3RhdGljIHZvaWQgZ2VtX2NhcHR1cmVfdm0oc3RydWN0
IGk5MTVfZ3B1X3N0YXRlICplcnJvciwKLQkJCSAgIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtLAotCQkJICAgaW50IGlkeCkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfYnVmZmVyICph
Y3RpdmVfYm87Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWE7Ci0JaW50IGNvdW50OwotCi0JY291bnQg
PSAwOwotCWxpc3RfZm9yX2VhY2hfZW50cnkodm1hLCAmdm0tPmJvdW5kX2xpc3QsIHZtX2xpbmsp
Ci0JCWlmIChpOTE1X3ZtYV9pc19hY3RpdmUodm1hKSkKLQkJCWNvdW50Kys7Ci0KLQlhY3RpdmVf
Ym8gPSBOVUxMOwotCWlmIChjb3VudCkKLQkJYWN0aXZlX2JvID0ga2NhbGxvYyhjb3VudCwgc2l6
ZW9mKCphY3RpdmVfYm8pLCBHRlBfQVRPTUlDKTsKLQlpZiAoYWN0aXZlX2JvKQotCQljb3VudCA9
IGNhcHR1cmVfZXJyb3JfYm8oYWN0aXZlX2JvLAotCQkJCQkgY291bnQsICZ2bS0+Ym91bmRfbGlz
dCwKLQkJCQkJIEFDVElWRV9PTkxZKTsKLQllbHNlCi0JCWNvdW50ID0gMDsKLQotCWVycm9yLT5h
Y3RpdmVfdm1baWR4XSA9IHZtOwotCWVycm9yLT5hY3RpdmVfYm9baWR4XSA9IGFjdGl2ZV9ibzsK
LQllcnJvci0+YWN0aXZlX2JvX2NvdW50W2lkeF0gPSBjb3VudDsKLX0KLQotc3RhdGljIHZvaWQg
Y2FwdHVyZV9hY3RpdmVfYnVmZmVycyhzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQotewot
CWludCBjbnQgPSAwLCBpLCBqOwotCi0JQlVJTERfQlVHX09OKEFSUkFZX1NJWkUoZXJyb3ItPmVu
Z2luZSkgPiBBUlJBWV9TSVpFKGVycm9yLT5hY3RpdmVfYm8pKTsKLQlCVUlMRF9CVUdfT04oQVJS
QVlfU0laRShlcnJvci0+YWN0aXZlX2JvKSAhPSBBUlJBWV9TSVpFKGVycm9yLT5hY3RpdmVfdm0p
KTsKLQlCVUlMRF9CVUdfT04oQVJSQVlfU0laRShlcnJvci0+YWN0aXZlX2JvKSAhPSBBUlJBWV9T
SVpFKGVycm9yLT5hY3RpdmVfYm9fY291bnQpKTsKLQotCS8qIFNjYW4gZWFjaCBlbmdpbmUgbG9v
a2luZyBmb3IgdW5pcXVlIGFjdGl2ZSBjb250ZXh0cy92bSAqLwotCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKGVycm9yLT5lbmdpbmUpOyBpKyspIHsKLQkJc3RydWN0IGRybV9pOTE1X2Vycm9y
X2VuZ2luZSAqZWUgPSAmZXJyb3ItPmVuZ2luZVtpXTsKLQkJYm9vbCBmb3VuZDsKLQotCQlpZiAo
IWVlLT52bSkKLQkJCWNvbnRpbnVlOworCQllZS0+d2FfY3R4ID0KKwkJCWk5MTVfZXJyb3Jfb2Jq
ZWN0X2NyZWF0ZShpOTE1LAorCQkJCQkJIGVuZ2luZS0+d2FfY3R4LnZtYSwKKwkJCQkJCSBjb21w
cmVzcyk7CiAKLQkJZm91bmQgPSBmYWxzZTsKLQkJZm9yIChqID0gMDsgaiA8IGkgJiYgIWZvdW5k
OyBqKyspCi0JCQlmb3VuZCA9IGVycm9yLT5lbmdpbmVbal0udm0gPT0gZWUtPnZtOwotCQlpZiAo
IWZvdW5kKQotCQkJZ2VtX2NhcHR1cmVfdm0oZXJyb3IsIGVlLT52bSwgY250KyspOworCQllZS0+
ZGVmYXVsdF9zdGF0ZSA9CisJCQljYXB0dXJlX29iamVjdChpOTE1LCBlbmdpbmUtPmRlZmF1bHRf
c3RhdGUsIGNvbXByZXNzKTsKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIGNhcHR1cmVfcGlubmVkX2J1
ZmZlcnMoc3RydWN0IGk5MTVfZ3B1X3N0YXRlICplcnJvcikKLXsKLQlzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bSA9ICZlcnJvci0+aTkxNS0+Z2d0dC52bTsKLQlzdHJ1Y3QgZHJtX2k5MTVf
ZXJyb3JfYnVmZmVyICpibzsKLQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKLQlpbnQgY291bnQ7Ci0K
LQljb3VudCA9IDA7Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeSh2bWEsICZ2bS0+Ym91bmRfbGlzdCwg
dm1fbGluaykKLQkJY291bnQrKzsKLQotCWJvID0gTlVMTDsKLQlpZiAoY291bnQpCi0JCWJvID0g
a2NhbGxvYyhjb3VudCwgc2l6ZW9mKCpibyksIEdGUF9BVE9NSUMpOwotCWlmICghYm8pCi0JCXJl
dHVybjsKLQotCWVycm9yLT5waW5uZWRfYm9fY291bnQgPQotCQljYXB0dXJlX2Vycm9yX2JvKGJv
LCBjb3VudCwgJnZtLT5ib3VuZF9saXN0LCBQSU5ORURfT05MWSk7Ci0JZXJyb3ItPnBpbm5lZF9i
byA9IGJvOwotfQotCi1zdGF0aWMgdm9pZCBjYXB0dXJlX3VjX3N0YXRlKHN0cnVjdCBpOTE1X2dw
dV9zdGF0ZSAqZXJyb3IpCitzdGF0aWMgdm9pZAorY2FwdHVyZV91Y19zdGF0ZShzdHJ1Y3QgaTkx
NV9ncHVfc3RhdGUgKmVycm9yLCBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNzKQogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZXJyb3ItPmk5MTU7CiAJc3RydWN0IGk5MTVfZXJy
b3JfdWMgKmVycm9yX3VjID0gJmVycm9yLT51YzsKQEAgLTE1NjcsOSArMTQ3MywxMSBAQCBzdGF0
aWMgdm9pZCBjYXB0dXJlX3VjX3N0YXRlKHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJyb3IpCiAJ
ICogQXMgbW9kcGFyYW1zIGFyZSBnZW5lcmFsbHkgYWNjZXNpYmxlIGZyb20gdGhlIHVzZXJzcGFj
ZSBtYWtlCiAJICogZXhwbGljaXQgY29waWVzIG9mIHRoZSBmaXJtd2FyZSBwYXRocy4KIAkgKi8K
LQllcnJvcl91Yy0+Z3VjX2Z3LnBhdGggPSBrc3RyZHVwKHVjLT5ndWMuZncucGF0aCwgR0ZQX0FU
T01JQyk7Ci0JZXJyb3JfdWMtPmh1Y19mdy5wYXRoID0ga3N0cmR1cCh1Yy0+aHVjLmZ3LnBhdGgs
IEdGUF9BVE9NSUMpOwotCWVycm9yX3VjLT5ndWNfbG9nID0gaTkxNV9lcnJvcl9vYmplY3RfY3Jl
YXRlKGk5MTUsIHVjLT5ndWMubG9nLnZtYSk7CisJZXJyb3JfdWMtPmd1Y19mdy5wYXRoID0ga3N0
cmR1cCh1Yy0+Z3VjLmZ3LnBhdGgsIEFMTE9XX0ZBSUwpOworCWVycm9yX3VjLT5odWNfZncucGF0
aCA9IGtzdHJkdXAodWMtPmh1Yy5mdy5wYXRoLCBBTExPV19GQUlMKTsKKwllcnJvcl91Yy0+Z3Vj
X2xvZyA9IGk5MTVfZXJyb3Jfb2JqZWN0X2NyZWF0ZShpOTE1LAorCQkJCQkJICAgICB1Yy0+Z3Vj
LmxvZy52bWEsCisJCQkJCQkgICAgIGNvbXByZXNzKTsKIH0KIAogLyogQ2FwdHVyZSBhbGwgcmVn
aXN0ZXJzIHdoaWNoIGRvbid0IGZpdCBpbnRvIGFub3RoZXIgY2F0ZWdvcnkuICovCkBAIC0xNzUz
LDU2ICsxNjYxLDUzIEBAIHN0YXRpYyB2b2lkIGNhcHR1cmVfZmluaXNoKHN0cnVjdCBpOTE1X2dw
dV9zdGF0ZSAqZXJyb3IpCiAJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQtPnZtLCBzbG90LCBQ
QUdFX1NJWkUpOwogfQogCi1zdGF0aWMgaW50IGNhcHR1cmUodm9pZCAqZGF0YSkKLXsKLQlzdHJ1
Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yID0gZGF0YTsKLQotCWVycm9yLT50aW1lID0ga3RpbWVf
Z2V0X3JlYWwoKTsKLQllcnJvci0+Ym9vdHRpbWUgPSBrdGltZV9nZXRfYm9vdHRpbWUoKTsKLQll
cnJvci0+dXB0aW1lID0ga3RpbWVfc3ViKGt0aW1lX2dldCgpLAotCQkJCSAgZXJyb3ItPmk5MTUt
Pmd0Lmxhc3RfaW5pdF90aW1lKTsKLQllcnJvci0+Y2FwdHVyZSA9IGppZmZpZXM7Ci0KLQljYXB0
dXJlX3BhcmFtcyhlcnJvcik7Ci0JY2FwdHVyZV9nZW5fc3RhdGUoZXJyb3IpOwotCWNhcHR1cmVf
dWNfc3RhdGUoZXJyb3IpOwotCWNhcHR1cmVfcmVnX3N0YXRlKGVycm9yKTsKLQlnZW1fcmVjb3Jk
X2ZlbmNlcyhlcnJvcik7Ci0JZ2VtX3JlY29yZF9yaW5ncyhlcnJvcik7Ci0JY2FwdHVyZV9hY3Rp
dmVfYnVmZmVycyhlcnJvcik7Ci0JY2FwdHVyZV9waW5uZWRfYnVmZmVycyhlcnJvcik7Ci0KLQll
cnJvci0+b3ZlcmxheSA9IGludGVsX292ZXJsYXlfY2FwdHVyZV9lcnJvcl9zdGF0ZShlcnJvci0+
aTkxNSk7Ci0JZXJyb3ItPmRpc3BsYXkgPSBpbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jfc3Rh
dGUoZXJyb3ItPmk5MTUpOwotCi0JZXJyb3ItPmVwb2NoID0gY2FwdHVyZV9maW5kX2Vwb2NoKGVy
cm9yKTsKLQotCWNhcHR1cmVfZmluaXNoKGVycm9yKTsKLQlyZXR1cm4gMDsKLX0KLQogI2RlZmlu
ZSBEQVlfQVNfU0VDT05EUyh4KSAoMjQgKiA2MCAqIDYwICogKHgpKQogCiBzdHJ1Y3QgaTkxNV9n
cHVfc3RhdGUgKgogaTkxNV9jYXB0dXJlX2dwdV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIHsKIAlzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yOworCXN0cnVjdCBjb21w
cmVzcyBjb21wcmVzczsKIAogCS8qIENoZWNrIGlmIEdQVSBjYXB0dXJlIGhhcyBiZWVuIGRpc2Fi
bGVkICovCiAJZXJyb3IgPSBSRUFEX09OQ0UoaTkxNS0+Z3B1X2Vycm9yLmZpcnN0X2Vycm9yKTsK
IAlpZiAoSVNfRVJSKGVycm9yKSkKIAkJcmV0dXJuIGVycm9yOwogCi0JZXJyb3IgPSBremFsbG9j
KHNpemVvZigqZXJyb3IpLCBHRlBfQVRPTUlDKTsKKwllcnJvciA9IGt6YWxsb2Moc2l6ZW9mKCpl
cnJvciksIEFMTE9XX0ZBSUwpOwogCWlmICghZXJyb3IpIHsKIAkJaTkxNV9kaXNhYmxlX2Vycm9y
X3N0YXRlKGk5MTUsIC1FTk9NRU0pOwogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAl9CiAK
KwlpZiAoIWNvbXByZXNzX2luaXQoJmNvbXByZXNzKSkgeworCQlrZnJlZShlcnJvcik7CisJCWk5
MTVfZGlzYWJsZV9lcnJvcl9zdGF0ZShpOTE1LCAtRU5PTUVNKTsKKwkJcmV0dXJuIEVSUl9QVFIo
LUVOT01FTSk7CisJfQorCiAJa3JlZl9pbml0KCZlcnJvci0+cmVmKTsKIAllcnJvci0+aTkxNSA9
IGk5MTU7CiAKLQlzdG9wX21hY2hpbmUoY2FwdHVyZSwgZXJyb3IsIE5VTEwpOworCWVycm9yLT50
aW1lID0ga3RpbWVfZ2V0X3JlYWwoKTsKKwllcnJvci0+Ym9vdHRpbWUgPSBrdGltZV9nZXRfYm9v
dHRpbWUoKTsKKwllcnJvci0+dXB0aW1lID0ga3RpbWVfc3ViKGt0aW1lX2dldCgpLCBpOTE1LT5n
dC5sYXN0X2luaXRfdGltZSk7CisJZXJyb3ItPmNhcHR1cmUgPSBqaWZmaWVzOworCisJY2FwdHVy
ZV9wYXJhbXMoZXJyb3IpOworCWNhcHR1cmVfZ2VuX3N0YXRlKGVycm9yKTsKKwljYXB0dXJlX3Vj
X3N0YXRlKGVycm9yLCAmY29tcHJlc3MpOworCWNhcHR1cmVfcmVnX3N0YXRlKGVycm9yKTsKKwln
ZW1fcmVjb3JkX2ZlbmNlcyhlcnJvcik7CisJZ2VtX3JlY29yZF9yaW5ncyhlcnJvciwgJmNvbXBy
ZXNzKTsKKworCWVycm9yLT5vdmVybGF5ID0gaW50ZWxfb3ZlcmxheV9jYXB0dXJlX2Vycm9yX3N0
YXRlKGk5MTUpOworCWVycm9yLT5kaXNwbGF5ID0gaW50ZWxfZGlzcGxheV9jYXB0dXJlX2Vycm9y
X3N0YXRlKGk5MTUpOworCisJZXJyb3ItPmVwb2NoID0gY2FwdHVyZV9maW5kX2Vwb2NoKGVycm9y
KTsKKworCWNhcHR1cmVfZmluaXNoKGVycm9yKTsKKwljb21wcmVzc19maW5pKCZjb21wcmVzcyk7
CiAKIAlyZXR1cm4gZXJyb3I7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dwdV9lcnJvci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuaApp
bmRleCA4NWYwNmJjNWRhMDUuLmEyNGMzNTEwN2QxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dwdV9lcnJvci5oCkBAIC04NSw3ICs4NSw2IEBAIHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSB7CiAJ
CS8qIFNvZnR3YXJlIHRyYWNrZWQgc3RhdGUgKi8KIAkJYm9vbCBpZGxlOwogCQl1bnNpZ25lZCBs
b25nIGhhbmdjaGVja190aW1lc3RhbXA7Ci0JCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
OwogCQlpbnQgbnVtX3JlcXVlc3RzOwogCQl1MzIgcmVzZXRfY291bnQ7CiAKQEAgLTE2MSwyMiAr
MTYwLDYgQEAgc3RydWN0IGk5MTVfZ3B1X3N0YXRlIHsKIAkJfSB2bV9pbmZvOwogCX0gZW5naW5l
W0k5MTVfTlVNX0VOR0lORVNdOwogCi0Jc3RydWN0IGRybV9pOTE1X2Vycm9yX2J1ZmZlciB7Ci0J
CXUzMiBzaXplOwotCQl1MzIgbmFtZTsKLQkJdTY0IGd0dF9vZmZzZXQ7Ci0JCXUzMiByZWFkX2Rv
bWFpbnM7Ci0JCXUzMiB3cml0ZV9kb21haW47Ci0JCXMzMiBmZW5jZV9yZWc6STkxNV9NQVhfTlVN
X0ZFTkNFX0JJVFM7Ci0JCXUzMiB0aWxpbmc6MjsKLQkJdTMyIGRpcnR5OjE7Ci0JCXUzMiBwdXJn
ZWFibGU6MTsKLQkJdTMyIHVzZXJwdHI6MTsKLQkJdTMyIGNhY2hlX2xldmVsOjM7Ci0JfSAqYWN0
aXZlX2JvW0k5MTVfTlVNX0VOR0lORVNdLCAqcGlubmVkX2JvOwotCXUzMiBhY3RpdmVfYm9fY291
bnRbSTkxNV9OVU1fRU5HSU5FU10sIHBpbm5lZF9ib19jb3VudDsKLQlzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICphY3RpdmVfdm1bSTkxNV9OVU1fRU5HSU5FU107Ci0KIAlzdHJ1Y3Qgc2NhdHRl
cmxpc3QgKnNnbCwgKmZpdDsKIH07CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
