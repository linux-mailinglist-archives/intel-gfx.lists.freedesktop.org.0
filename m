Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EF786B7F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 22:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26D46E8B9;
	Thu,  8 Aug 2019 20:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C864E6E8B9
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 20:28:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17935856-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 21:27:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 21:27:58 +0100
Message-Id: <20190808202758.10453-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190808151207.31533-1-chris@chris-wilson.co.uk>
References: <20190808151207.31533-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Defer final intel_wakeref_put to
 process context
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

QXMgd2UgbmVlZCB0byBhY3F1aXJlIGEgbXV0ZXggdG8gc2VyaWFsaXNlIHRoZSBmaW5hbAppbnRl
bF93YWtlcmVmX3B1dCwgd2UgbmVlZCB0byBlbnN1cmUgdGhhdCB3ZSBhcmUgaW4gcHJvY2VzcyBj
b250ZXh0IGF0CnRoYXQgdGltZS4gSG93ZXZlciwgd2Ugd2FudCB0byBhbGxvdyBvcGVyYXRpb24g
b24gdGhlIGludGVsX3dha2VyZWYgZnJvbQppbnNpZGUgdGltZXIgYW5kIG90aGVyIGhhcmRpcnEg
Y29udGV4dCwgd2hpY2ggbWVhbnMgdGhhdCBuZWVkIHRvIGRlZmVyCnRoYXQgZmluYWwgcHV0IHRv
IGEgd29ya3F1ZXVlLgoKSW5zaWRlIHRoZSBmaW5hbCB3YWtlcmVmIHB1dHMsIHdlIGFyZSBzYWZl
IHRvIG9wZXJhdGUgaW4gYW55IGNvbnRleHQsIGFzCndlIGFyZSBzaW1wbHkgbWFya2luZyB1cCB0
aGUgSFcgYW5kIHN0YXRlIHRyYWNraW5nIGZvciB0aGUgcG90ZW50aWFsCnNsZWVwLiBJdCdzIG9u
bHkgdGhlIHNlcmlhbGlzYXRpb24gd2l0aCB0aGUgcG90ZW50aWFsIHNsZWVwaW5nIGdldHRpbmcK
dGhhdCByZXF1aXJlcyBjYXJlZnVsIHdhaXQgYXZvaWRhbmNlLiBUaGlzIGFsbG93cyB1cyB0byBy
ZXRhaW4gdGhlCmltbWVkaWF0ZSBwcm9jZXNzaW5nIGFzIGJlZm9yZSAod2Ugb25seSBuZWVkIHRv
IHNsZWVwIG92ZXIgdGhlIHNhbWUKcmFjZXMgYXMgdGhlIGN1cnJlbnQgbXV0ZXhfbG9jaykuCgp2
MjogQWRkIGEgc2VsZnRlc3QgdG8gZW5zdXJlIHdlIGV4ZXJjaXNlIHRoZSBjb2RlIHdoaWxlIGxv
Y2tkZXAgd2F0Y2hlcy4KdjM6IFRoYXQgdGVzdCB3YXMgZXh0cmVtZWx5IGxvdWQgYW5kIGNvbXBs
YWluZWQgYWJvdXQgbWFueSB0aGluZ3MhCnY0OiBOb3QgYSB3aGFsZSEKCkJ1Z3ppbGxhOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyOTUKUmVmZXJlbmNl
czogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMjQ1ClJl
ZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTI1NgpGaXhlczogMTgzOTg5MDRjYTllICgiZHJtL2k5MTU6IE9ubHkgcmVjb3ZlciBhY3RpdmUg
ZW5naW5lcyIpCkZpeGVzOiA1MWZiZDhkZTg3ZGMgKCJkcm0vaTkxNS9wbXU6IEF0b21pY2FsbHkg
YWNxdWlyZSB0aGUgZ3RfcG0gd2FrZXJlZiIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQpJIG1pc3NlZCB0aGUgZ2l0IGFkZCB3aGFsZS4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyAgICAgICAgfCAxMyArLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jICAgICB8IDM4ICsrKy0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmggICAgIHwgMTggKystLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgICAgICAgIHwgMjggKysrLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaCAgICAgICAgIHwgMjEgKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8ICA0ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuYyAgICAgfCAyOCArKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuaCAgICAgfCAxNCArKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfcG0uYyAgfCA4MyArKysrKysrKysr
KysrKysrKysrCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMg
fCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwg
IDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgMjYg
Ky0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMgICAgICAgICAgfCA4
MiArKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYu
aCAgICAgICAgICB8IDYyICsrKysrKysrKy0tLS0tCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgNSArLQogMTYgZmlsZXMgY2hhbmdlZCwgMzAwIGluc2Vy
dGlvbnMoKyksIDEzMSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX3BtLmMKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IDcyOTIyNzAzYWY0OS4uMTdlMzYxODI0MWM1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwpAQCAtMTMwLDcgKzEzMCw5
IEBAIHN0YXRpYyBib29sIHN3aXRjaF90b19rZXJuZWxfY29udGV4dF9zeW5jKHN0cnVjdCBpbnRl
bF9ndCAqZ3QpCiAJCX0KIAl9IHdoaWxlIChpOTE1X3JldGlyZV9yZXF1ZXN0cyhndC0+aTkxNSkg
JiYgcmVzdWx0KTsKIAotCUdFTV9CVUdfT04oZ3QtPmF3YWtlKTsKKwlpZiAoaW50ZWxfZ3RfcG1f
d2FpdF9mb3JfaWRsZShndCkpCisJCXJlc3VsdCA9IGZhbHNlOworCiAJcmV0dXJuIHJlc3VsdDsK
IH0KIApAQCAtMTYxLDEzICsxNjMsNiBAQCB2b2lkIGk5MTVfZ2VtX3N1c3BlbmQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3Rf
bXV0ZXgpOwogCi0JLyoKLQkgKiBBc3NlcnQgdGhhdCB3ZSBzdWNjZXNzZnVsbHkgZmx1c2hlZCBh
bGwgdGhlIHdvcmsgYW5kCi0JICogcmVzZXQgdGhlIEdQVSBiYWNrIHRvIGl0cyBpZGxlLCBsb3cg
cG93ZXIgc3RhdGUuCi0JICovCi0JR0VNX0JVR19PTihpOTE1LT5ndC5hd2FrZSk7Ci0JZmx1c2hf
d29yaygmaTkxNS0+Z2VtLmlkbGVfd29yayk7Ci0KIAljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMo
Jmk5MTUtPmd0LmhhbmdjaGVjay53b3JrKTsKIAogCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVj
dHMoaTkxNSk7CkBAIC0yNDQsOCArMjM5LDYgQEAgdm9pZCBpOTE1X2dlbV9yZXN1bWUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJR0VNX1RSQUNFKCJcbiIpOwogCi0JV0FSTl9P
TihpOTE1LT5ndC5hd2FrZSk7Ci0KIAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4
KTsKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCgmaTkxNS0+dW5jb3JlLCBGT1JDRVdBS0Vf
QUxMKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA4
ZDQ0ZDBkOGE3NTguLjYzNGVmNDViNzdkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKQEAgLTE1NzcsNSArMTU3Nyw2IEBAIGludGVsX2VuZ2luZV9maW5kX2Fj
dGl2ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogI2lmIElTX0VO
QUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQogI2luY2x1ZGUgIm1vY2tfZW5naW5lLmMi
CisjaW5jbHVkZSAic2VsZnRlc3RfZW5naW5lLmMiCiAjaW5jbHVkZSAic2VsZnRlc3RfZW5naW5l
X2NzLmMiCiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMK
aW5kZXggMDMzNjIwNDk4OGQ2Li42YjE1ZTMzMzVkZDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC0zNywyOCArMzcsNiBAQCBzdGF0aWMgaW50IF9fZW5n
aW5lX3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJcmV0dXJuIDA7CiB9CiAKLXZv
aWQgaW50ZWxfZW5naW5lX3BtX2dldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17
Ci0JaW50ZWxfd2FrZXJlZl9nZXQoJmVuZ2luZS0+aTkxNS0+cnVudGltZV9wbSwgJmVuZ2luZS0+
d2FrZXJlZiwgX19lbmdpbmVfdW5wYXJrKTsKLX0KLQotdm9pZCBpbnRlbF9lbmdpbmVfcGFyayhz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17Ci0JLyoKLQkgKiBXZSBhcmUgY29tbWl0
dGVkIG5vdyB0byBwYXJraW5nIHRoaXMgZW5naW5lLCBtYWtlIHN1cmUgdGhlcmUKLQkgKiB3aWxs
IGJlIG5vIG1vcmUgaW50ZXJydXB0cyBhcnJpdmluZyBsYXRlciBhbmQgdGhlIGVuZ2luZQotCSAq
IGlzIHRydWx5IGlkbGUuCi0JICovCi0JaWYgKHdhaXRfZm9yKGludGVsX2VuZ2luZV9pc19pZGxl
KGVuZ2luZSksIDEwKSkgewotCQlzdHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9kZWJ1Z19wcmlu
dGVyKF9fZnVuY19fKTsKLQotCQlkZXZfZXJyKGVuZ2luZS0+aTkxNS0+ZHJtLmRldiwKLQkJCSIl
cyBpcyBub3QgaWRsZSBiZWZvcmUgcGFya2luZ1xuIiwKLQkJCWVuZ2luZS0+bmFtZSk7Ci0JCWlu
dGVsX2VuZ2luZV9kdW1wKGVuZ2luZSwgJnAsIE5VTEwpOwotCX0KLX0KLQogc3RhdGljIGJvb2wg
c3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IHsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKQEAgLTEzNiwxMiArMTE0LDE4IEBAIHN0YXRp
YyBpbnQgX19lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJcmV0dXJuIDA7
CiB9CiAKLXZvaWQgaW50ZWxfZW5naW5lX3BtX3B1dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCi17Ci0JaW50ZWxfd2FrZXJlZl9wdXQoJmVuZ2luZS0+aTkxNS0+cnVudGltZV9wbSwg
JmVuZ2luZS0+d2FrZXJlZiwgX19lbmdpbmVfcGFyayk7Ci19CitzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX3dha2VyZWZfb3BzIHdmX29wcyA9IHsKKwkuZ2V0ID0gX19lbmdpbmVfdW5wYXJrLAor
CS5wdXQgPSBfX2VuZ2luZV9wYXJrLAorfTsKIAogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9fcG0o
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCWludGVsX3dha2VyZWZfaW5pdCgm
ZW5naW5lLT53YWtlcmVmKTsKKwlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtID0gJmVuZ2lu
ZS0+aTkxNS0+cnVudGltZV9wbTsKKworCWludGVsX3dha2VyZWZfaW5pdCgmZW5naW5lLT53YWtl
cmVmLCBycG0sICZ3Zl9vcHMpOwogfQorCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
U0VMRlRFU1QpCisjaW5jbHVkZSAic2VsZnRlc3RfZW5naW5lX3BtLmMiCisjZW5kaWYKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmgKaW5kZXggMDE1YWM3MmQ3YWQwLi43
MzljNTBmZWZjZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9wbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5o
CkBAIC0xMCwyNCArMTAsMjYgQEAKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfdHlwZXMuaCIKICNp
bmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCiAKLXN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwotCi12
b2lkIGludGVsX2VuZ2luZV9wbV9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsK
LXZvaWQgaW50ZWxfZW5naW5lX3BtX3B1dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
OwotCiBzdGF0aWMgaW5saW5lIGJvb2wKIGludGVsX2VuZ2luZV9wbV9pc19hd2FrZShjb25zdCBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJcmV0dXJuIGludGVsX3dha2VyZWZf
aXNfYWN0aXZlKCZlbmdpbmUtPndha2VyZWYpOwogfQogCi1zdGF0aWMgaW5saW5lIGJvb2wKLWlu
dGVsX2VuZ2luZV9wbV9nZXRfaWZfYXdha2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQorc3RhdGljIGlubGluZSB2b2lkIGludGVsX2VuZ2luZV9wbV9nZXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQoreworCWludGVsX3dha2VyZWZfZ2V0KCZlbmdpbmUtPndha2VyZWYp
OworfQorCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZW5naW5lX3BtX2dldF9pZl9hd2FrZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJcmV0dXJuIGludGVsX3dha2VyZWZf
Z2V0X2lmX2FjdGl2ZSgmZW5naW5lLT53YWtlcmVmKTsKIH0KIAotdm9pZCBpbnRlbF9lbmdpbmVf
cGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOworc3RhdGljIGlubGluZSB2b2lk
IGludGVsX2VuZ2luZV9wbV9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQorewor
CWludGVsX3dha2VyZWZfcHV0KCZlbmdpbmUtPndha2VyZWYpOworfQogCiB2b2lkIGludGVsX2Vu
Z2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwppbmRleCA2Yzg5NzAyNzFhN2YuLjEzNjNlMDY5ZWM4
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBAIC0xNyw3ICsxNyw3IEBA
IHN0YXRpYyB2b2lkIHBtX25vdGlmeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50
IHN0YXRlKQogCWJsb2NraW5nX25vdGlmaWVyX2NhbGxfY2hhaW4oJmk5MTUtPmd0LnBtX25vdGlm
aWNhdGlvbnMsIHN0YXRlLCBpOTE1KTsKIH0KIAotc3RhdGljIGludCBpbnRlbF9ndF91bnBhcmso
c3RydWN0IGludGVsX3dha2VyZWYgKndmKQorc3RhdGljIGludCBfX2d0X3VucGFyayhzdHJ1Y3Qg
aW50ZWxfd2FrZXJlZiAqd2YpCiB7CiAJc3RydWN0IGludGVsX2d0ICpndCA9IGNvbnRhaW5lcl9v
Zih3ZiwgdHlwZW9mKCpndCksIHdha2VyZWYpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gZ3QtPmk5MTU7CkBAIC01MywxNCArNTMsNyBAQCBzdGF0aWMgaW50IGludGVsX2d0X3Vu
cGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJcmV0dXJuIDA7CiB9CiAKLXZvaWQgaW50
ZWxfZ3RfcG1fZ2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCi17Ci0Jc3RydWN0IGludGVsX3J1bnRp
bWVfcG0gKnJwbSA9ICZndC0+aTkxNS0+cnVudGltZV9wbTsKLQotCWludGVsX3dha2VyZWZfZ2V0
KHJwbSwgJmd0LT53YWtlcmVmLCBpbnRlbF9ndF91bnBhcmspOwotfQotCi1zdGF0aWMgaW50IGlu
dGVsX2d0X3Bhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQorc3RhdGljIGludCBfX2d0X3Bh
cmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0KIAkJY29udGFpbmVyX29mKHdmLCB0eXBlb2YoKmk5MTUpLCBndC53YWtlcmVmKTsK
QEAgLTc0LDIyICs2NywyNSBAQCBzdGF0aWMgaW50IGludGVsX2d0X3Bhcmsoc3RydWN0IGludGVs
X3dha2VyZWYgKndmKQogCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNikKIAkJZ2VuNl9ycHNfaWRs
ZShpOTE1KTsKIAorCS8qIEV2ZXJ5dGhpbmcgc3dpdGNoZWQgb2ZmLCBmbHVzaCBhbnkgcmVzaWR1
YWwgaW50ZXJydXB0IGp1c3QgaW4gY2FzZSAqLworCWludGVsX3N5bmNocm9uaXplX2lycShpOTE1
KTsKKwogCUdFTV9CVUdfT04oIXdha2VyZWYpOwogCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGk5
MTUsIFBPV0VSX0RPTUFJTl9HVF9JUlEsIHdha2VyZWYpOwogCiAJcmV0dXJuIDA7CiB9CiAKLXZv
aWQgaW50ZWxfZ3RfcG1fcHV0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCi17Ci0Jc3RydWN0IGludGVs
X3J1bnRpbWVfcG0gKnJwbSA9ICZndC0+aTkxNS0+cnVudGltZV9wbTsKLQotCWludGVsX3dha2Vy
ZWZfcHV0KHJwbSwgJmd0LT53YWtlcmVmLCBpbnRlbF9ndF9wYXJrKTsKLX0KK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgd2Zfb3BzID0geworCS5nZXQgPSBfX2d0X3VucGFy
aywKKwkucHV0ID0gX19ndF9wYXJrLAorCS5mbGFncyA9IElOVEVMX1dBS0VSRUZfUFVUX0FTWU5D
LAorfTsKIAogdm9pZCBpbnRlbF9ndF9wbV9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiB7Ci0JaW50ZWxfd2FrZXJlZl9pbml0KCZndC0+d2FrZXJlZik7CisJaW50ZWxfd2FrZXJlZl9p
bml0KCZndC0+d2FrZXJlZiwgJmd0LT5pOTE1LT5ydW50aW1lX3BtLCAmd2Zfb3BzKTsKKwogCUJM
T0NLSU5HX0lOSVRfTk9USUZJRVJfSEVBRCgmZ3QtPnBtX25vdGlmaWNhdGlvbnMpOwogfQogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaAppbmRleCBlOGExOGQ0YjI3YzkuLmZiMzlk
OTljZDZlZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0u
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCkBAIC0xNywxNCAr
MTcsMzEgQEAgZW51bSB7CiAJSU5URUxfR1RfUEFSSywKIH07CiAKLXZvaWQgaW50ZWxfZ3RfcG1f
Z2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwotdm9pZCBpbnRlbF9ndF9wbV9wdXQoc3RydWN0IGlu
dGVsX2d0ICpndCk7CitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3RfcG1faXNfYXdha2UoY29u
c3Qgc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlyZXR1cm4gaW50ZWxfd2FrZXJlZl9pc19hY3Rp
dmUoJmd0LT53YWtlcmVmKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIGludGVsX2d0X3BtX2dl
dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCWludGVsX3dha2VyZWZfZ2V0KCZndC0+d2FrZXJl
Zik7Cit9CiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndF9wbV9nZXRfaWZfYXdha2Uoc3Ry
dWN0IGludGVsX2d0ICpndCkKIHsKIAlyZXR1cm4gaW50ZWxfd2FrZXJlZl9nZXRfaWZfYWN0aXZl
KCZndC0+d2FrZXJlZik7CiB9CiAKK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9ndF9wbV9wdXQo
c3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlpbnRlbF93YWtlcmVmX3B1dCgmZ3QtPndha2VyZWYp
OworfQorCitzdGF0aWMgaW5saW5lIGludCBpbnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCit7CisJcmV0dXJuIGludGVsX3dha2VyZWZfd2FpdF9mb3JfaWRsZSgm
Z3QtPndha2VyZWYpOworfQorCiB2b2lkIGludGVsX2d0X3BtX2luaXRfZWFybHkoc3RydWN0IGlu
dGVsX2d0ICpndCk7CiAKIHZvaWQgaW50ZWxfZ3Rfc2FuaXRpemUoc3RydWN0IGludGVsX2d0ICpn
dCwgYm9vbCBmb3JjZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDJiOTc2
NDFmZWFjMy4uMTkxODkyZjdiM2E5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpA
QCAtMTQwLDYgKzE0MCw3IEBACiAjaW5jbHVkZSAiaTkxNV92Z3B1LmgiCiAjaW5jbHVkZSAiaW50
ZWxfZW5naW5lX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKKyNpbmNsdWRlICJpbnRlbF9n
dF9wbS5oIgogI2luY2x1ZGUgImludGVsX2xyY19yZWcuaCIKICNpbmNsdWRlICJpbnRlbF9tb2Nz
LmgiCiAjaW5jbHVkZSAiaW50ZWxfcmVzZXQuaCIKQEAgLTU1Nyw2ICs1NTgsNyBAQCBleGVjbGlz
dHNfc2NoZWR1bGVfaW4oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIGludCBpZHgpCiAJCWludGVs
X2NvbnRleHRfZ2V0KGNlKTsKIAkJY2UtPmluZmxpZ2h0ID0gcnEtPmVuZ2luZTsKIAorCQlpbnRl
bF9ndF9wbV9nZXQoY2UtPmluZmxpZ2h0LT5ndCk7CiAJCWV4ZWNsaXN0c19jb250ZXh0X3N0YXR1
c19jaGFuZ2UocnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVfSU4pOwogCQlpbnRlbF9lbmdpbmVf
Y29udGV4dF9pbihjZS0+aW5mbGlnaHQpOwogCX0KQEAgLTU4OSw2ICs1OTEsNyBAQCBleGVjbGlz
dHNfc2NoZWR1bGVfb3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCWlmICghaW50ZWxfY29u
dGV4dF9pbmZsaWdodF9jb3VudChjZSkpIHsKIAkJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KGNl
LT5pbmZsaWdodCk7CiAJCWV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFuZ2UocnEsIElOVEVM
X0NPTlRFWFRfU0NIRURVTEVfT1VUKTsKKwkJaW50ZWxfZ3RfcG1fcHV0KGNlLT5pbmZsaWdodC0+
Z3QpOwogCiAJCS8qCiAJCSAqIElmIHRoaXMgaXMgcGFydCBvZiBhIHZpcnR1YWwgZW5naW5lLCBp
dHMgbmV4dCByZXF1ZXN0IG1heQpAQCAtMjcyMCw3ICsyNzIzLDYgQEAgc3RhdGljIHUzMiAqZ2Vu
OF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwg
dTMyICpjcykKIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIHsKIAlkZWxfdGltZXJfc3luYygmZW5naW5lLT5leGVjbGlzdHMudGltZXIp
OwotCWludGVsX2VuZ2luZV9wYXJrKGVuZ2luZSk7CiB9CiAKIHZvaWQgaW50ZWxfZXhlY2xpc3Rz
X3NldF9kZWZhdWx0X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuYwpuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmY2NWIxMThlMjYxZAotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZS5jCkBAIC0wLDAgKzEsMjgg
QEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAorICoKKyAqIENvcHly
aWdodCDCqSAyMDE4IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgImk5MTVfc2Vs
ZnRlc3QuaCIKKyNpbmNsdWRlICJzZWxmdGVzdF9lbmdpbmUuaCIKKworaW50IGludGVsX2VuZ2lu
ZV9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlzdGF0
aWMgaW50ICgqIGNvbnN0IHRlc3RzW10pKHN0cnVjdCBpbnRlbF9ndCAqKSA9IHsKKwkJbGl2ZV9l
bmdpbmVfcG1fc2VsZnRlc3RzLAorCQlOVUxMLAorCX07CisJc3RydWN0IGludGVsX2d0ICpndCA9
ICZpOTE1LT5ndDsKKwl0eXBlb2YoKnRlc3RzKSAqZm47CisKKwlmb3IgKGZuID0gdGVzdHM7ICpm
bjsgZm4rKykgeworCQlpbnQgZXJyOworCisJCWVyciA9ICgqZm4pKGd0KTsKKwkJaWYgKGVycikK
KwkJCXJldHVybiBlcnI7CisJfQorCisJcmV0dXJuIDA7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2VuZ2luZS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAw
MDAwMC4uYWIzMmQwOWVjNWExCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfZW5naW5lLmgKQEAgLTAsMCArMSwxNCBAQAorLyoKKyAqIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwg
Q29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIFNFTEZURVNUX0VOR0lORV9ICisjZGVmaW5lIFNF
TEZURVNUX0VOR0lORV9ICisKK3N0cnVjdCBpbnRlbF9ndDsKKworaW50IGxpdmVfZW5naW5lX3Bt
X3NlbGZ0ZXN0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKKworI2VuZGlmCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9wbS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uM2ExNDE5Mzc2OTEyCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX3BtLmMKQEAgLTAsMCArMSw4MyBAQAor
LyoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisgKgorICogQ29weXJpZ2h0
IMKpIDIwMTggSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVkZSAiaTkxNV9zZWxmdGVz
dC5oIgorI2luY2x1ZGUgInNlbGZ0ZXN0X2VuZ2luZS5oIgorI2luY2x1ZGUgInNlbGZ0ZXN0cy9p
Z3RfYXRvbWljLmgiCisKK3N0YXRpYyBpbnQgbGl2ZV9lbmdpbmVfcG0odm9pZCAqYXJnKQorewor
CXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lOworCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOworCisJLyoKKwkgKiBDaGVjayB3ZSBjYW4g
Y2FsbCBpbnRlbF9lbmdpbmVfcG1fcHV0IGZyb20gYW55IGNvbnRleHQuIE5vCisJICogZmFpbHVy
ZXMgYXJlIHJlcG9ydGVkIGRpcmVjdGx5LCBidXQgaWYgd2UgbWVzcyB1cCBsb2NrZGVwIHNob3Vs
ZAorCSAqIHRlbGwgdXMuCisJICovCisJaWYgKGludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUoZ3Qp
KSB7CisJCXByX2VycigiVW5hYmxlIHRvIGZsdXNoIEdUIHBtIGJlZm9yZSB0ZXN0XG4iKTsKKwkJ
cmV0dXJuIC1FQlVTWTsKKwl9CisKKwlHRU1fQlVHX09OKGludGVsX2d0X3BtX2lzX2F3YWtlKGd0
KSk7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QtPmk5MTUsIGlkKSB7CisJCWNvbnN0IHR5
cGVvZigqaWd0X2F0b21pY19waGFzZXMpICpwOworCisJCWZvciAocCA9IGlndF9hdG9taWNfcGhh
c2VzOyBwLT5uYW1lOyBwKyspIHsKKwkJCS8qCisJCQkgKiBBY3F1aXNpdGlvbiBpcyBhbHdheXMg
c3luY2hyb25vdXMsIGV4Y2VwdCBpZiB3ZQorCQkJICoga25vdyB0aGF0IHRoZSBlbmdpbmUgaXMg
YWxyZWFkeSBhd2FrZSwgaW4gd2hpY2gKKwkJCSAqIGNhc2Ugd2Ugc2hvdWxkIHVzZSBpbnRlbF9l
bmdpbmVfcG1fZ2V0X2lmX2F3YWtlKCkKKwkJCSAqIHRvIGF0b21pY2FsbHkgZ3JhYiB0aGUgd2Fr
ZXJlZi4KKwkJCSAqCisJCQkgKiBJbiBwcmFjdGljZSwKKwkJCSAqICAgIGludGVsX2VuZ2luZV9w
bV9nZXQoKTsKKwkJCSAqICAgIGludGVsX2VuZ2luZV9wbV9wdXQoKTsKKwkJCSAqIG9jY3VycyBp
biBvbmUgdGhyZWFkLCB3aGlsZSBzaW11bHRhbmVvdXNseQorCQkJICogICAgaW50ZWxfZW5naW5l
X3BtX2dldF9pZl9hd2FrZSgpOworCQkJICogICAgaW50ZWxfZW5naW5lX3BtX3B1dCgpOworCQkJ
ICogb2NjdXJzIGZyb20gYXRvbWljIGNvbnRleHQgaW4gYW5vdGhlci4KKwkJCSAqLworCQkJR0VN
X0JVR19PTihpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSk7CisJCQlpbnRlbF9lbmdp
bmVfcG1fZ2V0KGVuZ2luZSk7CisKKwkJCXAtPmNyaXRpY2FsX3NlY3Rpb25fYmVnaW4oKTsKKwkJ
CWlmICghaW50ZWxfZW5naW5lX3BtX2dldF9pZl9hd2FrZShlbmdpbmUpKQorCQkJCXByX2Vycigi
aW50ZWxfZW5naW5lX3BtX2dldF9pZl9hd2FrZSglcykgZmFpbGVkIHVuZGVyICVzXG4iLAorCQkJ
CSAgICAgICBlbmdpbmUtPm5hbWUsIHAtPm5hbWUpOworCQkJZWxzZQorCQkJCWludGVsX2VuZ2lu
ZV9wbV9wdXQoZW5naW5lKTsKKwkJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKKwkJCXAt
PmNyaXRpY2FsX3NlY3Rpb25fZW5kKCk7CisKKwkJCS8qIGVuZ2luZSB3YWtlcmVmIGlzIHN5bmMg
KGluc3RhbnQpICovCisJCQlpZiAoaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKGVuZ2luZSkpIHsK
KwkJCQlwcl9lcnIoIiVzIGlzIHN0aWxsIGF3YWtlIGFmdGVyIGZsdXNoaW5nIHBtXG4iLAorCQkJ
CSAgICAgICBlbmdpbmUtPm5hbWUpOworCQkJCXJldHVybiAtRUlOVkFMOworCQkJfQorCisJCQkv
KiBndCB3YWtlcmVmIGlzIGFzeW5jIChkZWZlcnJlZCB0byB3b3JrcXVldWUpICovCisJCQlpZiAo
aW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShndCkpIHsKKwkJCQlwcl9lcnIoIkdUIGZhaWxlZCB0
byBpZGxlXG4iKTsKKwkJCQlyZXR1cm4gLUVJTlZBTDsKKwkJCX0KKwkJfQorCX0KKworCXJldHVy
biAwOworfQorCitpbnQgbGl2ZV9lbmdpbmVfcG1fc2VsZnRlc3RzKHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKKwkJ
U1VCVEVTVChsaXZlX2VuZ2luZV9wbSksCisJfTsKKworCXJldHVybiBpbnRlbF9ndF9saXZlX3N1
YnRlc3RzKHRlc3RzLCBndCk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwppbmRleCAyOGY1ZTUzNzliMmMuLjhiODM3NTBjZjk2YyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Np
b24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lv
bi5jCkBAIC0yOSw2ICsyOSw3IEBACiAjaW5jbHVkZSAiZ3QvaW50ZWxfY29udGV4dC5oIgogI2lu
Y2x1ZGUgImd0L2ludGVsX2VuZ2luZV9wbS5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCisj
aW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9scmNfcmVnLmgi
CiAjaW5jbHVkZSAiaW50ZWxfZ3VjX3N1Ym1pc3Npb24uaCIKIApAQCAtNTM4LDYgKzUzOSw3IEBA
IHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpzY2hlZHVsZV9pbihzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwgaW50IGlkeCkKIAlpZiAoIXJxLT5od19jb250ZXh0LT5pbmZsaWdodCkKIAkJcnEt
Pmh3X2NvbnRleHQtPmluZmxpZ2h0ID0gcnEtPmVuZ2luZTsKIAlpbnRlbF9jb250ZXh0X2luZmxp
Z2h0X2luYyhycS0+aHdfY29udGV4dCk7CisJaW50ZWxfZ3RfcG1fZ2V0KHJxLT5lbmdpbmUtPmd0
KTsKIAogCXJldHVybiBpOTE1X3JlcXVlc3RfZ2V0KHJxKTsKIH0KQEAgLTU1MCw2ICs1NTIsNyBA
QCBzdGF0aWMgdm9pZCBzY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJaWYg
KCFpbnRlbF9jb250ZXh0X2luZmxpZ2h0X2NvdW50KHJxLT5od19jb250ZXh0KSkKIAkJcnEtPmh3
X2NvbnRleHQtPmluZmxpZ2h0ID0gTlVMTDsKIAorCWludGVsX2d0X3BtX3B1dChycS0+ZW5naW5l
LT5ndCk7CiAJaTkxNV9yZXF1ZXN0X3B1dChycSk7CiB9CiAKQEAgLTEwNzcsNyArMTA4MCw2IEBA
IHN0YXRpYyB2b2lkIGd1Y19pbnRlcnJ1cHRzX3JlbGVhc2Uoc3RydWN0IGludGVsX2d0ICpndCkK
IAogc3RhdGljIHZvaWQgZ3VjX3N1Ym1pc3Npb25fcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiB7Ci0JaW50ZWxfZW5naW5lX3BhcmsoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVf
dW5waW5fYnJlYWRjcnVtYnNfaXJxKGVuZ2luZSk7CiAJZW5naW5lLT5mbGFncyAmPSB+STkxNV9F
TkdJTkVfTkVFRFNfQlJFQURDUlVNQl9UQVNLTEVUOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwppbmRleCA1ZmZhNjIyMGRhNjMuLmJkZGJiZDk1OWQxYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTQwLDYgKzQwLDcgQEAKICNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX3Bzci5oIgogCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKKyNpbmNsdWRl
ICJndC9pbnRlbF9ndF9wbS5oIgogI2luY2x1ZGUgImd0L2ludGVsX3Jlc2V0LmgiCiAjaW5jbHVk
ZSAiZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uaCIKIApAQCAtMzY4MCw2ICszNjgxLDkgQEAg
aTkxNV9kcm9wX2NhY2hlc19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkKIAkJCWk5MTVfcmV0aXJl
X3JlcXVlc3RzKGk5MTUpOwogCiAJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRl
eCk7CisKKwkJaWYgKHJldCA9PSAwICYmIHZhbCAmIERST1BfSURMRSkKKwkJCXJldCA9IGludGVs
X2d0X3BtX3dhaXRfZm9yX2lkbGUoJmk5MTUtPmd0KTsKIAl9CiAKIAlpZiAodmFsICYgRFJPUF9S
RVNFVF9BQ1RJVkUgJiYgaW50ZWxfZ3RfdGVybWluYWxseV93ZWRnZWQoJmk5MTUtPmd0KSkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDZiYWUwNzNmYjU3MC4uNjdhMGJjNGRiOWNkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTg5MywxOSArODkzLDYgQEAgdm9pZCBpOTE1X2dlbV9y
dW50aW1lX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJfQogfQogCi1z
dGF0aWMgaW50IHdhaXRfZm9yX2VuZ2luZXMoc3RydWN0IGludGVsX2d0ICpndCkKLXsKLQlpZiAo
d2FpdF9mb3IoaW50ZWxfZW5naW5lc19hcmVfaWRsZShndCksIEk5MTVfSURMRV9FTkdJTkVTX1RJ
TUVPVVQpKSB7Ci0JCWRldl9lcnIoZ3QtPmk5MTUtPmRybS5kZXYsCi0JCQkiRmFpbGVkIHRvIGlk
bGUgZW5naW5lcywgZGVjbGFyaW5nIHdlZGdlZCFcbiIpOwotCQlHRU1fVFJBQ0VfRFVNUCgpOwot
CQlpbnRlbF9ndF9zZXRfd2VkZ2VkKGd0KTsKLQkJcmV0dXJuIC1FSU87Ci0JfQotCi0JcmV0dXJu
IDA7Ci19Ci0KIHN0YXRpYyBsb25nCiB3YWl0X2Zvcl90aW1lbGluZXMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCiAJCSAgIHVuc2lnbmVkIGludCBmbGFncywgbG9uZyB0aW1lb3V0KQpA
QCAtOTUzLDI3ICs5NDAsMjAgQEAgaW50IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCQkgICB1bnNpZ25lZCBpbnQgZmxhZ3MsIGxvbmcgdGlt
ZW91dCkKIHsKIAkvKiBJZiB0aGUgZGV2aWNlIGlzIGFzbGVlcCwgd2UgaGF2ZSBubyByZXF1ZXN0
cyBvdXRzdGFuZGluZyAqLwotCWlmICghUkVBRF9PTkNFKGk5MTUtPmd0LmF3YWtlKSkKKwlpZiAo
IWludGVsX2d0X3BtX2lzX2F3YWtlKCZpOTE1LT5ndCkpCiAJCXJldHVybiAwOwogCi0JR0VNX1RS
QUNFKCJmbGFncz0leCAoJXMpLCB0aW1lb3V0PSVsZCVzLCBhd2FrZT89JXNcbiIsCisJR0VNX1RS
QUNFKCJmbGFncz0leCAoJXMpLCB0aW1lb3V0PSVsZCVzXG4iLAogCQkgIGZsYWdzLCBmbGFncyAm
IEk5MTVfV0FJVF9MT0NLRUQgPyAibG9ja2VkIiA6ICJ1bmxvY2tlZCIsCi0JCSAgdGltZW91dCwg
dGltZW91dCA9PSBNQVhfU0NIRURVTEVfVElNRU9VVCA/ICIgKGZvcmV2ZXIpIiA6ICIiLAotCQkg
IHllc25vKGk5MTUtPmd0LmF3YWtlKSk7CisJCSAgdGltZW91dCwgdGltZW91dCA9PSBNQVhfU0NI
RURVTEVfVElNRU9VVCA/ICIgKGZvcmV2ZXIpIiA6ICIiKTsKIAogCXRpbWVvdXQgPSB3YWl0X2Zv
cl90aW1lbGluZXMoaTkxNSwgZmxhZ3MsIHRpbWVvdXQpOwogCWlmICh0aW1lb3V0IDwgMCkKIAkJ
cmV0dXJuIHRpbWVvdXQ7CiAKIAlpZiAoZmxhZ3MgJiBJOTE1X1dBSVRfTE9DS0VEKSB7Ci0JCWlu
dCBlcnI7Ci0KIAkJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
CiAKLQkJZXJyID0gd2FpdF9mb3JfZW5naW5lcygmaTkxNS0+Z3QpOwotCQlpZiAoZXJyKQotCQkJ
cmV0dXJuIGVycjsKLQogCQlpOTE1X3JldGlyZV9yZXF1ZXN0cyhpOTE1KTsKIAl9CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwppbmRleCAwNmJkOGIyMTVjYzIuLmQ0NDQzZTgxYzFj
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwpAQCAtNCwyNSArNCwyNSBAQAog
ICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KICAqLwogCisjaW5jbHVkZSA8
bGludXgvd2FpdF9iaXQuaD4KKwogI2luY2x1ZGUgImludGVsX3J1bnRpbWVfcG0uaCIKICNpbmNs
dWRlICJpbnRlbF93YWtlcmVmLmgiCiAKLXN0YXRpYyB2b2lkIHJwbV9nZXQoc3RydWN0IGludGVs
X3J1bnRpbWVfcG0gKnJwbSwgc3RydWN0IGludGVsX3dha2VyZWYgKndmKQorc3RhdGljIHZvaWQg
cnBtX2dldChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7Ci0Jd2YtPndha2VyZWYgPSBpbnRl
bF9ydW50aW1lX3BtX2dldChycG0pOworCXdmLT53YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9n
ZXQod2YtPnJwbSk7CiB9CiAKLXN0YXRpYyB2b2lkIHJwbV9wdXQoc3RydWN0IGludGVsX3J1bnRp
bWVfcG0gKnJwbSwgc3RydWN0IGludGVsX3dha2VyZWYgKndmKQorc3RhdGljIHZvaWQgcnBtX3B1
dChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWYg
PSBmZXRjaF9hbmRfemVybygmd2YtPndha2VyZWYpOwogCi0JaW50ZWxfcnVudGltZV9wbV9wdXQo
cnBtLCB3YWtlcmVmKTsKKwlpbnRlbF9ydW50aW1lX3BtX3B1dCh3Zi0+cnBtLCB3YWtlcmVmKTsK
IAlJTlRFTF9XQUtFUkVGX0JVR19PTighd2FrZXJlZik7CiB9CiAKLWludCBfX2ludGVsX3dha2Vy
ZWZfZ2V0X2ZpcnN0KHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0sCi0JCQkgICAgICBzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YsCi0JCQkgICAgICBpbnQgKCpmbikoc3RydWN0IGludGVsX3dh
a2VyZWYgKndmKSkKK2ludCBfX2ludGVsX3dha2VyZWZfZ2V0X2ZpcnN0KHN0cnVjdCBpbnRlbF93
YWtlcmVmICp3ZikKIHsKIAkvKgogCSAqIFRyZWF0IGdldC9wdXQgYXMgZGlmZmVyZW50IHN1YmNs
YXNzZXMsIGFzIHdlIG1heSBuZWVkIHRvIHJ1bgpAQCAtMzQsMTEgKzM0LDExIEBAIGludCBfX2lu
dGVsX3dha2VyZWZfZ2V0X2ZpcnN0KHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0sCiAJaWYg
KCFhdG9taWNfcmVhZCgmd2YtPmNvdW50KSkgewogCQlpbnQgZXJyOwogCi0JCXJwbV9nZXQocnBt
LCB3Zik7CisJCXJwbV9nZXQod2YpOwogCi0JCWVyciA9IGZuKHdmKTsKKwkJZXJyID0gd2YtPm9w
cy0+Z2V0KHdmKTsKIAkJaWYgKHVubGlrZWx5KGVycikpIHsKLQkJCXJwbV9wdXQocnBtLCB3Zik7
CisJCQlycG1fcHV0KHdmKTsKIAkJCW11dGV4X3VubG9jaygmd2YtPm11dGV4KTsKIAkJCXJldHVy
biBlcnI7CiAJCX0KQEAgLTUyLDI3ICs1Miw2NyBAQCBpbnQgX19pbnRlbF93YWtlcmVmX2dldF9m
aXJzdChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLAogCXJldHVybiAwOwogfQogCi1pbnQg
X19pbnRlbF93YWtlcmVmX3B1dF9sYXN0KHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0sCi0J
CQkgICAgIHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwKLQkJCSAgICAgaW50ICgqZm4pKHN0cnVj
dCBpbnRlbF93YWtlcmVmICp3ZikpCitzdGF0aWMgdm9pZCBfX19faW50ZWxfd2FrZXJlZl9wdXRf
bGFzdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7Ci0JaW50IGVycjsKKwlpZiAoIWF0b21p
Y19kZWNfYW5kX3Rlc3QoJndmLT5jb3VudCkpCisJCWdvdG8gdW5sb2NrOworCisJaWYgKGxpa2Vs
eSghd2YtPm9wcy0+cHV0KHdmKSkpIHsKKwkJcnBtX3B1dCh3Zik7CisJCXdha2VfdXBfdmFyKCZ3
Zi0+d2FrZXJlZik7CisJfSBlbHNlIHsKKwkJLyogb3BzLT5wdXQoKSBtdXN0IHNjaGVkdWxlIGl0
cyBvd24gcmVsZWFzZSBvbiBkZWZlcnJhbCAqLworCQlhdG9taWNfc2V0X3JlbGVhc2UoJndmLT5j
b3VudCwgMSk7CisJfQogCi0JZXJyID0gZm4od2YpOwotCWlmIChsaWtlbHkoIWVycikpCi0JCXJw
bV9wdXQocnBtLCB3Zik7Ci0JZWxzZQotCQlhdG9taWNfaW5jKCZ3Zi0+Y291bnQpOwordW5sb2Nr
OgogCW11dGV4X3VubG9jaygmd2YtPm11dGV4KTsKK30KKwordm9pZCBfX2ludGVsX3dha2VyZWZf
cHV0X2xhc3Qoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQoreworCUlOVEVMX1dBS0VSRUZfQlVH
X09OKHdvcmtfcGVuZGluZygmd2YtPndvcmspKTsKIAotCXJldHVybiBlcnI7CisJLyogQXNzdW1l
IHdlIGFyZSBub3QgaW4gcHJvY2VzcyBjb250ZXh0IGFuZCBzbyBjYW5ub3Qgc2xlZXAuICovCisJ
aWYgKHdmLT5vcHMtPmZsYWdzICYgSU5URUxfV0FLRVJFRl9QVVRfQVNZTkMgfHwKKwkgICAgIW11
dGV4X3RyeWxvY2soJndmLT5tdXRleCkpIHsKKwkJc2NoZWR1bGVfd29yaygmd2YtPndvcmspOwor
CQlyZXR1cm47CisJfQorCisJX19fX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qod2YpOwogfQogCi12
b2lkIF9faW50ZWxfd2FrZXJlZl9pbml0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3Ziwgc3RydWN0
IGxvY2tfY2xhc3Nfa2V5ICprZXkpCitzdGF0aWMgdm9pZCBfX2ludGVsX3dha2VyZWZfcHV0X3dv
cmsoc3RydWN0IHdvcmtfc3RydWN0ICp3cmspCiB7CisJc3RydWN0IGludGVsX3dha2VyZWYgKndm
ID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCp3ZiksIHdvcmspOworCisJaWYgKGF0b21pY19h
ZGRfdW5sZXNzKCZ3Zi0+Y291bnQsIC0xLCAxKSkKKwkJcmV0dXJuOworCisJbXV0ZXhfbG9jaygm
d2YtPm11dGV4KTsKKwlfX19faW50ZWxfd2FrZXJlZl9wdXRfbGFzdCh3Zik7Cit9CisKK3ZvaWQg
X19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVsX3dha2VyZWYgKndmLAorCQkJICBzdHJ1
Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLAorCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJl
Zl9vcHMgKm9wcywKKwkJCSAgc3RydWN0IGxvY2tfY2xhc3Nfa2V5ICprZXkpCit7CisJd2YtPnJw
bSA9IHJwbTsKKwl3Zi0+b3BzID0gb3BzOworCiAJX19tdXRleF9pbml0KCZ3Zi0+bXV0ZXgsICJ3
YWtlcmVmIiwga2V5KTsKIAlhdG9taWNfc2V0KCZ3Zi0+Y291bnQsIDApOwogCXdmLT53YWtlcmVm
ID0gMDsKKworCUlOSVRfV09SSygmd2YtPndvcmssIF9faW50ZWxfd2FrZXJlZl9wdXRfd29yayk7
Cit9CisKK2ludCBpbnRlbF93YWtlcmVmX3dhaXRfZm9yX2lkbGUoc3RydWN0IGludGVsX3dha2Vy
ZWYgKndmKQoreworCXJldHVybiB3YWl0X3Zhcl9ldmVudF9raWxsYWJsZSgmd2YtPndha2VyZWYs
CisJCQkJICAgICAgICFpbnRlbF93YWtlcmVmX2lzX2FjdGl2ZSh3ZikpOwogfQogCiBzdGF0aWMg
dm9pZCB3YWtlcmVmX2F1dG9fdGltZW91dChzdHJ1Y3QgdGltZXJfbGlzdCAqdCkKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3dha2VyZWYuaAppbmRleCAxZDZmNTk4NmU0ZTUuLjUzNWEzYTEyODY0YiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaApAQCAtOCwxMCArOCwxMiBAQAogI2Rl
ZmluZSBJTlRFTF9XQUtFUkVGX0gKIAogI2luY2x1ZGUgPGxpbnV4L2F0b21pYy5oPgorI2luY2x1
ZGUgPGxpbnV4L2JpdHMuaD4KICNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxp
bnV4L3JlZmNvdW50Lmg+CiAjaW5jbHVkZSA8bGludXgvc3RhY2tkZXBvdC5oPgogI2luY2x1ZGUg
PGxpbnV4L3RpbWVyLmg+CisjaW5jbHVkZSA8bGludXgvd29ya3F1ZXVlLmg+CiAKICNpZiBJU19F
TkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVRykKICNkZWZpbmUgSU5URUxfV0FLRVJFRl9CVUdf
T04oZXhwcikgQlVHX09OKGV4cHIpCkBAIC0yMCwyOSArMjIsNDIgQEAKICNlbmRpZgogCiBzdHJ1
Y3QgaW50ZWxfcnVudGltZV9wbTsKK3N0cnVjdCBpbnRlbF93YWtlcmVmOwogCiB0eXBlZGVmIGRl
cG90X3N0YWNrX2hhbmRsZV90IGludGVsX3dha2VyZWZfdDsKIAorc3RydWN0IGludGVsX3dha2Vy
ZWZfb3BzIHsKKwlpbnQgKCpnZXQpKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3Zik7CisJaW50ICgq
cHV0KShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpOworCisJdW5zaWduZWQgbG9uZyBmbGFnczsK
KyNkZWZpbmUgSU5URUxfV0FLRVJFRl9QVVRfQVNZTkMgQklUKDApCit9OworCiBzdHJ1Y3QgaW50
ZWxfd2FrZXJlZiB7CiAJYXRvbWljX3QgY291bnQ7CiAJc3RydWN0IG11dGV4IG11dGV4OworCiAJ
aW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CisKKwlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBt
OworCWNvbnN0IHN0cnVjdCBpbnRlbF93YWtlcmVmX29wcyAqb3BzOworCisJc3RydWN0IHdvcmtf
c3RydWN0IHdvcms7CiB9OwogCiB2b2lkIF9faW50ZWxfd2FrZXJlZl9pbml0KHN0cnVjdCBpbnRl
bF93YWtlcmVmICp3ZiwKKwkJCSAgc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKKwkJCSAg
Y29uc3Qgc3RydWN0IGludGVsX3dha2VyZWZfb3BzICpvcHMsCiAJCQkgIHN0cnVjdCBsb2NrX2Ns
YXNzX2tleSAqa2V5KTsKLSNkZWZpbmUgaW50ZWxfd2FrZXJlZl9pbml0KHdmKSBkbyB7CQkJCQlc
CisjZGVmaW5lIGludGVsX3dha2VyZWZfaW5pdCh3ZiwgcnBtLCBvcHMpIGRvIHsJCQkJXAogCXN0
YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgX19rZXk7CQkJCVwKIAkJCQkJCQkJCVwKLQlfX2lu
dGVsX3dha2VyZWZfaW5pdCgod2YpLCAmX19rZXkpOwkJCQlcCisJX19pbnRlbF93YWtlcmVmX2lu
aXQoKHdmKSwgKHJwbSksIChvcHMpLCAmX19rZXkpOwkJXAogfSB3aGlsZSAoMCkKIAotaW50IF9f
aW50ZWxfd2FrZXJlZl9nZXRfZmlyc3Qoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKLQkJ
CSAgICAgIHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwKLQkJCSAgICAgIGludCAoKmZuKShzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YpKTsKLWludCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3Ry
dWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKLQkJCSAgICAgc3RydWN0IGludGVsX3dha2VyZWYg
KndmLAotCQkJICAgICBpbnQgKCpmbikoc3RydWN0IGludGVsX3dha2VyZWYgKndmKSk7CitpbnQg
X19pbnRlbF93YWtlcmVmX2dldF9maXJzdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpOwordm9p
ZCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3RydWN0IGludGVsX3dha2VyZWYgKndmKTsKIAog
LyoqCiAgKiBpbnRlbF93YWtlcmVmX2dldDogQWNxdWlyZSB0aGUgd2FrZXJlZgpAQCAtNjEsMTIg
Kzc2LDEwIEBAIGludCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3RydWN0IGludGVsX3J1bnRp
bWVfcG0gKnJwbSwKICAqIGNvZGUgb3RoZXJ3aXNlLgogICovCiBzdGF0aWMgaW5saW5lIGludAot
aW50ZWxfd2FrZXJlZl9nZXQoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKLQkJICBzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YsCi0JCSAgaW50ICgqZm4pKHN0cnVjdCBpbnRlbF93YWtlcmVm
ICp3ZikpCitpbnRlbF93YWtlcmVmX2dldChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7CiAJ
aWYgKHVubGlrZWx5KCFhdG9taWNfaW5jX25vdF96ZXJvKCZ3Zi0+Y291bnQpKSkKLQkJcmV0dXJu
IF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3QocnBtLCB3ZiwgZm4pOworCQlyZXR1cm4gX19pbnRl
bF93YWtlcmVmX2dldF9maXJzdCh3Zik7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTEwMiwxNiArMTE1
LDEyIEBAIGludGVsX3dha2VyZWZfZ2V0X2lmX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAq
d2YpCiAgKiBSZXR1cm5zOiAwIGlmIHRoZSB3YWtlcmVmIHdhcyByZWxlYXNlZCBzdWNjZXNzZnVs
bHksIG9yIGEgbmVnYXRpdmUgZXJyb3IKICAqIGNvZGUgb3RoZXJ3aXNlLgogICovCi1zdGF0aWMg
aW5saW5lIGludAotaW50ZWxfd2FrZXJlZl9wdXQoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJw
bSwKLQkJICBzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YsCi0JCSAgaW50ICgqZm4pKHN0cnVjdCBp
bnRlbF93YWtlcmVmICp3ZikpCitzdGF0aWMgaW5saW5lIHZvaWQKK2ludGVsX3dha2VyZWZfcHV0
KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIHsKIAlJTlRFTF9XQUtFUkVGX0JVR19PTihhdG9t
aWNfcmVhZCgmd2YtPmNvdW50KSA8PSAwKTsKLQlpZiAoYXRvbWljX2RlY19hbmRfbXV0ZXhfbG9j
aygmd2YtPmNvdW50LCAmd2YtPm11dGV4KSkKLQkJcmV0dXJuIF9faW50ZWxfd2FrZXJlZl9wdXRf
bGFzdChycG0sIHdmLCBmbik7Ci0KLQlyZXR1cm4gMDsKKwlpZiAodW5saWtlbHkoIWF0b21pY19h
ZGRfdW5sZXNzKCZ3Zi0+Y291bnQsIC0xLCAxKSkpCisJCV9faW50ZWxfd2FrZXJlZl9wdXRfbGFz
dCh3Zik7CiB9CiAKIC8qKgpAQCAtMTU0LDYgKzE2MywxOSBAQCBpbnRlbF93YWtlcmVmX2lzX2Fj
dGl2ZShjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJcmV0dXJuIFJFQURfT05DRSh3
Zi0+d2FrZXJlZik7CiB9CiAKKy8qKgorICogaW50ZWxfd2FrZXJlZl93YWl0X2Zvcl9pZGxlOiBX
YWl0IHVudGlsIHRoZSB3YWtlcmVmIGlzIGlkbGUKKyAqIEB3ZjogdGhlIHdha2VyZWYKKyAqCisg
KiBXYWl0IGZvciB0aGUgZWFybGllciBhc3luY2hyb25vdXMgcmVsZWFzZSBvZiB0aGUgd2FrZXJl
Zi4gTm90ZQorICogdGhpcyB3aWxsIHdhaXQgZm9yIGFueSB0aGlyZCBwYXJ0eSBhcyB3ZWxsLCBz
byBtYWtlIHN1cmUgeW91IG9ubHkgd2FpdAorICogd2hlbiB5b3UgaGF2ZSBjb250cm9sIG92ZXIg
dGhlIHdha2VyZWYgYW5kIHRydXN0IG5vIG9uZSBlbHNlIGlzIGFjcXVpcmluZworICogaXQuCisg
KgorICogUmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIGVycm9yIGNvZGUgaWYga2lsbGVkLgorICovCitp
bnQgaW50ZWxfd2FrZXJlZl93YWl0X2Zvcl9pZGxlKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3Zik7
CisKIHN0cnVjdCBpbnRlbF93YWtlcmVmX2F1dG8gewogCXN0cnVjdCBpbnRlbF9ydW50aW1lX3Bt
ICpycG07CiAJc3RydWN0IHRpbWVyX2xpc3QgdGltZXI7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAppbmRleCBhODQxZDNmOWJl
ZGMuLjFjY2YwZjczMWFjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCkBAIC0xMiwxMCArMTIsMTEgQEAKIHNlbGZ0ZXN0
KHNhbml0eWNoZWNrLCBpOTE1X2xpdmVfc2FuaXR5Y2hlY2spIC8qIGtlZXAgZmlyc3QgKGlndCBz
ZWxmY2hlY2spICovCiBzZWxmdGVzdCh1bmNvcmUsIGludGVsX3VuY29yZV9saXZlX3NlbGZ0ZXN0
cykKIHNlbGZ0ZXN0KHdvcmthcm91bmRzLCBpbnRlbF93b3JrYXJvdW5kc19saXZlX3NlbGZ0ZXN0
cykKLXNlbGZ0ZXN0KHRpbWVsaW5lcywgaW50ZWxfdGltZWxpbmVfbGl2ZV9zZWxmdGVzdHMpCitz
ZWxmdGVzdChndF9lbmdpbmVzLCBpbnRlbF9lbmdpbmVfbGl2ZV9zZWxmdGVzdHMpCitzZWxmdGVz
dChndF90aW1lbGluZXMsIGludGVsX3RpbWVsaW5lX2xpdmVfc2VsZnRlc3RzKQorc2VsZnRlc3Qo
Z3RfY29udGV4dHMsIGludGVsX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChyZXF1
ZXN0cywgaTkxNV9yZXF1ZXN0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoYWN0aXZlLCBpOTE1
X2FjdGl2ZV9saXZlX3NlbGZ0ZXN0cykKLXNlbGZ0ZXN0KGd0X2NvbnRleHRzLCBpbnRlbF9jb250
ZXh0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3Qob2JqZWN0cywgaTkxNV9nZW1fb2JqZWN0X2xp
dmVfc2VsZnRlc3RzKQogc2VsZnRlc3QobW1hbiwgaTkxNV9nZW1fbW1hbl9saXZlX3NlbGZ0ZXN0
cykKIHNlbGZ0ZXN0KGRtYWJ1ZiwgaTkxNV9nZW1fZG1hYnVmX2xpdmVfc2VsZnRlc3RzKQotLSAK
Mi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
