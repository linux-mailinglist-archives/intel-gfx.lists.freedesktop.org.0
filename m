Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F2114922
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 23:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8020F6E9AE;
	Thu,  5 Dec 2019 22:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34E06E9AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 22:20:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19477104-1500050 
 for multiple; Thu, 05 Dec 2019 22:20:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 22:20:34 +0000
Message-Id: <20191205222034.896901-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Pin gen6_ppgtt prior to
 constructing the request
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

QWxsIHBpbm5pbmcgbXVzdCBiZSBkb25lIHByaW9yIHRvIGk5MTVfcmVxdWVzdF9jcmVhdGUsIHRv
IGF2b2lkCnRpbWVsaW5lLT5tdXRleCBpbnZlcnNpb25zLgoKSGVyZSB3ZSBzbGlnaHRseSBhYnVz
ZSB0aGUgY29udGV4dF9iYXJyaWVyX3Rhc2sgc3RhZ2VzIHRvIHV0aWxpc2UgdGhlCidza2lwJyBk
ZWNpc2lvbiBhcyBhbiBvcHBvcnR1bml0eSB0byBhY3F1aXJlIHRoZSBwaW4gb24gdGhlIG5ldyBw
cGd0dC4KQ29uc2lkZXIgaXQgcy9za2lwL3ByZXBhcmUvLiBBdCB0aGUgbW9tZW50LCB3ZSBvbmx5
IGhhdmUgb24gdXNlciBvZgpjb250ZXh0X2JhcnJpZXJfdGFzaywgc28gaXQgbWlnaHQgYmUgd29y
dGggYnJlYWtpbmcgaXQgZG93biBmb3IgdGhlCnNwZWNpZmljIHRhc2sgb2Ygc2V0LXZtIGFuZCBy
ZWZhY3RvciBpdCBsYXRlciBpZiB3ZSBmaW5kIGEgc2Vjb25kCnB1cnBvc2UuCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMTggKysrKysrKysrKysrKy0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCA5ZjFkYzk2
YjEwYTYuLjlkOGQ3NTc2NWVlNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY29udGV4dC5jCkBAIC0xMTQxLDggKzExNDEsNiBAQCBzdGF0aWMgaW50IGVtaXRfcHBndHRf
dXBkYXRlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQogCQkqY3MrKyA9IE1J
X05PT1A7CiAJCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwogCX0gZWxzZSB7Ci0JCS8qIHBw
R1RUIGlzIG5vdCBwYXJ0IG9mIHRoZSBsZWdhY3kgY29udGV4dCBpbWFnZSAqLwotCQlnZW42X3Bw
Z3R0X3BpbihpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7CiAJfQogCiAJcmV0dXJuIDA7CkBAIC0xMTUw
LDEwICsxMTQ4LDIwIEBAIHN0YXRpYyBpbnQgZW1pdF9wcGd0dF91cGRhdGUoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEsIHZvaWQgKmRhdGEpCiAKIHN0YXRpYyBib29sIHNraXBfcHBndHRfdXBkYXRl
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqZGF0YSkKIHsKKwlpZiAoIXRlc3RfYml0
KENPTlRFWFRfQUxMT0NfQklULCAmY2UtPmZsYWdzKSkKKwkJcmV0dXJuIHRydWU7CisKIAlpZiAo
SEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhjZS0+ZW5naW5lLT5pOTE1KSkKLQkJcmV0dXJuICFj
ZS0+c3RhdGU7Ci0JZWxzZQotCQlyZXR1cm4gIWF0b21pY19yZWFkKCZjZS0+cGluX2NvdW50KTsK
KwkJcmV0dXJuIGZhbHNlOworCisJaWYgKCFhdG9taWNfcmVhZCgmY2UtPnBpbl9jb3VudCkpCisJ
CXJldHVybiB0cnVlOworCisJLyogcHBHVFQgaXMgbm90IHBhcnQgb2YgdGhlIGxlZ2FjeSBjb250
ZXh0IGltYWdlICovCisJaWYgKGdlbjZfcHBndHRfcGluKGk5MTVfdm1fdG9fcHBndHQoY2UtPnZt
KSkpCisJCXJldHVybiB0cnVlOworCisJcmV0dXJuIGZhbHNlOwogfQogCiBzdGF0aWMgaW50IHNl
dF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYsCi0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
