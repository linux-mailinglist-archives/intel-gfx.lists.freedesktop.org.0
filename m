Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3F7AE144
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 00:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2966C89B96;
	Mon,  9 Sep 2019 22:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A6C898BF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 22:55:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18431741-1500050 
 for multiple; Mon, 09 Sep 2019 23:55:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 23:55:35 +0100
Message-Id: <20190909225536.7037-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Allow clobbering gpu resets if
 the display is off
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

SWYgdGhlIGRpc3BsYXkgaXMgaW5hY3RpdmUsIHdlIG5lZWQgbm90IHdvcnJ5IGFib3V0IHRoZSBn
cHUgcmVzZXQKY2xvYmJlcmluZyB0aGUgZGlzcGxheSEKClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMgfCAxOCArKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKaW5kZXggYjlkODRkNTJlOTg2Li5mZTU3Mjk2Yjc5MGMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtNyw2ICs3LDcgQEAKICNpbmNsdWRlIDxsaW51
eC9zY2hlZC9tbS5oPgogI2luY2x1ZGUgPGxpbnV4L3N0b3BfbWFjaGluZS5oPgogCisjaW5jbHVk
ZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9vdmVybGF5LmgiCiAKQEAgLTcy
OSw2ICs3MzAsMjEgQEAgc3RhdGljIHZvaWQgbm9wX3N1Ym1pdF9yZXF1ZXN0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3QpCiAJaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2lu
ZSk7CiB9CiAKK3N0YXRpYyBib29sIHJlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGM7CisKKwlpZiAo
IUlOVEVMX0lORk8oaTkxNSktPmdwdV9yZXNldF9jbG9iYmVyc19kaXNwbGF5KQorCQlyZXR1cm4g
ZmFsc2U7CisKKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZpOTE1LT5kcm0sIGNydGMpIHsKKwkJaWYg
KGNydGMtPmFjdGl2ZSkKKwkJCXJldHVybiB0cnVlOworCX0KKworCXJldHVybiBmYWxzZTsKK30K
Kwogc3RhdGljIHZvaWQgX19pbnRlbF9ndF9zZXRfd2VkZ2VkKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwpAQCAtNzU1LDcgKzc3MSw3IEBA
IHN0YXRpYyB2b2lkIF9faW50ZWxfZ3Rfc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQog
CWF3YWtlID0gcmVzZXRfcHJlcGFyZShndCk7CiAKIAkvKiBFdmVuIGlmIHRoZSBHUFUgcmVzZXQg
ZmFpbHMsIGl0IHNob3VsZCBzdGlsbCBzdG9wIHRoZSBlbmdpbmVzICovCi0JaWYgKCFJTlRFTF9J
TkZPKGd0LT5pOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpCisJaWYgKCFyZXNldF9j
bG9iYmVyc19kaXNwbGF5KGd0LT5pOTE1KSkKIAkJX19pbnRlbF9ndF9yZXNldChndCwgQUxMX0VO
R0lORVMpOwogCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QtPmk5MTUsIGlkKQotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
