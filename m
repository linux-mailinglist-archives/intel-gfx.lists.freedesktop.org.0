Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6240113006
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 17:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AAD6E92E;
	Wed,  4 Dec 2019 16:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39B26E92E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 16:29:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19459398-1500050 
 for multiple; Wed, 04 Dec 2019 16:28:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 16:28:03 +0000
Message-Id: <20191204162803.3841140-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Hook user-extensions upto
 MMAP_OFFSET_IOCTL
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
Cc: Chris Wilson <ickle@braswell.alporthouse.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxpY2tsZUBicmFzd2VsbC5hbHBvcnRob3VzZS5jb20+CgpDYWxs
IGk5MTVfdXNlcl9leHRlbnNpb25zKCkgdG8gdmFsaWRhdGUgdGhlIGFyZy0+ZXh0ZW5zaW9ucyBw
b2ludGVyLCBhbmQKc28gcmV0dXJuIGNvbnNpc3RlbnQgZXJyb3IgbnVtYmVycyBmb3IgdGhlIGZ1
dHVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29t
PgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCA4ICsrKysrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jCmluZGV4IDM3YWFiYmZhODY5YS4uM2EzZjMwYmM4YWM3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTE3LDYgKzE3LDcg
QEAKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3QuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9tbWFu
LmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgorI2luY2x1ZGUgImk5MTVfdXNlcl9leHRlbnNp
b25zLmgiCiAjaW5jbHVkZSAiaTkxNV92bWEuaCIKIAogc3RhdGljIGlubGluZSBib29sCkBAIC02
MTcsOSArNjE4LDEyIEBAIGk5MTVfZ2VtX21tYXBfb2Zmc2V0X2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGRldik7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCAqYXJncyA9IGRh
dGE7CiAJZW51bSBpOTE1X21tYXBfdHlwZSB0eXBlOworCWludCBlcnI7CiAKLQlpZiAoYXJncy0+
ZXh0ZW5zaW9ucykKLQkJcmV0dXJuIC1FSU5WQUw7CisJZXJyID0gaTkxNV91c2VyX2V4dGVuc2lv
bnModTY0X3RvX3VzZXJfcHRyKGFyZ3MtPmV4dGVuc2lvbnMpLAorCQkJCSAgIE5VTEwsIDAsIE5V
TEwpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CiAKIAlzd2l0Y2ggKGFyZ3MtPmZsYWdzKSB7
CiAJY2FzZSBJOTE1X01NQVBfT0ZGU0VUX0dUVDoKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
