Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E66789985
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A9F89DFA;
	Mon, 12 Aug 2019 09:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6496789DED
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:10:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17966149-1500050 
 for multiple; Mon, 12 Aug 2019 10:10:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 10:10:44 +0100
Message-Id: <20190812091045.29587-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190812091045.29587-1-chris@chris-wilson.co.uk>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Use the local engine wakeref
 when checking RING registers
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

Tm93IHRoYXQgd2UgY2FuIGF0b21pY2FsbHkgYWNxdWlyZSB0aGUgZW5naW5lIHdha2VyZWYsIG1h
a2UgdXNlIG9mIGl0CndoZW4gY2hlY2sgd2hldGhlciB0aGUgUklORyByZWdpc3RlcnMgYXJlIGlk
bGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDEwICsr
Ky0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA3ZDE3NGFm
MzBmOGMuLmM3YjI0MTQxN2VlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMKQEAgLTEwMDgsMTYgKzEwMDgsMTIgQEAgdm9pZCBpbnRlbF9lbmdpbmVfZ2V0X2lu
c3Rkb25lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAogc3RhdGljIGJvb2wgcmlu
Z19pc19pZGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKLQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBlbmdpbmUtPmk5MTU7Ci0JaW50ZWxfd2FrZXJlZl90
IHdha2VyZWY7CiAJYm9vbCBpZGxlID0gdHJ1ZTsKIAogCWlmIChJOTE1X1NFTEZURVNUX09OTFko
IWVuZ2luZS0+bW1pb19iYXNlKSkKIAkJcmV0dXJuIHRydWU7CiAKLQkvKiBJZiB0aGUgd2hvbGUg
ZGV2aWNlIGlzIGFzbGVlcCwgdGhlIGVuZ2luZSBtdXN0IGJlIGlkbGUgKi8KLQl3YWtlcmVmID0g
aW50ZWxfcnVudGltZV9wbV9nZXRfaWZfaW5fdXNlKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7Ci0J
aWYgKCF3YWtlcmVmKQorCWlmICghaW50ZWxfZW5naW5lX3BtX2dldF9pZl9hd2FrZShlbmdpbmUp
KQogCQlyZXR1cm4gdHJ1ZTsKIAogCS8qIEZpcnN0IGNoZWNrIHRoYXQgbm8gY29tbWFuZHMgYXJl
IGxlZnQgaW4gdGhlIHJpbmcgKi8KQEAgLTEwMjYsMTEgKzEwMjIsMTEgQEAgc3RhdGljIGJvb2wg
cmluZ19pc19pZGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJaWRsZSA9IGZh
bHNlOwogCiAJLyogTm8gYml0IGZvciBnZW4yLCBzbyBhc3N1bWUgdGhlIENTIHBhcnNlciBpcyBp
ZGxlICovCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPiAyICYmCisJaWYgKElOVEVMX0dFTihl
bmdpbmUtPmk5MTUpID4gMiAmJgogCSAgICAhKEVOR0lORV9SRUFEKGVuZ2luZSwgUklOR19NSV9N
T0RFKSAmIE1PREVfSURMRSkpCiAJCWlkbGUgPSBmYWxzZTsKIAotCWludGVsX3J1bnRpbWVfcG1f
cHV0KCZkZXZfcHJpdi0+cnVudGltZV9wbSwgd2FrZXJlZik7CisJaW50ZWxfZW5naW5lX3BtX3B1
dChlbmdpbmUpOwogCiAJcmV0dXJuIGlkbGU7CiB9Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
