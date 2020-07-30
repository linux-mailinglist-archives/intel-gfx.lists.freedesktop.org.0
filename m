Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D80232FB0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEBB6E8BC;
	Thu, 30 Jul 2020 09:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E150B6E8AD
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:38:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21979049-1500050 
 for multiple; Thu, 30 Jul 2020 10:37:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:37:36 +0100
Message-Id: <20200730093756.16737-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730093756.16737-1-chris@chris-wilson.co.uk>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/21] drm/i915: Add a couple of missing
 i915_active_fini()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgdXNlIGk5MTVfYWN0aXZlX2ZpbmkoKSBhcyBhIGRlYnVnIGNoZWNrIG9uIHRoZSBpOTE1X2Fj
dGl2ZSBzdGF0ZQpiZWZvcmUgZnJlZWluZy4gSWYgd2UgZm9yZ2V0IHRvIGNhbGwgaXQsIHdlIG1h
eSBlbmQgdXAgYW5nZXJpbmcgdGhlCmRlYnVnb2JqZWN0cyBjb250YWluZWQgd2l0aGluLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmll
d2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYyAgICB8IDIg
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYyB8
IDUgKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1
ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5j
CmluZGV4IDI5NzllZDI1ODhlYi4uZDg5OGIzNzBkN2E0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jCkBAIC0yMzIsNiArMjMyLDggQEAg
c3RhdGljIHZvaWQgZnJvbnRidWZmZXJfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqcmVmKQogCVJDVV9J
TklUX1BPSU5URVIob2JqLT5mcm9udGJ1ZmZlciwgTlVMTCk7CiAJc3Bpbl91bmxvY2soJnRvX2k5
MTUob2JqLT5iYXNlLmRldiktPmZiX3RyYWNraW5nLmxvY2spOwogCisJaTkxNV9hY3RpdmVfZmlu
aSgmZnJvbnQtPndyaXRlKTsKKwogCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAlrZnJlZV9y
Y3UoZnJvbnQsIHJjdSk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMKaW5kZXggNzMyNDNiYTU5YzdkLi5lNzM4NTRkZDJmZTAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFy
dGJlYXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVh
cnRiZWF0LmMKQEAgLTQ3LDcgKzQ3LDEwIEBAIHN0YXRpYyBpbnQgcHVsc2VfYWN0aXZlKHN0cnVj
dCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQogCiBzdGF0aWMgdm9pZCBwdWxzZV9mcmVlKHN0cnVjdCBr
cmVmICprcmVmKQogewotCWtmcmVlKGNvbnRhaW5lcl9vZihrcmVmLCBzdHJ1Y3QgcHVsc2UsIGty
ZWYpKTsKKwlzdHJ1Y3QgcHVsc2UgKnAgPSBjb250YWluZXJfb2Yoa3JlZiwgdHlwZW9mKCpwKSwg
a3JlZik7CisKKwlpOTE1X2FjdGl2ZV9maW5pKCZwLT5hY3RpdmUpOworCWtmcmVlKHApOwogfQog
CiBzdGF0aWMgdm9pZCBwdWxzZV9wdXQoc3RydWN0IHB1bHNlICpwKQotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
