Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 650D5AD782
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 13:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD3F89B61;
	Mon,  9 Sep 2019 11:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10F589B84
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 11:00:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18424996-1500050 
 for multiple; Mon, 09 Sep 2019 12:00:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:00:08 +0100
Message-Id: <20190909110011.8958-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909110011.8958-1-chris@chris-wilson.co.uk>
References: <20190909110011.8958-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Perform GGTT restore much earlier
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
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgICAgfCAzIC0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYyB8IDYgKysrKysrCiAzIGZpbGVzIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcG0uYwppbmRleCBiMzk5M2QyNGI4M2QuLjliMTEyOWFhYWNmZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTI0Miw5ICsyNDIsNiBAQCB2b2lkIGk5
MTVfZ2VtX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAltdXRleF9sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCgm
aTkxNS0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAotCWk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21h
cHBpbmdzKGk5MTUpOwotCWk5MTVfZ2VtX3Jlc3RvcmVfZmVuY2VzKGk5MTUpOwotCiAJaWYgKGk5
MTVfZ2VtX2luaXRfaHcoaTkxNSkpCiAJCWdvdG8gZXJyX3dlZGdlZDsKIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKaW5kZXggN2IyYzgxYThiYmFhLi4xYWY0ZWJhOTY4YzAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwpAQCAtMTg3Nyw2ICsxODc3LDExIEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVz
dW1lKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJaWYgKHJldCkKIAkJRFJNX0VSUk9SKCJmYWls
ZWQgdG8gcmUtZW5hYmxlIEdHVFRcbiIpOwogCisJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRybS5z
dHJ1Y3RfbXV0ZXgpOworCWk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBpbmdzKGRldl9wcml2KTsK
KwlpOTE1X2dlbV9yZXN0b3JlX2ZlbmNlcyhkZXZfcHJpdik7CisJbXV0ZXhfdW5sb2NrKCZkZXZf
cHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CisKIAlpbnRlbF9jc3JfdWNvZGVfcmVzdW1lKGRldl9w
cml2KTsKIAogCWk5MTVfcmVzdG9yZV9zdGF0ZShkZXZfcHJpdik7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCmluZGV4IGJiNmRkNTRhNmZmMy4uMzc1OTM4MzFiNTM5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYwpAQCAtMTE4LDYg
KzExOCwxMiBAQCBzdGF0aWMgdm9pZCBwbV9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJd2l0aF9pbnRlbF9ydW50aW1lX3BtKCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVm
KSB7CiAJCWludGVsX2d0X3Nhbml0aXplKCZpOTE1LT5ndCwgZmFsc2UpOwogCQlpOTE1X2dlbV9z
YW5pdGl6ZShpOTE1KTsKKworCQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
KwkJaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGluZ3MoaTkxNSk7CisJCWk5MTVfZ2VtX3Jlc3Rv
cmVfZmVuY2VzKGk5MTUpOworCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OworCiAJCWk5MTVfZ2VtX3Jlc3VtZShpOTE1KTsKIAl9CiB9Ci0tIAoyLjIzLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
