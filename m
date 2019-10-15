Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3C4D8145
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5C089AB7;
	Tue, 15 Oct 2019 20:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8666E3D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:45:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849359-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:44 +0100
Message-Id: <20191015204451.19372-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 05/12] drm/i915/tgl: Add extra hdc flush workaround
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpJbiBv
cmRlciB0byBlbnN1cmUgY29uc3RhbnQgY2FjaGVzIGFyZSBpbnZhbGlkYXRlZApwcm9wZXJseSB3
aXRoIGEwLCB3ZSBuZWVkIGV4dHJhIGhkYyBmbHVzaCBhZnRlciBpbnZhbGlkYXRpb24uCgp2Mjog
dXNlIElTX1RHTF9SRVZJRCAoQ2hyaXMpCgpSZWZlcmVuY2VzOiBIU0RFUyMxNjA0NTQ0ODg5ClNp
Z25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpMaW5r
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTEwMTUx
NTQ0NDkuMTAzMzgtNC1taWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbQotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwppbmRleCBkMDMyNThjZTgyOTEuLjAzYjk2MWM2MmI5NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKQEAgLTMyNTQsNiArMzI1NCwyNiBAQCBzdGF0aWMgaW50IGdlbjEyX2Vt
aXRfZmx1c2hfcmVuZGVyKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsCiAKIAkJKmNzKysg
PSBwcmVwYXJzZXJfZGlzYWJsZShmYWxzZSk7CiAJCWludGVsX3JpbmdfYWR2YW5jZShyZXF1ZXN0
LCBjcyk7CisKKwkJLyoKKwkJICogV2FfMTYwNDU0NDg4OTp0Z2wKKwkJICovCisJCWlmIChJU19U
R0xfUkVWSUQocmVxdWVzdC0+aTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKSB7CisJ
CQlmbGFncyA9IDA7CisJCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfQ1NfU1RBTEw7CisJCQlmbGFn
cyB8PSBQSVBFX0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIOworCisJCQlmbGFncyB8PSBQSVBF
X0NPTlRST0xfU1RPUkVfREFUQV9JTkRFWDsKKwkJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9RV19X
UklURTsKKworCQkJY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJlcXVlc3QsIDYpOworCQkJaWYgKElT
X0VSUihjcykpCisJCQkJcmV0dXJuIFBUUl9FUlIoY3MpOworCisJCQljcyA9IGdlbjhfZW1pdF9w
aXBlX2NvbnRyb2woY3MsIGZsYWdzLAorCQkJCQkJICAgIExSQ19QUEhXU1BfU0NSQVRDSF9BRERS
KTsKKwkJCWludGVsX3JpbmdfYWR2YW5jZShyZXF1ZXN0LCBjcyk7CisJCX0KIAl9CiAKIAlyZXR1
cm4gMDsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
