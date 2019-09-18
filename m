Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C648BB66E0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 17:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33DCD6F3DE;
	Wed, 18 Sep 2019 15:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240996F3DE;
 Wed, 18 Sep 2019 15:16:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18534169-1500050 
 for multiple; Wed, 18 Sep 2019 16:16:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 16:16:28 +0100
Message-Id: <20190918151628.9880-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] kms_dp_tiled_display: Fix the double free
 of drmConnector
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJtQ29ubmVjdG9yRnJlZSBpcyBjYWxsZWQgaW5zaWRlIHRoZSBsb29wIGFuZCBhZnRlci4gTm90
IHVuc3VycHJpc2luZ2x5CnRoaXMgbGVhZHMgdG8gYSB1c2UtYWZ0ZXItZnJlZSBhbmQgbWVtY29y
cnVwdGlvbi4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE3MTAKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
PgotLS0KIHRlc3RzL2ttc19kcF90aWxlZF9kaXNwbGF5LmMgfCAyOCArKysrKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMva21zX2RwX3RpbGVkX2Rpc3BsYXkuYyBiL3Rlc3Rz
L2ttc19kcF90aWxlZF9kaXNwbGF5LmMKaW5kZXggYzQ2NDNjMzU4Li5kYzQ4NjZkMmYgMTAwNjQ0
Ci0tLSBhL3Rlc3RzL2ttc19kcF90aWxlZF9kaXNwbGF5LmMKKysrIGIvdGVzdHMva21zX2RwX3Rp
bGVkX2Rpc3BsYXkuYwpAQCAtMTAwLDM3ICsxMDAsMjkgQEAgY2xlYW51cDoKIAogc3RhdGljIHZv
aWQgZ2V0X251bWJlcl9vZl9oX3RpbGVzKGRhdGFfdCAqZGF0YSkKIHsKLQlpbnQgaTsKKwlpZ3Rf
dGlsZV9pbmZvX3QgdGlsZSA9IHt9OwogCWRybU1vZGVSZXNQdHIgcmVzOwotCWRybU1vZGVDb25u
ZWN0b3JQdHIgY29ubmVjdG9yOwotCWlndF90aWxlX2luZm9fdCB0aWxlID0gey5udW1faF90aWxl
ID0gMH07CiAKIAlpZ3RfYXNzZXJ0KHJlcyA9IGRybU1vZGVHZXRSZXNvdXJjZXMoZGF0YS0+ZHJt
X2ZkKSk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgcmVzLT5jb3VudF9jb25uZWN0b3JzOyBpKyspIHsK
Kwlmb3IgKGludCBpID0gMDsgIWRhdGEtPm51bV9oX3RpbGVzICYmIGkgPCByZXMtPmNvdW50X2Nv
bm5lY3RvcnM7IGkrKykgeworCQlkcm1Nb2RlQ29ubmVjdG9yUHRyIGNvbm5lY3RvcjsKKwogCQlj
b25uZWN0b3IgPSBkcm1Nb2RlR2V0Q29ubmVjdG9yQ3VycmVudChkYXRhLT5kcm1fZmQsCiAJCQkJ
CQkgICAgICAgcmVzLT5jb25uZWN0b3JzW2ldKTsKLQogCQlpZ3RfYXNzZXJ0KGNvbm5lY3Rvcik7
CiAKLQkJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdGlvbiAhPSBEUk1fTU9ERV9DT05ORUNURUQgfHwK
LQkJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgIT0gRFJNX01PREVfQ09OTkVDVE9SX0Rp
c3BsYXlQb3J0KSB7Ci0JCQlkcm1Nb2RlRnJlZUNvbm5lY3Rvcihjb25uZWN0b3IpOwotCQkJY29u
dGludWU7Ci0JCX0KLQotCQlnZXRfY29ubmVjdG9yX3RpbGVfcHJvcHMoZGF0YSwgY29ubmVjdG9y
LCAmdGlsZSk7CisJCWlmIChjb25uZWN0b3ItPmNvbm5lY3Rpb24gPT0gRFJNX01PREVfQ09OTkVD
VEVEICYmCisJCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5F
Q1RPUl9EaXNwbGF5UG9ydCkgeworCQkJZ2V0X2Nvbm5lY3Rvcl90aWxlX3Byb3BzKGRhdGEsIGNv
bm5lY3RvciwgJnRpbGUpOwogCi0JCWlmICh0aWxlLm51bV9oX3RpbGUgPT0gMCkgewotCQkJZHJt
TW9kZUZyZWVDb25uZWN0b3IoY29ubmVjdG9yKTsKLQkJCWNvbnRpbnVlOworCQkJZGF0YS0+bnVt
X2hfdGlsZXMgPSB0aWxlLm51bV9oX3RpbGU7CiAJCX0KLQkJZGF0YS0+bnVtX2hfdGlsZXMgPSB0
aWxlLm51bV9oX3RpbGU7Ci0JCWJyZWFrOworCisJCWRybU1vZGVGcmVlQ29ubmVjdG9yKGNvbm5l
Y3Rvcik7CiAJfQogCiAJZHJtTW9kZUZyZWVSZXNvdXJjZXMocmVzKTsKLQlkcm1Nb2RlRnJlZUNv
bm5lY3Rvcihjb25uZWN0b3IpOwogfQogCiBzdGF0aWMgdm9pZCBnZXRfY29ubmVjdG9ycyhkYXRh
X3QgKmRhdGEpCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
