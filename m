Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAD1108CDD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 12:25:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AADF089F73;
	Mon, 25 Nov 2019 11:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0401089F73
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 11:25:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19328436-1500050 
 for multiple; Mon, 25 Nov 2019 11:25:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 11:25:20 +0000
Message-Id: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Fixup cancel_port_requests()
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

SSBydXNoZWQgYSBsYXN0IG1pbnV0ZSBjb3JyZWN0aW9uIHRvIGNhbmNlbF9wb3J0X3JlcXVlc3Rz
KCkgdG8gcHJldmVudAp0aGUgc25vb3Bpbmcgb2YgKmV4ZWNsaXN0cy0+YWN0aXZlIGFzIHRoZSBp
bmZsaWdodCBhcnJheSB3YXMgYmVpbmcKdXBkYXRlZCwgd2l0aG91dCBub3RpY2luZyB3ZSBpdGVy
YXRlZCB0aGUgaW5mbGlnaHQgYXJyYXkgc3RhcnRpbmcgZnJvbQphY3RpdmUhIE9vcHMuCgpGaXhl
czogMzMxYmY5MDU5MTU3ICgiZHJtL2k5MTUvZ3Q6IE1hcmsgdGhlIGV4ZWNsaXN0cy0+YWN0aXZl
IGFzIHRoZSBwcmltYXJ5IHZvbGF0aWxlIGFjY2VzcyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgfCAxNiArKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5k
ZXggZTUzM2ZmN2JhMzM0Li42MDkwMzU3YTAwZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCkBAIC0yMDA3LDE5ICsyMDA3LDE3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1
ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHN0YXRpYyB2b2lkCiBjYW5jZWxf
cG9ydF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNs
aXN0cykKIHsKLQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICogY29uc3QgKnBvcnQsICpycTsKKwlzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICogY29uc3QgKnBvcnQ7CiAKLQlmb3IgKHBvcnQgPSBleGVjbGlzdHMt
PnBlbmRpbmc7IChycSA9ICpwb3J0KTsgcG9ydCsrKQotCQlleGVjbGlzdHNfc2NoZWR1bGVfb3V0
KHJxKTsKKwlmb3IgKHBvcnQgPSBleGVjbGlzdHMtPnBlbmRpbmc7ICpwb3J0OyBwb3J0KyspCisJ
CWV4ZWNsaXN0c19zY2hlZHVsZV9vdXQoKnBvcnQpOwogCW1lbXNldChleGVjbGlzdHMtPnBlbmRp
bmcsIDAsIHNpemVvZihleGVjbGlzdHMtPnBlbmRpbmcpKTsKIAogCS8qIE1hcmsgdGhlIGVuZCBv
ZiBhY3RpdmUgYmVmb3JlIHdlIG92ZXJ3cml0ZSAqYWN0aXZlICovCi0JV1JJVEVfT05DRShleGVj
bGlzdHMtPmFjdGl2ZSwgZXhlY2xpc3RzLT5wZW5kaW5nKTsKLQotCWZvciAocG9ydCA9IGV4ZWNs
aXN0cy0+YWN0aXZlOyAocnEgPSAqcG9ydCk7IHBvcnQrKykKLQkJZXhlY2xpc3RzX3NjaGVkdWxl
X291dChycSk7Ci0JZXhlY2xpc3RzLT5hY3RpdmUgPQotCQltZW1zZXQoZXhlY2xpc3RzLT5pbmZs
aWdodCwgMCwgc2l6ZW9mKGV4ZWNsaXN0cy0+aW5mbGlnaHQpKTsKKwlmb3IgKHBvcnQgPSB4Y2hn
KCZleGVjbGlzdHMtPmFjdGl2ZSwgZXhlY2xpc3RzLT5wZW5kaW5nKTsgKnBvcnQ7IHBvcnQrKykK
KwkJZXhlY2xpc3RzX3NjaGVkdWxlX291dCgqcG9ydCk7CisJV1JJVEVfT05DRShleGVjbGlzdHMt
PmFjdGl2ZSwKKwkJICAgbWVtc2V0KGV4ZWNsaXN0cy0+aW5mbGlnaHQsIDAsIHNpemVvZihleGVj
bGlzdHMtPmluZmxpZ2h0KSkpOwogfQogCiBzdGF0aWMgaW5saW5lIHZvaWQKLS0gCjIuMjQuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
