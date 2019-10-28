Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915EE7130
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:18:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9A46E7D5;
	Mon, 28 Oct 2019 12:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B5E6E7D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:18:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18992735-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:18:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 12:18:03 +0000
Message-Id: <20191028121803.29408-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Check a few more fixed
 locations within the context image
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

QXMgd2UgdXNlIGhhcmQgY29kZWQgb2Zmc2V0cyBmb3IgYSBmZXcgbG9jYXRpb25zIHdpdGhpbiB0
aGUgY29udGV4dAppbWFnZSwgaW5jbHVkZSB0aG9zZSBpbiB0aGUgc2VsZnRlc3RzIHRvIGFzc2Vy
dCB0aGF0IHRoZXkgYXJlIHZhbGlkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9scmMuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfbHJjLmMKaW5kZXggYmE3ZmM0Mzk3YmQ5Li45NTA3ZDc1MGFlMTQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCkBAIC0zMTk0LDEwICszMTk0LDM1IEBAIHN0YXRp
YyBpbnQgbGl2ZV9scmNfZml4ZWQodm9pZCAqYXJnKQogCQkJdTMyIG9mZnNldDsKIAkJCWNvbnN0
IGNoYXIgKm5hbWU7CiAJCX0gdGJsW10gPSB7CisJCQl7CisJCQkJaTkxNV9tbWlvX3JlZ19vZmZz
ZXQoUklOR19TVEFSVChlbmdpbmUtPm1taW9fYmFzZSkpLAorCQkJCUNUWF9SSU5HX0JVRkZFUl9T
VEFSVCAtIDEsCisJCQkJIlJJTkdfU1RBUlQiCisJCQl9LAorCQkJeworCQkJCWk5MTVfbW1pb19y
ZWdfb2Zmc2V0KFJJTkdfQ1RMKGVuZ2luZS0+bW1pb19iYXNlKSksCisJCQkJQ1RYX1JJTkdfQlVG
RkVSX0NPTlRST0wgLSAxLAorCQkJCSJSSU5HX0NUTCIKKwkJCX0sCisJCQl7CisJCQkJaTkxNV9t
bWlvX3JlZ19vZmZzZXQoUklOR19IRUFEKGVuZ2luZS0+bW1pb19iYXNlKSksCisJCQkJQ1RYX1JJ
TkdfSEVBRCAtIDEsCisJCQkJIlJJTkdfSEVBRCIKKwkJCX0sCisJCQl7CisJCQkJaTkxNV9tbWlv
X3JlZ19vZmZzZXQoUklOR19UQUlMKGVuZ2luZS0+bW1pb19iYXNlKSksCisJCQkJQ1RYX1JJTkdf
VEFJTCAtIDEsCisJCQkJIlJJTkdfVEFJTCIKKwkJCX0sCiAJCQl7CiAJCQkJaTkxNV9tbWlvX3Jl
Z19vZmZzZXQoUklOR19NSV9NT0RFKGVuZ2luZS0+bW1pb19iYXNlKSksCiAJCQkJbHJjX3Jpbmdf
bWlfbW9kZShlbmdpbmUpLAotCQkJCSJSSU5HX01JX01PREUiLAorCQkJCSJSSU5HX01JX01PREUi
CisJCQl9LAorCQkJeworCQkJCWVuZ2luZS0+bW1pb19iYXNlICsgMHgxMTAsCisJCQkJQ1RYX0JC
X1NUQVRFIC0gMSwKKwkJCQkiQkJfU1RBVEUiCiAJCQl9LAogCQkJeyB9LAogCQl9LCAqdDsKLS0g
CjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
