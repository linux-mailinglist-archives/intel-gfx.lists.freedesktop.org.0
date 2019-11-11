Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61063F7502
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 14:32:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CC86E233;
	Mon, 11 Nov 2019 13:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C146E233
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 13:32:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19159919-1500050 
 for multiple; Mon, 11 Nov 2019 13:32:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 13:32:04 +0000
Message-Id: <20191111133205.11590-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111133205.11590-1-chris@chris-wilson.co.uk>
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [FIXES 2/3] drm/i915/userptr: Handle unlocked gup
 retries
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

RW5hYmxlIGd1cCB0byByZXRyeSBhbmQgZmF1bHQgdGhlIHBhZ2VzIG91dHNpZGUgb2YgdGhlIG1t
YXBfc2VtIGxvY2sgaW4Kb3VyIHdvcmtlci4gQXMgd2UgYXJlIGluc2lkZSBvdXIgd29ya2VyLCBv
dXRzaWRlIG9mIGFueSBjcml0aWNhbCBwYXRoLAp3ZSBjYW4gYWxsb3cgdGhlIG1tYXBfc2VtIGxv
Y2sgdG8gYmUgZHJvcHBlZCBpbiBvcmRlciB0byBzZXJ2aWNlIGEgcGFnZQpmYXVsdDsgdGhpcyBp
biB0dXJuIGFsbG93cyB0aGUgbW0gdG8gcG9wdWxhdGUgdGhlIHBhZ2UgdXNpbmcgYSBzbG93CmZh
dWx0IGhhbmRsZXIuCgpUZXN0Y2FzZTogaWd0L2dlbV91c2VycHRyL3VzZXJmYXVsdApTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDExICsrKysrKysrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4IGRkMTA0YjBlMjA3MS4uNTRlYmM3YWI3
MWJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKQEAg
LTQ1OSwyNiArNDU5LDMxIEBAIF9faTkxNV9nZW1fdXNlcnB0cl9nZXRfcGFnZXNfd29ya2VyKHN0
cnVjdCB3b3JrX3N0cnVjdCAqX3dvcmspCiAJaWYgKHB2ZWMgIT0gTlVMTCkgewogCQlzdHJ1Y3Qg
bW1fc3RydWN0ICptbSA9IG9iai0+dXNlcnB0ci5tbS0+bW07CiAJCXVuc2lnbmVkIGludCBmbGFn
cyA9IDA7CisJCWludCBsb2NrZWQgPSAwOwogCiAJCWlmICghaTkxNV9nZW1fb2JqZWN0X2lzX3Jl
YWRvbmx5KG9iaikpCiAJCQlmbGFncyB8PSBGT0xMX1dSSVRFOwogCiAJCXJldCA9IC1FRkFVTFQ7
CiAJCWlmIChtbWdldF9ub3RfemVybyhtbSkpIHsKLQkJCWRvd25fcmVhZCgmbW0tPm1tYXBfc2Vt
KTsKIAkJCXdoaWxlIChwaW5uZWQgPCBucGFnZXMpIHsKKwkJCQlpZiAoIWxvY2tlZCkgeworCQkJ
CQlkb3duX3JlYWQoJm1tLT5tbWFwX3NlbSk7CisJCQkJCWxvY2tlZCA9IDE7CisJCQkJfQogCQkJ
CXJldCA9IGdldF91c2VyX3BhZ2VzX3JlbW90ZQogCQkJCQkod29yay0+dGFzaywgbW0sCiAJCQkJ
CSBvYmotPnVzZXJwdHIucHRyICsgcGlubmVkICogUEFHRV9TSVpFLAogCQkJCQkgbnBhZ2VzIC0g
cGlubmVkLAogCQkJCQkgZmxhZ3MsCi0JCQkJCSBwdmVjICsgcGlubmVkLCBOVUxMLCBOVUxMKTsK
KwkJCQkJIHB2ZWMgKyBwaW5uZWQsIE5VTEwsICZsb2NrZWQpOwogCQkJCWlmIChyZXQgPCAwKQog
CQkJCQlicmVhazsKIAogCQkJCXBpbm5lZCArPSByZXQ7CiAJCQl9Ci0JCQl1cF9yZWFkKCZtbS0+
bW1hcF9zZW0pOworCQkJaWYgKGxvY2tlZCkKKwkJCQl1cF9yZWFkKCZtbS0+bW1hcF9zZW0pOwog
CQkJbW1wdXQobW0pOwogCQl9CiAJfQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
