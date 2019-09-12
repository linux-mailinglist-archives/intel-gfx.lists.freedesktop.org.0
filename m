Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 161E2B0B6C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 11:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2431A6EC3B;
	Thu, 12 Sep 2019 09:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5773E6EC3B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 09:29:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18461335-1500050 
 for multiple; Thu, 12 Sep 2019 10:29:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 10:29:33 +0100
Message-Id: <20190912092933.4729-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912092933.4729-1-chris@chris-wilson.co.uk>
References: <20190912092933.4729-1-chris@chris-wilson.co.uk>
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
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZGJjOTBkYTIzNDFhLi40N2Q3NjZjY2VhNzEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNDQ1LDYgKzI0NDUsNyBAQCBzdGF0
aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
IGJvb2wgc3RhbGxlZCkKIAlpbnRlbF9yaW5nX3VwZGF0ZV9zcGFjZShjZS0+cmluZyk7CiAJX19l
eGVjbGlzdHNfcmVzZXRfcmVnX3N0YXRlKGNlLCBlbmdpbmUpOwogCV9fZXhlY2xpc3RzX3VwZGF0
ZV9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7CisJY2UtPmxyY19kZXNjIHw9IENUWF9ERVNDX0ZPUkNF
X1JFU1RPUkU7IC8qIHBhcmFub2lkOiBHUFUgd2FzIHJlc2V0ISAqLwogCW11dGV4X3JlbGVhc2Uo
JmNlLT5waW5fbXV0ZXguZGVwX21hcCwgMCwgX1RISVNfSVBfKTsKIAogdW53aW5kOgotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
