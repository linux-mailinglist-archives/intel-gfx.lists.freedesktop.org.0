Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB4F105D29
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 00:30:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578536E1B8;
	Thu, 21 Nov 2019 23:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843186E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 23:30:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19292783-1500050 
 for multiple; Thu, 21 Nov 2019 23:30:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 23:30:21 +0000
Message-Id: <20191121233021.507400-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Shorten infinite wait for
 sseu
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

VXNlIG91ciBtb3JlIHJlZ3VsYXIgaWd0X2ZsdXNoX3Rlc3QoKSB0byBiaW5kIHRoZSB3YWl0LWZv
ci1pZGxlIGFuZAplcnJvciBvdXQgaW5zdGVhZCBvZiB3YWl0aW5nIGFyb3VuZCBmb3JldmVyIG9u
IGNyaXRpY2FsIGZhaWx1cmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9jb250ZXh0LmMKaW5kZXggZjFjZTVmNjRiMjIxLi5lMWQ4Y2NkMTE0MDkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29u
dGV4dC5jCkBAIC0xMTY4LDggKzExNjgsNyBAQCBfX3NzZXVfZmluaXNoKGNvbnN0IGNoYXIgKm5h
bWUsCiAJCWlndF9zcGlubmVyX2VuZChzcGluKTsKIAogCWlmICgoZmxhZ3MgJiBURVNUX0lETEUp
ICYmIHJldCA9PSAwKSB7Ci0JCXJldCA9IGludGVsX2d0X3dhaXRfZm9yX2lkbGUoY2UtPmVuZ2lu
ZS0+Z3QsCi0JCQkJCSAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCQlyZXQgPSBpZ3RfZmx1
c2hfdGVzdChjZS0+ZW5naW5lLT5pOTE1KTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAK
LS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
