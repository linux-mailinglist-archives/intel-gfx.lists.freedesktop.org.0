Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94D4F8BB3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 10:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4381A6EAA5;
	Tue, 12 Nov 2019 09:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF596EA95
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:29:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19170006-1500050 
 for multiple; Tue, 12 Nov 2019 09:28:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 09:28:28 +0000
Message-Id: <20191112092854.869-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/27] drm/i915: Flush context free work on
 cleanup
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

VGhyb3cgaW4gYSBmbHVzaF93b3JrKCkgYW5kIHJjdV9iYXJyaWVyKCkgdG8gc3BlY2lmaWNhbGx5
IGZsdXNoIHRoZQpjb250ZXh0IGNsZWFudXAgd29yay4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyNDgKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRl
eCA3MmQzODlhZmEyOGEuLjE3ZjM5NTY3MmU1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC03NzYsNiArNzc2LDcgQEAgaW50IGk5MTVfZ2VtX2lu
aXRfY29udGV4dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB2b2lkIGk5MTVfZ2Vt
X2RyaXZlcl9yZWxlYXNlX19jb250ZXh0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IHsKIAlkZXN0cm95X2tlcm5lbF9jb250ZXh0KCZpOTE1LT5rZXJuZWxfY29udGV4dCk7CisJZmx1
c2hfd29yaygmaTkxNS0+Z2VtLmNvbnRleHRzLmZyZWVfd29yayk7CiB9CiAKIHN0YXRpYyBpbnQg
Y29udGV4dF9pZHJfY2xlYW51cChpbnQgaWQsIHZvaWQgKnAsIHZvaWQgKmRhdGEpCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IGI5NjEzZDA0NDM5My4uMWY2
ODcwMGEyMzExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpA
QCAtNDAyLDYgKzQwMiw3IEBAIHZvaWQgaW50ZWxfZW5naW5lc19jbGVhbnVwKHN0cnVjdCBpbnRl
bF9ndCAqZ3QpCiAJCWd0LT5lbmdpbmVbaWRdID0gTlVMTDsKIAkJZ3QtPmk5MTUtPmVuZ2luZVtp
ZF0gPSBOVUxMOwogCX0KKwlyY3VfYmFycmllcigpOwogfQogCiAvKioKLS0gCjIuMjQuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
