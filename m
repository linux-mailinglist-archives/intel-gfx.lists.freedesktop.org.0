Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE043C710
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 11:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE19C8916F;
	Tue, 11 Jun 2019 09:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56EDC89174
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 09:12:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16860891-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 10:12:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 10:12:38 +0100
Message-Id: <20190611091238.15808-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611091238.15808-1-chris@chris-wilson.co.uk>
References: <20190611091238.15808-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Rename i915_hw_ppgtt to i915_ppgtt
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

S2VlcGluZyB0aGUgX2h3XyBpbiB0aGVyZSBkb2VzIG5vdCBoZWxwIHRvIGRpc3Rpbmd1aXNoIGl0
IGZyb20gaXRzCm9ubHkgYnJldGhyZW4gaTkxNV9nZ3R0LCBzbyBkcm9wIGl0LgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDggKy0KIC4uLi9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8IDEyICstLQogLi4uL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgICAgfCAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Z0L3NjaGVkdWxlci5jICAgICAgICAgIHwgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyAgICAgICAgICAgfCA3OCArKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCAgICAgICAgICAgfCAyOCArKystLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCAgNiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmMgICAgIHwgIDYgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2d0dC5oICAgICB8ICA0ICstCiAxMiBmaWxlcyBjaGFu
Z2VkLCA3OCBpbnNlcnRpb25zKCspLCA4MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCA3NWIwZDFkYmIyMTUuLmM4NmNhOWYy
MTUzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBA
IC01MTMsNyArNTEzLDcgQEAgaTkxNV9nZW1fY3JlYXRlX2NvbnRleHQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiAJCXJldHVybiBjdHg7CiAK
IAlpZiAoSEFTX0ZVTExfUFBHVFQoZGV2X3ByaXYpKSB7Ci0JCXN0cnVjdCBpOTE1X2h3X3BwZ3R0
ICpwcGd0dDsKKwkJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0OwogCiAJCXBwZ3R0ID0gaTkxNV9w
cGd0dF9jcmVhdGUoZGV2X3ByaXYpOwogCQlpZiAoSVNfRVJSKHBwZ3R0KSkgewpAQCAtODE4LDcg
KzgxOCw3IEBAIGludCBpOTE1X2dlbV92bV9jcmVhdGVfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUoZGV2KTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3ZtX2NvbnRyb2wgKmFyZ3MgPSBkYXRhOwog
CXN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiA9IGZpbGUtPmRyaXZlcl9w
cml2OwotCXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dDsKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAq
cHBndHQ7CiAJaW50IGVycjsKIAogCWlmICghSEFTX0ZVTExfUFBHVFQoaTkxNSkpCkBAIC0xMDM3
LDcgKzEwMzcsNyBAQCBzdGF0aWMgaW50IGVtaXRfcHBndHRfdXBkYXRlKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxLCB2b2lkICpkYXRhKQogCWludCBpOwogCiAJaWYgKGk5MTVfdm1faXNfNGx2bCh2
bSkpIHsKLQkJc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2
bSk7CisJCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQodm0pOwog
CQljb25zdCBkbWFfYWRkcl90IHBkX2RhZGRyID0gcHhfZG1hKCZwcGd0dC0+cG1sNCk7CiAKIAkJ
Y3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA2KTsKQEAgLTEwNTQsNyArMTA1NCw3IEBAIHN0YXRp
YyBpbnQgZW1pdF9wcGd0dF91cGRhdGUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHZvaWQgKmRh
dGEpCiAJCSpjcysrID0gTUlfTk9PUDsKIAkJaW50ZWxfcmluZ19hZHZhbmNlKHJxLCBjcyk7CiAJ
fSBlbHNlIGlmIChIQVNfTE9HSUNBTF9SSU5HX0NPTlRFWFRTKGVuZ2luZS0+aTkxNSkpIHsKLQkJ
c3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CisJCXN0
cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQodm0pOwogCiAJCWNzID0g
aW50ZWxfcmluZ19iZWdpbihycSwgNCAqIEdFTjhfM0xWTF9QRFBFUyArIDIpOwogCQlpZiAoSVNf
RVJSKGNzKSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aHVnZV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMKaW5kZXggMjMyZDVjZjQzOTZjLi43M2U2NjdiMzFjYzQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCkBAIC0zNjgsNyArMzY4LDcg
QEAgc3RhdGljIGludCBpZ3RfY2hlY2tfcGFnZV9zaXplcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkK
IAogc3RhdGljIGludCBpZ3RfbW9ja19leGhhdXN0X2RldmljZV9zdXBwb3J0ZWRfcGFnZXModm9p
ZCAqYXJnKQogewotCXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCA9IGFyZzsKKwlzdHJ1Y3Qg
aTkxNV9wcGd0dCAqcHBndHQgPSBhcmc7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBwcGd0dC0+dm0uaTkxNTsKIAl1bnNpZ25lZCBpbnQgc2F2ZWRfbWFzayA9IElOVEVMX0lORk8o
aTkxNSktPnBhZ2Vfc2l6ZXM7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKQEAg
LTQ0Nyw3ICs0NDcsNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX2V4aGF1c3RfZGV2aWNlX3N1cHBv
cnRlZF9wYWdlcyh2b2lkICphcmcpCiAKIHN0YXRpYyBpbnQgaWd0X21vY2tfcHBndHRfbWlzYWxp
Z25lZF9kbWEodm9pZCAqYXJnKQogewotCXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCA9IGFy
ZzsKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBhcmc7CiAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBwcGd0dC0+dm0uaTkxNTsKIAl1bnNpZ25lZCBsb25nIHN1cHBvcnRlZCA9
IElOVEVMX0lORk8oaTkxNSktPnBhZ2Vfc2l6ZXM7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKQEAgLTU3NSw3ICs1NzUsNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0X21p
c2FsaWduZWRfZG1hKHZvaWQgKmFyZykKIH0KIAogc3RhdGljIHZvaWQgY2xvc2Vfb2JqZWN0X2xp
c3Qoc3RydWN0IGxpc3RfaGVhZCAqb2JqZWN0cywKLQkJCSAgICAgIHN0cnVjdCBpOTE1X2h3X3Bw
Z3R0ICpwcGd0dCkKKwkJCSAgICAgIHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCkKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCAqb247CiAKQEAgLTU5NSw3ICs1OTUsNyBAQCBz
dGF0aWMgdm9pZCBjbG9zZV9vYmplY3RfbGlzdChzdHJ1Y3QgbGlzdF9oZWFkICpvYmplY3RzLAog
CiBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0X2h1Z2VfZmlsbCh2b2lkICphcmcpCiB7Ci0Jc3Ry
dWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0ID0gYXJnOworCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0
dCA9IGFyZzsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHBwZ3R0LT52bS5pOTE1
OwogCXVuc2lnbmVkIGxvbmcgbWF4X3BhZ2VzID0gcHBndHQtPnZtLnRvdGFsID4+IFBBR0VfU0hJ
RlQ7CiAJdW5zaWduZWQgbG9uZyBwYWdlX251bTsKQEAgLTcxNiw3ICs3MTYsNyBAQCBzdGF0aWMg
aW50IGlndF9tb2NrX3BwZ3R0X2h1Z2VfZmlsbCh2b2lkICphcmcpCiAKIHN0YXRpYyBpbnQgaWd0
X21vY2tfcHBndHRfNjRLKHZvaWQgKmFyZykKIHsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBn
dHQgPSBhcmc7CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gYXJnOwogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gcHBndHQtPnZtLmk5MTU7CiAJc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iajsKIAljb25zdCBzdHJ1Y3Qgb2JqZWN0X2luZm8gewpAQCAtMTY4Myw3ICsx
NjgzLDcgQEAgaW50IGk5MTVfZ2VtX2h1Z2VfcGFnZV9tb2NrX3NlbGZ0ZXN0cyh2b2lkKQogCQlT
VUJURVNUKGlndF9tb2NrX3BwZ3R0XzY0SyksCiAJfTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXY7Ci0Jc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0OworCXN0cnVjdCBpOTE1
X3BwZ3R0ICpwcGd0dDsKIAlpbnQgZXJyOwogCiAJZGV2X3ByaXYgPSBtb2NrX2dlbV9kZXZpY2Uo
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19j
b250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4
dC5jCmluZGV4IDgyMzcxYzYwZDRhYS4uYmU4OTc0Y2NmZjI0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19jb250ZXh0LmMKQEAgLTM4LDcgKzM4LDcg
QEAgbW9ja19jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlnb3RvIGVy
cl9lbmdpbmVzOwogCiAJaWYgKG5hbWUpIHsKLQkJc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0
OworCQlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQ7CiAKIAkJY3R4LT5uYW1lID0ga3N0cmR1cChu
YW1lLCBHRlBfS0VSTkVMKTsKIAkJaWYgKCFjdHgtPm5hbWUpCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCmluZGV4IDU3OWQ2MDVmYmZjMy4uYjhmNTU5MmRhMThmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTYyMSw3ICsxNjIxLDcgQEAgc3RhdGljIGludCBnZW44
X2VtaXRfaW5pdF9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogc3RhdGljIGlu
dCBlbWl0X3BkcHMoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7CiAJY29uc3Qgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqIGNvbnN0IGVuZ2luZSA9IHJxLT5lbmdpbmU7Ci0Jc3RydWN0IGk5MTVf
aHdfcHBndHQgKiBjb25zdCBwcGd0dCA9CisJc3RydWN0IGk5MTVfcHBndHQgKiBjb25zdCBwcGd0
dCA9CiAJCWk5MTVfdm1fdG9fcHBndHQocnEtPmdlbV9jb250ZXh0LT52bSk7CiAJaW50IGVyciwg
aTsKIAl1MzIgKmNzOwpAQCAtMjgyNSw3ICsyODI1LDcgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3Rz
X2luaXRfcmVnX3N0YXRlKHUzMiAqcmVncywKIAkJCQkgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKIAkJCQkgICAgIHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQogewotCXN0cnVj
dCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQoY2UtPmdlbV9jb250ZXh0
LT52bSk7CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dChjZS0+
Z2VtX2NvbnRleHQtPnZtKTsKIAlib29sIHJjcyA9IGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NM
QVNTOwogCXUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCA2MzY5Y2M1ZTIyYjQuLmM4MzRkMDE2Yzk2
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwpAQCAtMTUw
OCw4ICsxNTA4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0X29wcyByaW5n
X2NvbnRleHRfb3BzID0gewogCS5kZXN0cm95ID0gcmluZ19jb250ZXh0X2Rlc3Ryb3ksCiB9Owog
Ci1zdGF0aWMgaW50IGxvYWRfcGRfZGlyKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAotCQkgICAg
ICAgY29uc3Qgc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0KQorc3RhdGljIGludCBsb2FkX3Bk
X2RpcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgY29uc3Qgc3RydWN0IGk5MTVfcHBndHQgKnBw
Z3R0KQogewogCWNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKiBjb25zdCBlbmdpbmUgPSBy
cS0+ZW5naW5lOwogCXUzMiAqY3M7CkBAIC0xNzEzLDcgKzE3MTIsNyBAQCBzdGF0aWMgaW50IHN3
aXRjaF9jb250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCUdFTV9CVUdfT04oSEFTX0VY
RUNMSVNUUyhycS0+aTkxNSkpOwogCiAJaWYgKHZtKSB7Ci0JCXN0cnVjdCBpOTE1X2h3X3BwZ3R0
ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQodm0pOworCQlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBn
dHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKIAkJaW50IGxvb3BzOwogCiAJCS8qCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMKaW5kZXggOTIyZTEzNzc3ZDJlLi5lMzAxZWZiMThkNDUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9zY2hlZHVsZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMKQEAgLTM2OCw3ICszNjgsNyBAQCBz
dGF0aWMgaW50IHNldF9jb250ZXh0X3BwZ3R0X2Zyb21fc2hhZG93KHN0cnVjdCBpbnRlbF92Z3B1
X3dvcmtsb2FkICp3b3JrbG9hZCwKIAkJCQkJIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgp
CiB7CiAJc3RydWN0IGludGVsX3ZncHVfbW0gKm1tID0gd29ya2xvYWQtPnNoYWRvd19tbTsKLQlz
dHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KGN0eC0+dm0pOwor
CXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQoY3R4LT52bSk7CiAJ
aW50IGkgPSAwOwogCiAJaWYgKG1tLT50eXBlICE9IElOVEVMX0dWVF9NTV9QUEdUVCB8fCAhbW0t
PnBwZ3R0X21tLnNoYWRvd2VkKQpAQCAtMTEyMyw3ICsxMTIzLDcgQEAgaW50IGludGVsX2d2dF9p
bml0X3dvcmtsb2FkX3NjaGVkdWxlcihzdHJ1Y3QgaW50ZWxfZ3Z0ICpndnQpCiAKIHN0YXRpYyB2
b2lkCiBpOTE1X2NvbnRleHRfcHBndHRfcm9vdF9yZXN0b3JlKHN0cnVjdCBpbnRlbF92Z3B1X3N1
Ym1pc3Npb24gKnMsCi0JCQkJc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0KQorCQkJCXN0cnVj
dCBpOTE1X3BwZ3R0ICpwcGd0dCkKIHsKIAlpbnQgaTsKIApAQCAtMTE4MSw3ICsxMTgxLDcgQEAg
dm9pZCBpbnRlbF92Z3B1X3Jlc2V0X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX3ZncHUgKnZncHUs
CiAKIHN0YXRpYyB2b2lkCiBpOTE1X2NvbnRleHRfcHBndHRfcm9vdF9zYXZlKHN0cnVjdCBpbnRl
bF92Z3B1X3N1Ym1pc3Npb24gKnMsCi0JCQkgICAgIHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0
dCkKKwkJCSAgICAgc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQogewogCWludCBpOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAppbmRleCA2ZTdlNzJhYjUzNjAuLjBlYTdmNzhhZTIyNyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCkBAIC03OTIsNyArNzkyLDcgQEAgc3RydWN0IGk5MTVfZ2VtX21t
IHsKIAlzdHJ1Y3QgdmZzbW91bnQgKmdlbWZzOwogCiAJLyoqIFBQR1RUIHVzZWQgZm9yIGFsaWFz
aW5nIHRoZSBQUEdUVCB3aXRoIHRoZSBHVFQgKi8KLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqYWxp
YXNpbmdfcHBndHQ7CisJc3RydWN0IGk5MTVfcHBndHQgKmFsaWFzaW5nX3BwZ3R0OwogCiAJc3Ry
dWN0IG5vdGlmaWVyX2Jsb2NrIG9vbV9ub3RpZmllcjsKIAlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sg
dm1hcF9ub3RpZmllcjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNjllYjBi
Zjc2NzBiLi41ZjcyNjhjMzNhYzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBA
IC04MDMsNyArODAzLDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9pbml0aWFsaXplX3BtbDQoc3RydWN0
IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAgKiBjb250ZXh0IHN3aXRjaGluZy9leGVjbGlzdCBx
dWV1aW5nIGNvZGUgdGFrZXMgZXh0cmEgc3RlcHMKICAqIHRvIGVuc3VyZSB0aGF0IHRsYnMgYXJl
IGZsdXNoZWQuCiAgKi8KLXN0YXRpYyB2b2lkIG1hcmtfdGxic19kaXJ0eShzdHJ1Y3QgaTkxNV9o
d19wcGd0dCAqcHBndHQpCitzdGF0aWMgdm9pZCBtYXJrX3RsYnNfZGlydHkoc3RydWN0IGk5MTVf
cHBndHQgKnBwZ3R0KQogewogCXBwZ3R0LT5wZF9kaXJ0eV9lbmdpbmVzID0gQUxMX0VOR0lORVM7
CiB9CkBAIC05NDQsNyArOTQ0LDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9zZXRfcG1sNGUo
c3RydWN0IGk5MTVfcG1sNCAqcG1sNCwKIHN0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYXJfNGx2
bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCQkgIHU2NCBzdGFydCwgdTY0IGxl
bmd0aCkKIHsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0
KHZtKTsKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsK
IAlzdHJ1Y3QgaTkxNV9wbWw0ICpwbWw0ID0gJnBwZ3R0LT5wbWw0OwogCXN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5X3BvaW50ZXIgKnBkcDsKIAl1bnNpZ25lZCBpbnQgcG1sNGU7CkBAIC05OTcs
NyArOTk3LDcgQEAgc3RhdGljIF9fYWx3YXlzX2lubGluZSBzdHJ1Y3QgZ2VuOF9pbnNlcnRfcHRl
IGdlbjhfaW5zZXJ0X3B0ZSh1NjQgc3RhcnQpCiB9CiAKIHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUg
Ym9vbAotZ2VuOF9wcGd0dF9pbnNlcnRfcHRlX2VudHJpZXMoc3RydWN0IGk5MTVfaHdfcHBndHQg
KnBwZ3R0LAorZ2VuOF9wcGd0dF9pbnNlcnRfcHRlX2VudHJpZXMoc3RydWN0IGk5MTVfcHBndHQg
KnBwZ3R0LAogCQkJICAgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnlfcG9pbnRlciAqcGRw
LAogCQkJICAgICAgc3RydWN0IHNndF9kbWEgKml0ZXIsCiAJCQkgICAgICBzdHJ1Y3QgZ2VuOF9p
bnNlcnRfcHRlICppZHgsCkBAIC0xMDU4LDcgKzEwNTgsNyBAQCBzdGF0aWMgdm9pZCBnZW44X3Bw
Z3R0X2luc2VydF8zbHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkJCSAgIGVu
dW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKIAkJCQkgICB1MzIgZmxhZ3MpCiB7Ci0J
c3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CisJc3Ry
dWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CiAJc3RydWN0IHNn
dF9kbWEgaXRlciA9IHNndF9kbWEodm1hKTsKIAlzdHJ1Y3QgZ2VuOF9pbnNlcnRfcHRlIGlkeCA9
IGdlbjhfaW5zZXJ0X3B0ZSh2bWEtPm5vZGUuc3RhcnQpOwogCkBAIC0xMTkyLDcgKzExOTIsNyBA
QCBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2luc2VydF80bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtLAogCQkJCSAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKIAkJ
CQkgICB1MzIgZmxhZ3MpCiB7Ci0Jc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0ID0gaTkxNV92
bV90b19wcGd0dCh2bSk7CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19w
cGd0dCh2bSk7CiAJc3RydWN0IHNndF9kbWEgaXRlciA9IHNndF9kbWEodm1hKTsKIAlzdHJ1Y3Qg
aTkxNV9wYWdlX2RpcmVjdG9yeV9wb2ludGVyICoqcGRwcyA9IHBwZ3R0LT5wbWw0LnBkcHM7CiAK
QEAgLTEyOTEsNyArMTI5MSw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9pbml0X3NjcmF0Y2goc3RydWN0
IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCiAJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCBn
ZW44X3BwZ3R0X25vdGlmeV92Z3Qoc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0LCBib29sIGNy
ZWF0ZSkKK3N0YXRpYyBpbnQgZ2VuOF9wcGd0dF9ub3RpZnlfdmd0KHN0cnVjdCBpOTE1X3BwZ3R0
ICpwcGd0dCwgYm9vbCBjcmVhdGUpCiB7CiAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0g
PSAmcHBndHQtPnZtOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHZtLT5p
OTE1OwpAQCAtMTM1Miw3ICsxMzUyLDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9jbGVhbnVw
XzNsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJZnJlZV9wZHAodm0sIHBkcCk7
CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYW51cF80bHZsKHN0cnVjdCBpOTE1X2h3
X3BwZ3R0ICpwcGd0dCkKK3N0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYW51cF80bHZsKHN0cnVj
dCBpOTE1X3BwZ3R0ICpwcGd0dCkKIHsKIAlpbnQgaTsKIApAQCAtMTM2OSw3ICsxMzY5LDcgQEAg
c3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9jbGVhbnVwXzRsdmwoc3RydWN0IGk5MTVfaHdfcHBndHQg
KnBwZ3R0KQogc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdm0tPmk5
MTU7Ci0Jc3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7
CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CiAKIAlp
ZiAoaW50ZWxfdmdwdV9hY3RpdmUoaTkxNSkpCiAJCWdlbjhfcHBndHRfbm90aWZ5X3ZndChwcGd0
dCwgZmFsc2UpOwpAQCAtMTUwMSw3ICsxNTAxLDcgQEAgc3RhdGljIGludCBnZW44X3BwZ3R0X2Fs
bG9jXzNsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiBzdGF0aWMgaW50IGdlbjhf
cHBndHRfYWxsb2NfNGx2bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCQkgdTY0
IHN0YXJ0LCB1NjQgbGVuZ3RoKQogewotCXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCA9IGk5
MTVfdm1fdG9fcHBndHQodm0pOworCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1f
dG9fcHBndHQodm0pOwogCXN0cnVjdCBpOTE1X3BtbDQgKnBtbDQgPSAmcHBndHQtPnBtbDQ7CiAJ
c3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnlfcG9pbnRlciAqcGRwOwogCXU2NCBmcm9tID0gc3Rh
cnQ7CkBAIC0xNTU3LDcgKzE1NTcsNyBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfNGx2
bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAlyZXR1cm4gLUVOT01FTTsKIH0KIAot
c3RhdGljIGludCBnZW44X3ByZWFsbG9jYXRlX3RvcF9sZXZlbF9wZHAoc3RydWN0IGk5MTVfaHdf
cHBndHQgKnBwZ3R0KQorc3RhdGljIGludCBnZW44X3ByZWFsbG9jYXRlX3RvcF9sZXZlbF9wZHAo
c3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQogewogCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtID0gJnBwZ3R0LT52bTsKIAlzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeV9wb2ludGVyICpw
ZHAgPSAmcHBndHQtPnBkcDsKQEAgLTE1OTAsNyArMTU5MCw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9w
cmVhbGxvY2F0ZV90b3BfbGV2ZWxfcGRwKHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCkKIH0K
IAogc3RhdGljIHZvaWQgcHBndHRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
LQkJICAgICAgIHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCkKKwkJICAgICAgIHN0cnVjdCBp
OTE1X3BwZ3R0ICpwcGd0dCkKIHsKIAlwcGd0dC0+dm0uaTkxNSA9IGk5MTU7CiAJcHBndHQtPnZt
LmRtYSA9ICZpOTE1LT5kcm0ucGRldi0+ZGV2OwpAQCAtMTYxMSw5ICsxNjExLDkgQEAgc3RhdGlj
IHZvaWQgcHBndHRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICAqIHNwYWNl
LgogICoKICAqLwotc3RhdGljIHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpnZW44X3BwZ3R0X2NyZWF0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0
dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7Ci0J
c3RydWN0IGk5MTVfaHdfcHBndHQgKnBwZ3R0OworCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dDsK
IAlpbnQgZXJyOwogCiAJcHBndHQgPSBremFsbG9jKHNpemVvZigqcHBndHQpLCBHRlBfS0VSTkVM
KTsKQEAgLTE2ODMsNyArMTY4Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9od19wcGd0dCAqZ2Vu
OF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB9CiAKIC8qIFdy
aXRlIHBkZSAoaW5kZXgpIGZyb20gdGhlIHBhZ2UgZGlyZWN0b3J5IEBwZCB0byB0aGUgcGFnZSB0
YWJsZSBAcHQgKi8KLXN0YXRpYyBpbmxpbmUgdm9pZCBnZW42X3dyaXRlX3BkZShjb25zdCBzdHJ1
Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQsCitzdGF0aWMgaW5saW5lIHZvaWQgZ2VuNl93cml0ZV9w
ZGUoY29uc3Qgc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0LAogCQkJCSAgY29uc3QgdW5zaWduZWQg
aW50IHBkZSwKIAkJCQkgIGNvbnN0IHN0cnVjdCBpOTE1X3BhZ2VfdGFibGUgKnB0KQogewpAQCAt
MTc0MCw3ICsxNzQwLDcgQEAgc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9lbmFibGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVhcl9y
YW5nZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCQkgICB1NjQgc3RhcnQsIHU2
NCBsZW5ndGgpCiB7Ci0Jc3RydWN0IGdlbjZfaHdfcHBndHQgKnBwZ3R0ID0gdG9fZ2VuNl9wcGd0
dChpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7CisJc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0ID0gdG9f
Z2VuNl9wcGd0dChpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7CiAJdW5zaWduZWQgaW50IGZpcnN0X2Vu
dHJ5ID0gc3RhcnQgLyBJOTE1X0dUVF9QQUdFX1NJWkU7CiAJdW5zaWduZWQgaW50IHBkZSA9IGZp
cnN0X2VudHJ5IC8gR0VONl9QVEVTOwogCXVuc2lnbmVkIGludCBwdGUgPSBmaXJzdF9lbnRyeSAl
IEdFTjZfUFRFUzsKQEAgLTE3ODAsNyArMTc4MCw3IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRf
aW5zZXJ0X2VudHJpZXMoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCQkJICAgICAg
ZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAogCQkJCSAgICAgIHUzMiBmbGFncykK
IHsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsK
KwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKIAl1bnNp
Z25lZCBmaXJzdF9lbnRyeSA9IHZtYS0+bm9kZS5zdGFydCAvIEk5MTVfR1RUX1BBR0VfU0laRTsK
IAl1bnNpZ25lZCBhY3RfcHQgPSBmaXJzdF9lbnRyeSAvIEdFTjZfUFRFUzsKIAl1bnNpZ25lZCBh
Y3RfcHRlID0gZmlyc3RfZW50cnkgJSBHRU42X1BURVM7CkBAIC0xODE4LDcgKzE4MTgsNyBAQCBz
dGF0aWMgdm9pZCBnZW42X3BwZ3R0X2luc2VydF9lbnRyaWVzKHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtLAogc3RhdGljIGludCBnZW42X2FsbG9jX3ZhX3JhbmdlKHN0cnVjdCBpOTE1X2Fk
ZHJlc3Nfc3BhY2UgKnZtLAogCQkJICAgICAgIHU2NCBzdGFydCwgdTY0IGxlbmd0aCkKIHsKLQlz
dHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBn
dHQodm0pKTsKKwlzdHJ1Y3QgZ2VuNl9wcGd0dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGk5MTVf
dm1fdG9fcHBndHQodm0pKTsKIAlzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpwdDsKIAlpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKIAl1NjQgZnJvbSA9IHN0YXJ0OwpAQCAtMTg3OCw3ICsxODc4LDcg
QEAgc3RhdGljIGludCBnZW42X2FsbG9jX3ZhX3JhbmdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAogCXJldHVybiAtRU5PTUVNOwogfQogCi1zdGF0aWMgaW50IGdlbjZfcHBndHRfaW5p
dF9zY3JhdGNoKHN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0dCkKK3N0YXRpYyBpbnQgZ2VuNl9w
cGd0dF9pbml0X3NjcmF0Y2goc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0KQogewogCXN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKiBjb25zdCB2bSA9ICZwcGd0dC0+YmFzZS52bTsKIAlzdHJ1Y3Qg
aTkxNV9wYWdlX3RhYmxlICp1bnVzZWQ7CkBAIC0xOTEzLDcgKzE5MTMsNyBAQCBzdGF0aWMgdm9p
ZCBnZW42X3BwZ3R0X2ZyZWVfc2NyYXRjaChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkK
IAljbGVhbnVwX3NjcmF0Y2hfcGFnZSh2bSk7CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjZfcHBndHRf
ZnJlZV9wZChzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQpCitzdGF0aWMgdm9pZCBnZW42X3Bw
Z3R0X2ZyZWVfcGQoc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0KQogewogCXN0cnVjdCBpOTE1X3Bh
Z2VfdGFibGUgKnB0OwogCXUzMiBwZGU7CkBAIC0xOTcxLDcgKzE5NzEsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGk5MTVfdm1hX29wcyBub3Bfdm1hX29wcyA9IHsKIAogc3RhdGljIHZvaWQgZ2Vu
Nl9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogewotCXN0cnVj
dCBnZW42X2h3X3BwZ3R0ICpwcGd0dCA9IHRvX2dlbjZfcHBndHQoaTkxNV92bV90b19wcGd0dCh2
bSkpOworCXN0cnVjdCBnZW42X3BwZ3R0ICpwcGd0dCA9IHRvX2dlbjZfcHBndHQoaTkxNV92bV90
b19wcGd0dCh2bSkpOwogCXN0cnVjdCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayAqd29yayA9IHBw
Z3R0LT53b3JrOwogCiAJLyogRklYTUUgcmVtb3ZlIHRoZSBzdHJ1Y3RfbXV0ZXggdG8gYnJpbmcg
dGhlIGxvY2tpbmcgdW5kZXIgY29udHJvbCAqLwpAQCAtMjAwMiw3ICsyMDAyLDcgQEAgc3RhdGlj
IGludCBwZF92bWFfYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKIAkJICAgICAgIHUzMiB1bnVz
ZWQpCiB7CiAJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9IGk5MTVfdm1fdG9fZ2d0dCh2bWEtPnZt
KTsKLQlzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQgPSB2bWEtPnByaXZhdGU7CisJc3RydWN0
IGdlbjZfcHBndHQgKnBwZ3R0ID0gdm1hLT5wcml2YXRlOwogCXUzMiBnZ3R0X29mZnNldCA9IGk5
MTVfZ2d0dF9vZmZzZXQodm1hKSAvIEk5MTVfR1RUX1BBR0VfU0laRTsKIAlzdHJ1Y3QgaTkxNV9w
YWdlX3RhYmxlICpwdDsKIAl1bnNpZ25lZCBpbnQgcGRlOwpAQCAtMjAyMSw3ICsyMDIxLDcgQEAg
c3RhdGljIGludCBwZF92bWFfYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKIAogc3RhdGljIHZv
aWQgcGRfdm1hX3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKLQlzdHJ1Y3QgZ2VuNl9o
d19wcGd0dCAqcHBndHQgPSB2bWEtPnByaXZhdGU7CisJc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0
ID0gdm1hLT5wcml2YXRlOwogCXN0cnVjdCBpOTE1X3BhZ2VfdGFibGUgKiBjb25zdCBzY3JhdGNo
X3B0ID0gcHBndHQtPmJhc2Uudm0uc2NyYXRjaF9wdDsKIAlzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxl
ICpwdDsKIAl1bnNpZ25lZCBpbnQgcGRlOwpAQCAtMjA0OCw3ICsyMDQ4LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpOTE1X3ZtYV9vcHMgcGRfdm1hX29wcyA9IHsKIAkudW5iaW5kX3ZtYSA9IHBk
X3ZtYV91bmJpbmQsCiB9OwogCi1zdGF0aWMgc3RydWN0IGk5MTVfdm1hICpwZF92bWFfY3JlYXRl
KHN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0dCwgaW50IHNpemUpCitzdGF0aWMgc3RydWN0IGk5
MTVfdm1hICpwZF92bWFfY3JlYXRlKHN0cnVjdCBnZW42X3BwZ3R0ICpwcGd0dCwgaW50IHNpemUp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBwcGd0dC0+YmFzZS52bS5pOTE1
OwogCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKQEAgLTIwODMsOSArMjA4
Myw5IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKnBkX3ZtYV9jcmVhdGUoc3RydWN0IGdlbjZf
aHdfcHBndHQgKnBwZ3R0LCBpbnQgc2l6ZSkKIAlyZXR1cm4gdm1hOwogfQogCi1pbnQgZ2VuNl9w
cGd0dF9waW4oc3RydWN0IGk5MTVfaHdfcHBndHQgKmJhc2UpCitpbnQgZ2VuNl9wcGd0dF9waW4o
c3RydWN0IGk5MTVfcHBndHQgKmJhc2UpCiB7Ci0Jc3RydWN0IGdlbjZfaHdfcHBndHQgKnBwZ3R0
ID0gdG9fZ2VuNl9wcGd0dChiYXNlKTsKKwlzdHJ1Y3QgZ2VuNl9wcGd0dCAqcHBndHQgPSB0b19n
ZW42X3BwZ3R0KGJhc2UpOwogCWludCBlcnI7CiAKIAlHRU1fQlVHX09OKHBwZ3R0LT5iYXNlLnZt
LmNsb3NlZCk7CkBAIC0yMTE3LDkgKzIxMTcsOSBAQCBpbnQgZ2VuNl9wcGd0dF9waW4oc3RydWN0
IGk5MTVfaHdfcHBndHQgKmJhc2UpCiAJcmV0dXJuIGVycjsKIH0KIAotdm9pZCBnZW42X3BwZ3R0
X3VucGluKHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpiYXNlKQordm9pZCBnZW42X3BwZ3R0X3VucGlu
KHN0cnVjdCBpOTE1X3BwZ3R0ICpiYXNlKQogewotCXN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0
dCA9IHRvX2dlbjZfcHBndHQoYmFzZSk7CisJc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0ID0gdG9f
Z2VuNl9wcGd0dChiYXNlKTsKIAogCUdFTV9CVUdfT04oIXBwZ3R0LT5waW5fY291bnQpOwogCWlm
ICgtLXBwZ3R0LT5waW5fY291bnQpCkBAIC0yMTI4LDkgKzIxMjgsOSBAQCB2b2lkIGdlbjZfcHBn
dHRfdW5waW4oc3RydWN0IGk5MTVfaHdfcHBndHQgKmJhc2UpCiAJaTkxNV92bWFfdW5waW4ocHBn
dHQtPnZtYSk7CiB9CiAKLXZvaWQgZ2VuNl9wcGd0dF91bnBpbl9hbGwoc3RydWN0IGk5MTVfaHdf
cHBndHQgKmJhc2UpCit2b2lkIGdlbjZfcHBndHRfdW5waW5fYWxsKHN0cnVjdCBpOTE1X3BwZ3R0
ICpiYXNlKQogewotCXN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0dCA9IHRvX2dlbjZfcHBndHQo
YmFzZSk7CisJc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0ID0gdG9fZ2VuNl9wcGd0dChiYXNlKTsK
IAogCWlmICghcHBndHQtPnBpbl9jb3VudCkKIAkJcmV0dXJuOwpAQCAtMjEzOSwxMCArMjEzOSwx
MCBAQCB2b2lkIGdlbjZfcHBndHRfdW5waW5fYWxsKHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpiYXNl
KQogCWk5MTVfdm1hX3VucGluKHBwZ3R0LT52bWEpOwogfQogCi1zdGF0aWMgc3RydWN0IGk5MTVf
aHdfcHBndHQgKmdlbjZfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQorc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW42X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdHJ1Y3QgaTkxNV9nZ3R0ICogY29uc3QgZ2d0dCA9
ICZpOTE1LT5nZ3R0OwotCXN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0dDsKKwlzdHJ1Y3QgZ2Vu
Nl9wcGd0dCAqcHBndHQ7CiAJaW50IGVycjsKIAogCXBwZ3R0ID0ga3phbGxvYyhzaXplb2YoKnBw
Z3R0KSwgR0ZQX0tFUk5FTCk7CkBAIC0yMjMxLDggKzIyMzEsOCBAQCBpbnQgaTkxNV9wcGd0dF9p
bml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1cm4gMDsKIH0K
IAotc3RhdGljIHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICoKLV9faHdfcHBndHRfY3JlYXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICoKK19f
cHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCWlmIChJTlRF
TF9HRU4oaTkxNSkgPCA4KQogCQlyZXR1cm4gZ2VuNl9wcGd0dF9jcmVhdGUoaTkxNSk7CkBAIC0y
MjQwLDEyICsyMjQwLDEyIEBAIF9faHdfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCQlyZXR1cm4gZ2VuOF9wcGd0dF9jcmVhdGUoaTkxNSk7CiB9CiAKLXN0cnVj
dCBpOTE1X2h3X3BwZ3R0ICoKK3N0cnVjdCBpOTE1X3BwZ3R0ICoKIGk5MTVfcHBndHRfY3JlYXRl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewotCXN0cnVjdCBpOTE1X2h3X3BwZ3R0
ICpwcGd0dDsKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQ7CiAKLQlwcGd0dCA9IF9faHdfcHBn
dHRfY3JlYXRlKGk5MTUpOworCXBwZ3R0ID0gX19wcGd0dF9jcmVhdGUoaTkxNSk7CiAJaWYgKElT
X0VSUihwcGd0dCkpCiAJCXJldHVybiBwcGd0dDsKIApAQCAtMjY1Nyw3ICsyNjU3LDcgQEAgc3Rh
dGljIGludCBhbGlhc2luZ19ndHRfYmluZF92bWEoc3RydWN0IGk5MTVfdm1hICp2bWEsCiAJCXB0
ZV9mbGFncyB8PSBQVEVfUkVBRF9PTkxZOwogCiAJaWYgKGZsYWdzICYgSTkxNV9WTUFfTE9DQUxf
QklORCkgewotCQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqYXBwZ3R0ID0gaTkxNS0+bW0uYWxpYXNp
bmdfcHBndHQ7CisJCXN0cnVjdCBpOTE1X3BwZ3R0ICphcHBndHQgPSBpOTE1LT5tbS5hbGlhc2lu
Z19wcGd0dDsKIAogCQlpZiAoISh2bWEtPmZsYWdzICYgSTkxNV9WTUFfTE9DQUxfQklORCkpIHsK
IAkJCXJldCA9IGFwcGd0dC0+dm0uYWxsb2NhdGVfdmFfcmFuZ2UoJmFwcGd0dC0+dm0sCkBAIC0y
NzU2LDcgKzI3NTYsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X2d0dF9jb2xvcl9hZGp1c3QoY29uc3Qg
c3RydWN0IGRybV9tbV9ub2RlICpub2RlLAogc3RhdGljIGludCBpbml0X2FsaWFzaW5nX3BwZ3R0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0cnVjdCBpOTE1X2dndHQgKmdn
dHQgPSAmaTkxNS0+Z2d0dDsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQ7CisJc3RydWN0
IGk5MTVfcHBndHQgKnBwZ3R0OwogCWludCBlcnI7CiAKIAlwcGd0dCA9IGk5MTVfcHBndHRfY3Jl
YXRlKGk5MTUpOwpAQCAtMjc5Niw3ICsyNzk2LDcgQEAgc3RhdGljIGludCBpbml0X2FsaWFzaW5n
X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogc3RhdGljIHZvaWQgZmluaV9h
bGlhc2luZ19wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdHJ1Y3Qg
aTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUtPmdndHQ7Ci0Jc3RydWN0IGk5MTVfaHdfcHBndHQgKnBw
Z3R0OworCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dDsKIAogCXBwZ3R0ID0gZmV0Y2hfYW5kX3pl
cm8oJmk5MTUtPm1tLmFsaWFzaW5nX3BwZ3R0KTsKIAlpZiAoIXBwZ3R0KQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuaAppbmRleCAzYjYzMzZlZjY0ZjIuLjg5NDM3ZDBhNzIxYyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTQxMiw3ICs0MTIsNyBAQCBzdHJ1Y3QgaTkx
NV9nZ3R0IHsKIAlzdHJ1Y3QgZHJtX21tX25vZGUgdWNfZnc7CiB9OwogCi1zdHJ1Y3QgaTkxNV9o
d19wcGd0dCB7CitzdHJ1Y3QgaTkxNV9wcGd0dCB7CiAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSB2bTsKIAogCWludGVsX2VuZ2luZV9tYXNrX3QgcGRfZGlydHlfZW5naW5lczsKQEAgLTQyMyw4
ICs0MjMsOCBAQCBzdHJ1Y3QgaTkxNV9od19wcGd0dCB7CiAJfTsKIH07CiAKLXN0cnVjdCBnZW42
X2h3X3BwZ3R0IHsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCBiYXNlOworc3RydWN0IGdlbjZfcHBn
dHQgeworCXN0cnVjdCBpOTE1X3BwZ3R0IGJhc2U7CiAKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsK
IAlnZW42X3B0ZV90IF9faW9tZW0gKnBkX2FkZHI7CkBAIC00MzUsMTEgKzQzNSwxMSBAQCBzdHJ1
Y3QgZ2VuNl9od19wcGd0dCB7CiAJc3RydWN0IGdlbjZfcHBndHRfY2xlYW51cF93b3JrICp3b3Jr
OwogfTsKIAotI2RlZmluZSBfX3RvX2dlbjZfcHBndHQoYmFzZSkgY29udGFpbmVyX29mKGJhc2Us
IHN0cnVjdCBnZW42X2h3X3BwZ3R0LCBiYXNlKQorI2RlZmluZSBfX3RvX2dlbjZfcHBndHQoYmFz
ZSkgY29udGFpbmVyX29mKGJhc2UsIHN0cnVjdCBnZW42X3BwZ3R0LCBiYXNlKQogCi1zdGF0aWMg
aW5saW5lIHN0cnVjdCBnZW42X2h3X3BwZ3R0ICp0b19nZW42X3BwZ3R0KHN0cnVjdCBpOTE1X2h3
X3BwZ3R0ICpiYXNlKQorc3RhdGljIGlubGluZSBzdHJ1Y3QgZ2VuNl9wcGd0dCAqdG9fZ2VuNl9w
cGd0dChzdHJ1Y3QgaTkxNV9wcGd0dCAqYmFzZSkKIHsKLQlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yo
c3RydWN0IGdlbjZfaHdfcHBndHQsIGJhc2UpKTsKKwlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3Ry
dWN0IGdlbjZfcHBndHQsIGJhc2UpKTsKIAlyZXR1cm4gX190b19nZW42X3BwZ3R0KGJhc2UpOwog
fQogCkBAIC01NzUsNyArNTc1LDcgQEAgc3RhdGljIGlubGluZSB1NjQgZ2VuOF9wdGVfY291bnQo
dTY0IGFkZHJlc3MsIHU2NCBsZW5ndGgpCiB9CiAKIHN0YXRpYyBpbmxpbmUgZG1hX2FkZHJfdAot
aTkxNV9wYWdlX2Rpcl9kbWFfYWRkcihjb25zdCBzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQs
IGNvbnN0IHVuc2lnbmVkIG4pCitpOTE1X3BhZ2VfZGlyX2RtYV9hZGRyKGNvbnN0IHN0cnVjdCBp
OTE1X3BwZ3R0ICpwcGd0dCwgY29uc3QgdW5zaWduZWQgaW50IG4pCiB7CiAJcmV0dXJuIHB4X2Rt
YShwcGd0dC0+cGRwLnBhZ2VfZGlyZWN0b3J5W25dKTsKIH0KQEAgLTU4OCwxMiArNTg4LDEyIEBA
IGk5MTVfdm1fdG9fZ2d0dChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlyZXR1cm4g
Y29udGFpbmVyX29mKHZtLCBzdHJ1Y3QgaTkxNV9nZ3R0LCB2bSk7CiB9CiAKLXN0YXRpYyBpbmxp
bmUgc3RydWN0IGk5MTVfaHdfcHBndHQgKgorc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9wcGd0
dCAqCiBpOTE1X3ZtX3RvX3BwZ3R0KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogewot
CUJVSUxEX0JVR19PTihvZmZzZXRvZihzdHJ1Y3QgaTkxNV9od19wcGd0dCwgdm0pKTsKKwlCVUlM
RF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGk5MTVfcHBndHQsIHZtKSk7CiAJR0VNX0JVR19PTihp
OTE1X2lzX2dndHQodm0pKTsKLQlyZXR1cm4gY29udGFpbmVyX29mKHZtLCBzdHJ1Y3QgaTkxNV9o
d19wcGd0dCwgdm0pOworCXJldHVybiBjb250YWluZXJfb2Yodm0sIHN0cnVjdCBpOTE1X3BwZ3R0
LCB2bSk7CiB9CiAKICNkZWZpbmUgSU5URUxfTUFYX1BQQVRfRU5UUklFUyA4CkBAIC02MzcsNyAr
NjM3LDcgQEAgdm9pZCBpOTE1X2dndHRfY2xlYW51cF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpOwogCiBpbnQgaTkxNV9wcGd0dF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiAKLXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICppOTE1X3BwZ3R0X2Ny
ZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOworc3RydWN0IGk5MTVfcHBn
dHQgKmk5MTVfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
CiAKIHN0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqCiBpOTE1X3ZtX2dl
dChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKQEAgLTY1Myw5ICs2NTMsOSBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgaTkxNV92bV9wdXQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0p
CiAJa3JlZl9wdXQoJnZtLT5yZWYsIGk5MTVfdm1fcmVsZWFzZSk7CiB9CiAKLWludCBnZW42X3Bw
Z3R0X3BpbihzdHJ1Y3QgaTkxNV9od19wcGd0dCAqYmFzZSk7Ci12b2lkIGdlbjZfcHBndHRfdW5w
aW4oc3RydWN0IGk5MTVfaHdfcHBndHQgKmJhc2UpOwotdm9pZCBnZW42X3BwZ3R0X3VucGluX2Fs
bChzdHJ1Y3QgaTkxNV9od19wcGd0dCAqYmFzZSk7CitpbnQgZ2VuNl9wcGd0dF9waW4oc3RydWN0
IGk5MTVfcHBndHQgKmJhc2UpOwordm9pZCBnZW42X3BwZ3R0X3VucGluKHN0cnVjdCBpOTE1X3Bw
Z3R0ICpiYXNlKTsKK3ZvaWQgZ2VuNl9wcGd0dF91bnBpbl9hbGwoc3RydWN0IGk5MTVfcHBndHQg
KmJhc2UpOwogCiB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBp
bmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKaW5kZXggMzVkYjY3NzU3NDMyLi5hNTU3
ZTc3ZDljNTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1f
Z3R0LmMKQEAgLTE0OCw3ICsxNDgsNyBAQCBmYWtlX2RtYV9vYmplY3Qoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsIHU2NCBzaXplKQogc3RhdGljIGludCBpZ3RfcHBndHRfYWxsb2Modm9p
ZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGFyZzsKLQlz
dHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQ7CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0Owog
CXU2NCBzaXplLCBsYXN0LCBsaW1pdDsKIAlpbnQgZXJyID0gMDsKIApAQCAtMTU3LDcgKzE1Nyw3
IEBAIHN0YXRpYyBpbnQgaWd0X3BwZ3R0X2FsbG9jKHZvaWQgKmFyZykKIAlpZiAoIUhBU19QUEdU
VChkZXZfcHJpdikpCiAJCXJldHVybiAwOwogCi0JcHBndHQgPSBfX2h3X3BwZ3R0X2NyZWF0ZShk
ZXZfcHJpdik7CisJcHBndHQgPSBfX3BwZ3R0X2NyZWF0ZShkZXZfcHJpdik7CiAJaWYgKElTX0VS
UihwcGd0dCkpCiAJCXJldHVybiBQVFJfRVJSKHBwZ3R0KTsKIApAQCAtOTk5LDcgKzk5OSw3IEBA
IHN0YXRpYyBpbnQgZXhlcmNpc2VfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogCQkJCSAgICAgIHVuc2lnbmVkIGxvbmcgZW5kX3RpbWUpKQogewogCXN0cnVjdCBkcm1f
ZmlsZSAqZmlsZTsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQ7CisJc3RydWN0IGk5MTVf
cHBndHQgKnBwZ3R0OwogCUlHVF9USU1FT1VUKGVuZF90aW1lKTsKIAlpbnQgZXJyOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2d0dC5jCmluZGV4IDllNjFjMmYwNmNjOS4u
ZjYyNWMzMDdhNDA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQu
YwpAQCAtNTUsMTEgKzU1LDkgQEAgc3RhdGljIHZvaWQgbW9ja19jbGVhbnVwKHN0cnVjdCBpOTE1
X2FkZHJlc3Nfc3BhY2UgKnZtKQogewogfQogCi1zdHJ1Y3QgaTkxNV9od19wcGd0dCAqCi1tb2Nr
X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotCSAgIGNvbnN0IGNoYXIgKm5h
bWUpCitzdHJ1Y3QgaTkxNV9wcGd0dCAqbW9ja19wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgY29uc3QgY2hhciAqbmFtZSkKIHsKLQlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBn
dHQ7CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0OwogCiAJcHBndHQgPSBremFsbG9jKHNpemVv
ZigqcHBndHQpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXBwZ3R0KQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvbW9ja19ndHQuaAppbmRleCA0MGQ1NDRiZGUxZDUuLjMzODczOTMyODZkZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmgKQEAgLTI4LDggKzI4
LDYgQEAKIHZvaWQgbW9ja19pbml0X2dndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwogdm9pZCBtb2NrX2ZpbmlfZ2d0dChzdHJ1Y3QgaTkx
NV9nZ3R0ICpnZ3R0KTsKIAotc3RydWN0IGk5MTVfaHdfcHBndHQgKgotbW9ja19wcGd0dChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkgICBjb25zdCBjaGFyICpuYW1lKTsKK3N0cnVj
dCBpOTE1X3BwZ3R0ICptb2NrX3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBj
b25zdCBjaGFyICpuYW1lKTsKIAogI2VuZGlmIC8qICFfX01PQ0tfR1RUX0ggKi8KLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
