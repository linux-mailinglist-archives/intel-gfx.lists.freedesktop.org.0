Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 807728C3FE
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 23:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478986E086;
	Tue, 13 Aug 2019 21:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E1E6E086
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 21:57:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18034527-1500050 
 for multiple; Tue, 13 Aug 2019 22:57:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 22:57:07 +0100
Message-Id: <20190813215707.14703-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Include engine->mmio_base in the
 debug duump
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

U29tZSBJR1Qgd291bGQgbGlrZSB0byBrbm93IHRoZSBtbWlvIGFkZHJlc3Mgb2YgZWFjaCBlbmdp
bmUgc28gbWFrZSBpdAphdmFpbGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA0NWY1YjYwMDE0NTYu
LmVlNmNmNDRkN2Q4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKQEAgLTE0MDcsNiArMTQwNyw3IEBAIHZvaWQgaW50ZWxfZW5naW5lX2R1bXAoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCX0KIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZlbmdp
bmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7CiAKKwlkcm1fcHJpbnRmKG0sICJcdE1NSU8gYmFzZTog
MHglMDh4XG4iLCBlbmdpbmUtPm1taW9fYmFzZSk7CiAJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVf
cG1fZ2V0X2lmX2luX3VzZSgmZW5naW5lLT5pOTE1LT5ydW50aW1lX3BtKTsKIAlpZiAod2FrZXJl
ZikgewogCQlpbnRlbF9lbmdpbmVfcHJpbnRfcmVnaXN0ZXJzKGVuZ2luZSwgbSk7Ci0tIAoyLjIz
LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
