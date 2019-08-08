Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C0585E3F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 11:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A265489F33;
	Thu,  8 Aug 2019 09:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D95489F33
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 09:28:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17927663-1500050 
 for multiple; Thu, 08 Aug 2019 10:27:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 10:27:48 +0100
Message-Id: <20190808092748.28800-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Replace global bsd_dispatch_index
 with random seed
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

V2Uga2VlcCBhIGdsb2JhbCBzZWVkIGZvciB0aGUgbGVnYWN5IEJTRCByb3VuZC1yb2JpbiBzZWxl
Y3RvciwgYnV0IGluCm91ciB0ZXN0aW5nIG9mIG11bHRpcGxlIHNpbXVsdGFuZW91cyBjbGllbnQg
d29ya2xvYWRzLCBhIHJhbmRvbSBzZWVkCnNwcmVhZHMgdGhlIGxvYWQgbW9yZSBldmVubHkuIChB
cyBldmVuIGFzIGFuIGluaXRpYWwgcm91bmQtcm9iaW4gc2VsZWN0b3IKY2FuIGJlISkKClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5l
biA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgMyArLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICAgfCAzIC0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgICB8IDIgLS0KIDMgZmlsZXMgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggNTY2ZThhNDg0NGNmLi43ZmRiMmVjOTRhZmYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpA
QCAtMjExNCw4ICsyMTE0LDcgQEAgZ2VuOF9kaXNwYXRjaF9ic2RfZW5naW5lKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCS8qIENoZWNrIHdoZXRoZXIgdGhlIGZpbGVfcHJp
diBoYXMgYWxyZWFkeSBzZWxlY3RlZCBvbmUgcmluZy4gKi8KIAlpZiAoKGludClmaWxlX3ByaXYt
PmJzZF9lbmdpbmUgPCAwKQotCQlmaWxlX3ByaXYtPmJzZF9lbmdpbmUgPSBhdG9taWNfZmV0Y2hf
eG9yKDEsCi0JCQkgJmRldl9wcml2LT5tbS5ic2RfZW5naW5lX2Rpc3BhdGNoX2luZGV4KTsKKwkJ
ZmlsZV9wcml2LT5ic2RfZW5naW5lID0gZ2V0X3JhbmRvbV9pbnQoKSAmIDE7CiAKIAlyZXR1cm4g
ZmlsZV9wcml2LT5ic2RfZW5naW5lOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMGQx
OTQ5YTc4YzQ0Li4zODg5MjQ4MWM5YTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNzg1
LDkgKzc4NSw2IEBAIHN0cnVjdCBpOTE1X2dlbV9tbSB7CiAKIAl1NjQgdW5vcmRlcmVkX3RpbWVs
aW5lOwogCi0JLyogdGhlIGluZGljYXRvciBmb3IgZGlzcGF0Y2ggdmlkZW8gY29tbWFuZHMgb24g
dHdvIEJTRCByaW5ncyAqLwotCWF0b21pY190IGJzZF9lbmdpbmVfZGlzcGF0Y2hfaW5kZXg7Ci0K
IAkvKiogQml0IDYgc3dpenpsaW5nIHJlcXVpcmVkIGZvciBYIHRpbGluZyAqLwogCXUzMiBiaXRf
Nl9zd2l6emxlX3g7CiAJLyoqIEJpdCA2IHN3aXp6bGluZyByZXF1aXJlZCBmb3IgWSB0aWxpbmcg
Ki8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDNmODg4ZDZkNmE3Ny4uOGE1MTVjZWVhMTNi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTE2NTYsOCArMTY1Niw2IEBAIGludCBpOTE1
X2dlbV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpOTE1
X2dlbV9pbml0X19tbShkZXZfcHJpdik7CiAJaTkxNV9nZW1faW5pdF9fcG0oZGV2X3ByaXYpOwog
Ci0JYXRvbWljX3NldCgmZGV2X3ByaXYtPm1tLmJzZF9lbmdpbmVfZGlzcGF0Y2hfaW5kZXgsIDAp
OwotCiAJc3Bpbl9sb2NrX2luaXQoJmRldl9wcml2LT5mYl90cmFja2luZy5sb2NrKTsKIAogCWVy
ciA9IGk5MTVfZ2VtZnNfaW5pdChkZXZfcHJpdik7Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
