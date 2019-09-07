Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB692AC568
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 10:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A4089EA6;
	Sat,  7 Sep 2019 08:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F9D89EA6
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 08:58:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18406806-1500050 
 for multiple; Sat, 07 Sep 2019 09:57:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 09:57:41 +0100
Message-Id: <20190907085741.9916-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907083513.28625-1-chris@chris-wilson.co.uk>
References: <20190907083513.28625-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Perform GGTT restore much earlier
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
aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCi0tLQpEb24n
dCBmb3JnZXQgdGhlIHNlbGZ0ZXN0IQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jICAgIHwgMyAtLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAg
ICAgICAgIHwgNSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
LmMgfCAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IGIzOTkzZDI0Yjgz
ZC4uOWIxMTI5YWFhY2ZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwpA
QCAtMjQyLDkgKzI0Miw2IEBAIHZvaWQgaTkxNV9nZW1fcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCWlu
dGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KCZpOTE1LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwog
Ci0JaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGluZ3MoaTkxNSk7Ci0JaTkxNV9nZW1fcmVzdG9y
ZV9mZW5jZXMoaTkxNSk7Ci0KIAlpZiAoaTkxNV9nZW1faW5pdF9odyhpOTE1KSkKIAkJZ290byBl
cnJfd2VkZ2VkOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA3YjJjODFhOGJiYWEuLjFh
ZjRlYmE5NjhjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0xODc3LDYgKzE4NzcsMTEg
QEAgc3RhdGljIGludCBpOTE1X2RybV9yZXN1bWUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlp
ZiAocmV0KQogCQlEUk1fRVJST1IoImZhaWxlZCB0byByZS1lbmFibGUgR0dUVFxuIik7CiAKKwlt
dXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CisJaTkxNV9nZW1fcmVzdG9y
ZV9ndHRfbWFwcGluZ3MoZGV2X3ByaXYpOworCWk5MTVfZ2VtX3Jlc3RvcmVfZmVuY2VzKGRldl9w
cml2KTsKKwltdXRleF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKKwogCWlu
dGVsX2Nzcl91Y29kZV9yZXN1bWUoZGV2X3ByaXYpOwogCiAJaTkxNV9yZXN0b3JlX3N0YXRlKGRl
dl9wcml2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKaW5kZXgg
YmI2ZGQ1NGE2ZmYzLi45ZmJhOTAyYjhhYWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2dlbS5jCkBAIC0xMTgsNiArMTE4LDggQEAgc3RhdGljIHZvaWQgcG1fcmVzdW1l
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXdpdGhfaW50ZWxfcnVudGltZV9wbSgm
aTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZikgewogCQlpbnRlbF9ndF9zYW5pdGl6ZSgmaTkxNS0+
Z3QsIGZhbHNlKTsKIAkJaTkxNV9nZW1fc2FuaXRpemUoaTkxNSk7CisJCWk5MTVfZ2VtX3Jlc3Rv
cmVfZ3R0X21hcHBpbmdzKGk5MTUpOworCQlpOTE1X2dlbV9yZXN0b3JlX2ZlbmNlcyhpOTE1KTsK
IAkJaTkxNV9nZW1fcmVzdW1lKGk5MTUpOwogCX0KIH0KLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
