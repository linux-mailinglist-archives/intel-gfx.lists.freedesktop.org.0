Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D6DF93DA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 16:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB906E3C7;
	Tue, 12 Nov 2019 15:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF126E3C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 15:17:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19175190-1500050 
 for multiple; Tue, 12 Nov 2019 15:17:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 15:17:29 +0000
Message-Id: <20191112151729.13370-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: More delays for gen7 flushing
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

bGl2ZV9ibHQgaXMgc3RpbGwgZmFpbGluZyBvbiBoc3csIHNob3dpbmcgdGhlIGhhbGxtYXJrIG9m
IGluY29oZXJlbmN5LgpTaW5jZSB3ZSBhcmUgZmFpcmx5IGNlcnRhaW4gdGhhdCB0aGUgaW50ZXJy
dXB0IGlzIGFmdGVyIHRoZSBzZXFubyBpcwp2aXNpYmxlLCB0aGUgb3RoZXIgcG9zc2liaWxpdHkg
aXMgdGhhdCB0aGUgc2Vxbm8gaXMgYmVmb3JlIHRoZSB3cml0ZXMgdG8KbWVtb3J5IGFyZSBmbHVz
aGVkLiBUaHJvdyBpbiBzb21lIG1vcmUgTUlfRkxVU0hfRFcgYmVmb3JlIHRoZSBicmVhZGNydW1i
CnRvIHRyeSBhbmQgZmx1c2ggYW55IGludGVybmFsIHBpcGVsaW5lcy4KClJlZmVyZW5jZXM6IGY5
MjI4Zjc2NTg3MyAoImRybS9pOTE1L2d0OiBUcnkgYW4gZXh0cmEgZmx1c2ggb24gdGhlIEhhc3dl
bGwgYmxpdHRlciIpClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMjE0NwpUZXN0Y2FzZTogaWd0L2k5MTVfc2VsZnRlc3QvbGl2ZV9ibHQK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyB8IDggKysrKystLS0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBmYzI5
ZGY3MTI4MTAuLjE0ZDExNTg5MWVkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKQEAgLTQ1NCw5ICs0NTQsMTEgQEAgc3RhdGljIHUzMiAq
Z2VuN194Y3NfZW1pdF9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgKmNz
KQogCUdFTV9CVUdfT04oaTkxNV9yZXF1ZXN0X2FjdGl2ZV90aW1lbGluZShycSktPmh3c3BfZ2d0
dCAhPSBycS0+ZW5naW5lLT5zdGF0dXNfcGFnZS52bWEpOwogCUdFTV9CVUdfT04ob2Zmc2V0X2lu
X3BhZ2UoaTkxNV9yZXF1ZXN0X2FjdGl2ZV90aW1lbGluZShycSktPmh3c3Bfb2Zmc2V0KSAhPSBJ
OTE1X0dFTV9IV1NfU0VRTk9fQUREUik7CiAKLQkqY3MrKyA9IE1JX0ZMVVNIX0RXOwotCSpjcysr
ID0gMDsKLQkqY3MrKyA9IDA7CisJZm9yIChpID0gMDsgaSA8IDc7IGkrKykgeworCQkqY3MrKyA9
IE1JX0ZMVVNIX0RXOworCQkqY3MrKyA9IDA7CisJCSpjcysrID0gMDsKKwl9CiAKIAkqY3MrKyA9
IE1JX0ZMVVNIX0RXIHwgTUlfRkxVU0hfRFdfT1BfU1RPUkVEVyB8IE1JX0ZMVVNIX0RXX1NUT1JF
X0lOREVYOwogCSpjcysrID0gSTkxNV9HRU1fSFdTX1NFUU5PX0FERFIgfCBNSV9GTFVTSF9EV19V
U0VfR1RUOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
