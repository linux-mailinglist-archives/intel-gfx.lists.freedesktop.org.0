Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AB949AEE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 09:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1756E124;
	Tue, 18 Jun 2019 07:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B90446E10D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 07:43:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16935656-1500050 
 for multiple; Tue, 18 Jun 2019 08:42:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 08:41:42 +0100
Message-Id: <20190618074153.16055-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618074153.16055-1-chris@chris-wilson.co.uk>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/26] drm/i915: Remove waiting & retiring from
 shrinker paths
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

aTkxNV9nZW1fd2FpdF9mb3JfaWRsZSgpIGFuZCBpOTE1X3JldGlyZV9yZXF1ZXN0cygpIGludHJv
ZHVjZSBhCmRlcGVuZGVuY3kgb24gdGhlIHRpbWVsaW5lLT5tdXRleC4gVGhpcyBpcyBwcm9ibGVt
YXRpYyBhcyB3ZSB3YW50IHRvCmxhdGVyIHBlcmZvcm0gYWxsb2NhdGlvbnMgdW5kZXJuZWF0aCBp
OTE1X2FjdGl2ZS5tdXRleCwgZm9ybWluZyBhIGxpbmsKYmV0d2VlbiB0aGUgc2hyaW5rZXIsIHRo
ZSB0aW1lbGluZSBhbmQgYWN0aXZlIG11dGV4ZXMuIE5pcCB0aGlzIGN5Y2xlIGluCnRoZSBidWQg
YnkgcmVtb3ZpbmcgdGhlIGFjcXVpc2l0aW9uIG9mIHRoZSB0aW1lbGluZSBtdXRleCAoaS5lLgpy
ZXRpcmluZykgZnJvbSBpbnNpZGUgdGhlIHNocmlua2VyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgfCAxMCAtLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3RpbWVsaW5lLmMgICAgICAgICB8ICAzIC0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fc2hyaW5rZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9z
aHJpbmtlci5jCmluZGV4IDNhOTI2YTg3NTVjNi4uMWJiYzY5MDQ5NGM3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwpAQCAtMTY5LDcgKzE2OSw2IEBA
IGk5MTVfZ2VtX3NocmluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkgKi8KIAog
CXRyYWNlX2k5MTVfZ2VtX3NocmluayhpOTE1LCB0YXJnZXQsIHNocmluayk7Ci0JaTkxNV9yZXRp
cmVfcmVxdWVzdHMoaTkxNSk7CiAKIAkvKgogCSAqIFVuYmluZGluZyBvZiBvYmplY3RzIHdpbGwg
cmVxdWlyZSBIVyBhY2Nlc3M7IExldCB1cyBub3Qgd2FrZSB0aGUKQEAgLTI2OSw4ICsyNjgsNiBA
QCBpOTE1X2dlbV9zaHJpbmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJaWYgKHNo
cmluayAmIEk5MTVfU0hSSU5LX0JPVU5EKQogCQlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+
cnVudGltZV9wbSwgd2FrZXJlZik7CiAKLQlpOTE1X3JldGlyZV9yZXF1ZXN0cyhpOTE1KTsKLQog
CXNocmlua2VyX3VubG9jayhpOTE1LCB1bmxvY2spOwogCiAJaWYgKG5yX3NjYW5uZWQpCkBAIC00
MjcsMTIgKzQyNCw2IEBAIGk5MTVfZ2VtX3Nocmlua2VyX3ZtYXAoc3RydWN0IG5vdGlmaWVyX2Js
b2NrICpuYiwgdW5zaWduZWQgbG9uZyBldmVudCwgdm9pZCAqcHRyCiAJaWYgKCFzaHJpbmtlcl9s
b2NrKGk5MTUsIDAsICZ1bmxvY2spKQogCQlyZXR1cm4gTk9USUZZX0RPTkU7CiAKLQkvKiBGb3Jj
ZSBldmVyeXRoaW5nIG9udG8gdGhlIGluYWN0aXZlIGxpc3RzICovCi0JaWYgKGk5MTVfZ2VtX3dh
aXRfZm9yX2lkbGUoaTkxNSwKLQkJCQkgICBJOTE1X1dBSVRfTE9DS0VELAotCQkJCSAgIE1BWF9T
Q0hFRFVMRV9USU1FT1VUKSkKLQkJZ290byBvdXQ7Ci0KIAl3aXRoX2ludGVsX3J1bnRpbWVfcG0o
Jmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpCiAJCWZyZWVkX3BhZ2VzICs9IGk5MTVfZ2VtX3No
cmluayhpOTE1LCAtMVVMLCBOVUxMLAogCQkJCQkgICAgICAgSTkxNV9TSFJJTktfQk9VTkQgfApA
QCAtNDU1LDcgKzQ0Niw2IEBAIGk5MTVfZ2VtX3Nocmlua2VyX3ZtYXAoc3RydWN0IG5vdGlmaWVy
X2Jsb2NrICpuYiwgdW5zaWduZWQgbG9uZyBldmVudCwgdm9pZCAqcHRyCiAJfQogCW11dGV4X3Vu
bG9jaygmaTkxNS0+Z2d0dC52bS5tdXRleCk7CiAKLW91dDoKIAlzaHJpbmtlcl91bmxvY2soaTkx
NSwgdW5sb2NrKTsKIAogCSoodW5zaWduZWQgbG9uZyAqKXB0ciArPSBmcmVlZF9wYWdlczsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdGltZWxpbmUuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdGltZWxpbmUuYwppbmRleCBjMzExY2U5YzZmOWQuLmYzZWUyNjRk
N2RkNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdGltZWxpbmUuYwpAQCAtMjcwLDkgKzI3MCw2
IEBAIHZvaWQgaTkxNV90aW1lbGluZXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIAogCXNwaW5fbG9ja19pbml0KCZndC0+aHdzcF9sb2NrKTsKIAlJTklUX0xJU1RfSEVBRCgm
Z3QtPmh3c3BfZnJlZV9saXN0KTsKLQotCS8qIHZpYSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKCkg
Ki8KLQlpOTE1X2dlbV9zaHJpbmtlcl90YWludHNfbXV0ZXgoaTkxNSwgJmd0LT5tdXRleCk7CiB9
CiAKIHN0YXRpYyB2b2lkIHRpbWVsaW5lX2FkZF90b19hY3RpdmUoc3RydWN0IGk5MTVfdGltZWxp
bmUgKnRsKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
