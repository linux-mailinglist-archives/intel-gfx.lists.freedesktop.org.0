Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F31FDDD6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:28:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7526E581;
	Fri, 15 Nov 2019 12:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1F36E581
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:28:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19212058-1500050 
 for multiple; Fri, 15 Nov 2019 12:27:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 12:27:55 +0000
Message-Id: <20191115122755.830355-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Simplify
 NEEDS_WaRsDisableCoarsePowerGating
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

SXQgYXBwbGllcyB0byBhbGwgZ2VuOSBhbmQgZ2VuMTAgbm93LCBzbyB3ZSBjYW4gdXNlIGEgc2lu
Z2xlIHRlc3QKYWdhaW5zdCB0aGUgZ2VuIGJpdG1hc2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCmluZGV4IGE3MDU1NWU2YmVmYi4uNWZhMzhjNTVkYWEzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKQEAgLTE2NjAsNyArMTY2MCw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAvKiBXYVJzRGlzYWJsZUNvYXJzZVBvd2VyR2F0
aW5nOnNrbCxjbmwgKi8KICNkZWZpbmUgTkVFRFNfV2FSc0Rpc2FibGVDb2Fyc2VQb3dlckdhdGlu
ZyhkZXZfcHJpdikgXAotCShJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU4oZGV2X3By
aXYsIDkpKQorCUlTX0dFTl9SQU5HRShkZXZfcHJpdiwgOSwgMTApCiAKICNkZWZpbmUgSEFTX0dN
QlVTX0lSUShkZXZfcHJpdikgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkKICNkZWZpbmUgSEFT
X0dNQlVTX0JVUlNUX1JFQUQoZGV2X3ByaXYpIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8
IFwKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
