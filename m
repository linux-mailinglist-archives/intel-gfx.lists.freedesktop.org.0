Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3683AC55C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 10:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58ADA89DE1;
	Sat,  7 Sep 2019 08:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBE789DE1
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 08:36:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18406665-1500050 
 for multiple; Sat, 07 Sep 2019 09:35:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 09:35:13 +0100
Message-Id: <20190907083513.28625-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Perform GGTT restore much earlier
 during resume
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgc29vbiBhcyB3ZSByZS1lbmFibGUgdGhlIHZhcmlvdXMgZnVuY3Rpb25zIHdpdGhpbiB0aGUg
SFcsIHRoZXkgbWF5IGdvCm9mZiBhbmQgcmVhZCBkYXRhIHZpYSBhIEdHVFQgb2Zmc2V0LiBIZW5j
ZSwgaWYgd2UgaGF2ZSBub3QgeWV0IHJlc3RvcmVkCnRoZSBHR1RUIFBURSBiZWZvcmUgdGhlbiwg
dGhleSBtYXkgcmVhZCBhbmQgZXZlbiAqd3JpdGUqIHJhbmRvbSBsb2NhdGlvbnMKaW4gbWVtb3J5
LgoKRGV0ZWN0ZWQgYnkgRE1BUiBmYXVsdHMgZHVyaW5nIHJlc3VtZS4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXJ0aW4gUGVyZXMgPG1hcnRp
bi5wZXJlc0BsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCi0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgfCAzIC0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgfCA1ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jCmluZGV4IGIzOTkzZDI0YjgzZC4uOWIxMTI5YWFhY2ZlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwpAQCAtMjQyLDkgKzI0Miw2IEBAIHZvaWQgaTkxNV9n
ZW1fcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCW11dGV4X2xvY2soJmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KCZpOTE1
LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCi0JaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGlu
Z3MoaTkxNSk7Ci0JaTkxNV9nZW1fcmVzdG9yZV9mZW5jZXMoaTkxNSk7Ci0KIAlpZiAoaTkxNV9n
ZW1faW5pdF9odyhpOTE1KSkKIAkJZ290byBlcnJfd2VkZ2VkOwogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwppbmRleCA3YjJjODFhOGJiYWEuLjFhZjRlYmE5NjhjMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCkBAIC0xODc3LDYgKzE4NzcsMTEgQEAgc3RhdGljIGludCBpOTE1X2RybV9yZXN1bWUo
c3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlpZiAocmV0KQogCQlEUk1fRVJST1IoImZhaWxlZCB0
byByZS1lbmFibGUgR0dUVFxuIik7CiAKKwltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVj
dF9tdXRleCk7CisJaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGluZ3MoZGV2X3ByaXYpOworCWk5
MTVfZ2VtX3Jlc3RvcmVfZmVuY2VzKGRldl9wcml2KTsKKwltdXRleF91bmxvY2soJmRldl9wcml2
LT5kcm0uc3RydWN0X211dGV4KTsKKwogCWludGVsX2Nzcl91Y29kZV9yZXN1bWUoZGV2X3ByaXYp
OwogCiAJaTkxNV9yZXN0b3JlX3N0YXRlKGRldl9wcml2KTsKLS0gCjIuMjMuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
