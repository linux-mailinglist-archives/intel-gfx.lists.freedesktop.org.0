Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7A910996A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 07:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9695E89D9A;
	Tue, 26 Nov 2019 06:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A4389D9A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 06:55:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19338524-1500050 
 for multiple; Tue, 26 Nov 2019 06:55:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 06:55:21 +0000
Message-Id: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reduce nested
 prepare_remote_context() to a trylock
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

T24gY29udGV4dCByZXRpcmluZywgd2UgbWF5IGludm9rZSB0aGUga2VybmVsX2NvbnRleHQgdG8g
dW5waW4gdGhpcwpjb250ZXh0LiBFbHNld2hlcmUsIHdlIG1heSB1c2UgdGhlIGtlcm5lbF9jb250
ZXh0IHRvIG1vZGlmeSB0aGlzCmNvbnRleHQuIFRoaXMgY3VycmVudGx5IGxlYWRzIHRvIGFuIEFC
LUJBIGxvY2sgaW52ZXJzaW9uLCBzbyB3ZSBuZWVkIHRvCmJhY2stb2ZmIGZyb20gdGhlIGNvbnRl
bmRlZCBsb2NrLCBhbmQgcmVwZWF0LgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTczMgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9jb250ZXh0LmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMK
aW5kZXggZWU5ZDJiY2QyYzEzLi40ZmNiOThmOTZkYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0LmMKQEAgLTMxMCwxMCArMzEwLDggQEAgaW50IGludGVsX2NvbnRleHRf
cHJlcGFyZV9yZW1vdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJR0VNX0JV
R19PTihycS0+aHdfY29udGV4dCA9PSBjZSk7CiAKIAlpZiAocmN1X2FjY2Vzc19wb2ludGVyKHJx
LT50aW1lbGluZSkgIT0gdGwpIHsgLyogdGltZWxpbmUgc2hhcmluZyEgKi8KLQkJZXJyID0gbXV0
ZXhfbG9ja19pbnRlcnJ1cHRpYmxlX25lc3RlZCgmdGwtPm11dGV4LAotCQkJCQkJICAgICAgU0lO
R0xFX0RFUFRIX05FU1RJTkcpOwotCQlpZiAoZXJyKQotCQkJcmV0dXJuIGVycjsKKwkJaWYgKCFt
dXRleF90cnlsb2NrKCZ0bC0+bXV0ZXgpKQorCQkJcmV0dXJuIC1FQUdBSU47CiAKIAkJLyogUXVl
dWUgdGhpcyBzd2l0Y2ggYWZ0ZXIgY3VycmVudCBhY3Rpdml0eSBieSB0aGlzIGNvbnRleHQuICov
CiAJCWVyciA9IGk5MTVfYWN0aXZlX2ZlbmNlX3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEpOwot
LSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
