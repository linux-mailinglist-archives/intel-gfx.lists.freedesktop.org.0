Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFBCC3660
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 15:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDEE89BAB;
	Tue,  1 Oct 2019 13:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0E089A56
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 13:54:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18680485-1500050 
 for multiple; Tue, 01 Oct 2019 14:54:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 14:54:03 +0100
Message-Id: <20191001135403.2026-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191001135403.2026-1-chris@chris-wilson.co.uk>
References: <20191001135403.2026-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Restrict availables engines
 to rcs0 by default
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

Q0kgaXMgc3RpbGwgdW5zdGFibGUgd2hlbmV2ZXIgd2UgZW5hYmxlIG1vcmUgdGhhbiBvbmUgZW5n
aW5lLCBhbmQgd2UKaGF2ZSBub3QgeWV0IGZvdW5kIGEgYmV0dGVyIGhhY2sgdGhhbiByZXN0cmlj
dGluZyBpdCB0byB1c2luZyBqdXN0IHJjczAuCgpIb3dldmVyLCB0byBhbGxvdyB0ZXN0aW5nIHRv
IGNvbnRpbnVlIG9uIHRoZSBvdGhlciBlbmdpbmVzIGJ5CmRldmVsb3BlcnMsIHdlIGFsbG93IHRo
ZSBhdmFpbGFibGUgc2V0IG9mIGVuZ2luZXMgdG8gYmUgb3ZlcnJpZGRlbiBvbgp0aGUgY29tbWFu
ZCBsaW5lIHdpdGgganVzdCB0aGUgZGVmYXVsdCBzZXQgbGltaXRlZCB0byBbcmNzMF0uCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEFu
ZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDY5MGRhNjRl
YzI1Ni4uOWM4YzdjOGFmMzk0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwpAQCAtNDA2LDYgKzQwNiwxMCBAQCBzdGF0aWMgYm9vbCBlbmdpbmVfYXZhaWxhYmxl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgaWQpCiAJaWYgKCFIQVNfRU5HSU5F
KGk5MTUsIGlkKSkKIAkJcmV0dXJuIGZhbHNlOwogCisJLyogWFhYIHJlZHVjZWQgYnkgZGVmYXVs
dCBmb3IgQ0kgc3RhYmlsaXR5IFhYWCAqLworCWlmIChJU19USUdFUkxBS0UoaTkxNSkgJiYgaTkx
NV9tb2RwYXJhbXMuZW5naW5lcyA9PSAtMXUpCisJCXJldHVybiBpZCA9PSBSQ1MwOworCiAJaWYg
KCEoaTkxNV9tb2RwYXJhbXMuZW5naW5lcyAmIHBhcmFtX2JpdFtpZF0pKQogCQlyZXR1cm4gZmFs
c2U7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
