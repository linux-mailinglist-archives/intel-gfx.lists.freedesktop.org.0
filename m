Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22886B0949
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 09:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F266F6EBE6;
	Thu, 12 Sep 2019 07:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545426EBE6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 07:09:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18459540-1500050 
 for multiple; Thu, 12 Sep 2019 08:09:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 08:09:25 +0100
Message-Id: <20190912070925.11526-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912070925.11526-1-chris@chris-wilson.co.uk>
References: <20190912070925.11526-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Ensure the context is
 reloaded after a GPU reset
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

QWZ0ZXIgd2UgbWFuaXB1bGF0ZSB0aGUgY29udGV4dCB0byBhbGxvdyByZXBsYXkgYWZ0ZXIgYSBH
UFUgcmVzZXQsIGZvcmNlCnRoYXQgY29udGV4dCB0byBiZSByZWxvYWRlZC4gVGhpcyBzaG91bGQg
YmUgYSBsYXllciBvZiBwYXJhbm9pYSwgZm9yIGlmCnRoZSBHUFUgd2FzIHJlc2V0LCB0aGUgY29u
dGV4dCB3aWxsIG5vIGxvbmdlciBiZSByZXNpZGVudCEKClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggNjFhMzhhNGNjYmNhLi40MGI0NzlkMGNhNWQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yOTIxLDYgKzI5MjEsNyBAQCBzdGF0
aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
IGJvb2wgc3RhbGxlZCkKIAlpbnRlbF9yaW5nX3VwZGF0ZV9zcGFjZShjZS0+cmluZyk7CiAJX19l
eGVjbGlzdHNfcmVzZXRfcmVnX3N0YXRlKGNlLCBlbmdpbmUpOwogCV9fZXhlY2xpc3RzX3VwZGF0
ZV9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7CisJY2UtPmxyY19kZXNjIHw9IENUWF9ERVNDX0ZPUkNF
X1JFU1RPUkU7IC8qIHBhcmFub2lkOiBHUFUgd2FzIHJlc2V0ISAqLwogCV9fY29udGV4dF9waW5f
cmVsZWFzZShjZSk7CiAKIHVud2luZDoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
