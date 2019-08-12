Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D683189986
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01F06E4C2;
	Mon, 12 Aug 2019 09:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 777B26E2DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:11:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17966142-1500050 
 for multiple; Mon, 12 Aug 2019 10:10:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 10:10:38 +0100
Message-Id: <20190812091045.29587-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/execlists: Avoid sync calls during
 park
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

U2luY2Ugd2UgYWxsb3cgb3Vyc2VsdmVzIHRvIHVzZSBub24tcHJvY2VzcyBjb250ZXh0IGR1cmlu
ZyBwYXJraW5nLCB3ZQpjYW5ub3QgYWxsb3cgb3Vyc2VsdmVzIHRvIHNsZWVwIGFuZCBpbiBwYXJ0
aWN1bGFyIGNhbm5vdCBjYWxsCmRlbF90aW1lcl9zeW5jKCkgLS0gYnV0IHdlIGNhbiB1c2UgYSBw
bGFpbiBkZWxfdGltZXIoKS4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTEzNzUKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGJiNzQ5NTQ4ODlkZC4uYjk3
MDQ3ZDU4ZDNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjcyOCw3ICsy
NzI4LDcgQEAgc3RhdGljIHUzMiAqZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3Moc3RydWN0
IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykKIAogc3RhdGljIHZvaWQgZXhlY2xpc3Rz
X3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCWRlbF90aW1lcl9zeW5j
KCZlbmdpbmUtPmV4ZWNsaXN0cy50aW1lcik7CisJZGVsX3RpbWVyKCZlbmdpbmUtPmV4ZWNsaXN0
cy50aW1lcik7CiB9CiAKIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0X3N1Ym1pc3Np
b24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotLSAKMi4yMy4wLnJjMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
