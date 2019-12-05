Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FCD1149EE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 00:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D9A6F92D;
	Thu,  5 Dec 2019 23:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090E96F92D
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 23:41:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19477481-1500050 
 for multiple; Thu, 05 Dec 2019 23:41:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 23:40:59 +0000
Message-Id: <20191205234059.1010030-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Trim gen6 ppgtt updates to PD
 cachelines
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

SXQgYXBwZWFycyBub3cgdGhhdCB3ZSBoYXZlIHRoZSByaW5nIFRMQiBpbnZhbGlkYXRpb24gaW4g
cGxhY2UsIHdlIG5lZWQKb25seSB1cGRhdGUgdGhlIHBhZ2UgZGlyZWN0b3J5IGNhY2hlbGluZXMg
dGhhdCB3ZSBoYXZlIGFsdGVyZWQuIEEgZ3JlYXQKcmVkdWN0aW9uIGZyb20gcmV3cml0aW5nIHRo
ZSB3aG9sZSAyTWlCIHBwZ3R0IG9uIGV2ZXJ5IHVwZGF0ZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIHwgMTIgKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKaW5kZXggNGRhMWRmZTExMDA3Li42YTIxODM0NDJmZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCkBAIC0xNjkzLDE1ICsxNjkzLDE4IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBn
dHRfaW5zZXJ0X2VudHJpZXMoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJdm1hLT5w
YWdlX3NpemVzLmd0dCA9IEk5MTVfR1RUX1BBR0VfU0laRTsKIH0KIAotc3RhdGljIHZvaWQgZ2Vu
Nl9mbHVzaF9wZChzdHJ1Y3QgZ2VuNl9wcGd0dCAqcHBndHQpCitzdGF0aWMgdm9pZCBnZW42X2Zs
dXNoX3BkKHN0cnVjdCBnZW42X3BwZ3R0ICpwcGd0dCwgdTY0IHN0YXJ0LCB1NjQgZW5kKQogewog
CXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICogY29uc3QgcGQgPSBwcGd0dC0+YmFzZS5wZDsK
IAlzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpwdDsKIAl1bnNpZ25lZCBpbnQgcGRlOwogCisJc3Rh
cnQgPSByb3VuZF9kb3duKHN0YXJ0LCBTWl82NEspOworCWVuZCA9IHJvdW5kX3VwKGVuZCwgU1pf
NjRLKSAtIHN0YXJ0OworCiAJbXV0ZXhfbG9jaygmcHBndHQtPmZsdXNoKTsKIAotCWdlbjZfZm9y
X2FsbF9wZGVzKHB0LCBwZCwgcGRlKQorCWdlbjZfZm9yX2VhY2hfcGRlKHB0LCBwZCwgc3RhcnQs
IGVuZCwgcGRlKQogCQlnZW42X3dyaXRlX3BkZShwcGd0dCwgcGRlLCBwdCk7CiAKIAlpb3JlYWQz
MihwcGd0dC0+cGRfYWRkciArIHBkZSAtIDEpOwpAQCAtMTc1NCw4ICsxNzU3LDcgQEAgc3RhdGlj
IGludCBnZW42X2FsbG9jX3ZhX3JhbmdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAog
CXNwaW5fdW5sb2NrKCZwZC0+bG9jayk7CiAKIAlpZiAoaTkxNV92bWFfaXNfYm91bmQocHBndHQt
PnZtYSwgSTkxNV9WTUFfR0xPQkFMX0JJTkQpKQotCQkvKiBSZXdyaXRlIHRoZW0gYWxsISBBbnl0
aGluZyBsZXNzIG1pc3NlcyBhbiBpbnZhbGlkYXRlLiAqLwotCQlnZW42X2ZsdXNoX3BkKHBwZ3R0
KTsKKwkJZ2VuNl9mbHVzaF9wZChwcGd0dCwgZnJvbSwgc3RhcnQpOwogCiAJZ290byBvdXQ7CiAK
QEAgLTE4NDQsNyArMTg0Niw3IEBAIHN0YXRpYyBpbnQgcGRfdm1hX2JpbmQoc3RydWN0IGk5MTVf
dm1hICp2bWEsCiAJcHhfYmFzZShwcGd0dC0+YmFzZS5wZCktPmdndHRfb2Zmc2V0ID0gZ2d0dF9v
ZmZzZXQgKiBzaXplb2YoZ2VuNl9wdGVfdCk7CiAJcHBndHQtPnBkX2FkZHIgPSAoZ2VuNl9wdGVf
dCBfX2lvbWVtICopZ2d0dC0+Z3NtICsgZ2d0dF9vZmZzZXQ7CiAKLQlnZW42X2ZsdXNoX3BkKHBw
Z3R0KTsKKwlnZW42X2ZsdXNoX3BkKHBwZ3R0LCAwLCBwcGd0dC0+YmFzZS52bS50b3RhbCk7CiAJ
cmV0dXJuIDA7CiB9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
