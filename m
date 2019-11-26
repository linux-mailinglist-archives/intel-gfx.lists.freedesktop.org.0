Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAB210A26A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 17:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B914389350;
	Tue, 26 Nov 2019 16:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06EC6E43B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 16:47:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19347261-1500050 
 for multiple; Tue, 26 Nov 2019 16:47:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 16:47:12 +0000
Message-Id: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: If reconfigure_sseu is busy,
 try again
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

Rm9sbG93aW5nIDU4YjRjMWEwN2FkYSAoImRybS9pOTE1OiBSZWR1Y2UgbmVzdGVkIHByZXBhcmVf
cmVtb3RlX2NvbnRleHQoKQp0byBhIHRyeWxvY2siKSwgd2UgcHVudCB0byB0aGUgY2FsbGVyIGlm
IHRoZSBsb2NhbCBpbnRlbF9jb250ZXh0CmhhcHBlbnMgdG8gYmUgYnVzeSBhcyB3ZSB0cnkgdG8g
cmV3cml0ZSB0aGUgc3NldSAoZHVlIHRvIHJldGlyaW5nIGluCmFub3RoZXIgdGhyZWFkKS4gQXMg
dGhlIGludGVybHVkZSBzaG91bGQgYmUgc2hvcnQsIHNwaW4gdW50aWwgdGhlIGxvY2sKaXMgYXZh
aWxhYmxlLgoKVGhlIHJlZ3JldCBmb3IgdXNpbmcgbXV0ZXhfdHJ5bG9jaygpIGFuZCBub3QgYW4g
YXRvbWljIGluc2VydGlvbiBvZiB0aGUKYmFycmllciBpcyBncm93aW5nLi4uCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCA1ICsrKystCiAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCAyZWE0
NzkwZjM3MjEuLjU3MWNjOTk2NTc3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTExOTcsNyArMTE5NywxMCBA
QCBfX3NzZXVfdGVzdChjb25zdCBjaGFyICpuYW1lLAogCWlmIChyZXQpCiAJCWdvdG8gb3V0X3Bt
OwogCi0JcmV0ID0gaW50ZWxfY29udGV4dF9yZWNvbmZpZ3VyZV9zc2V1KGNlLCBzc2V1KTsKKwlk
byB7CisJCXJldCA9IGludGVsX2NvbnRleHRfcmVjb25maWd1cmVfc3NldShjZSwgc3NldSk7CisJ
CWNvbmRfcmVzY2hlZCgpOworCX0gd2hpbGUgKHJldCA9PSAtRUFHQUlOKTsKIAlpZiAocmV0KQog
CQlnb3RvIG91dF9zcGluOwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
