Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A384A714BB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 11:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DE66E2CC;
	Tue, 23 Jul 2019 09:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB1E6E2BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 09:14:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17528118-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 10:14:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:14:03 +0100
Message-Id: <20190723091404.6449-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/uc: Gt-fy uc reset
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KClRoaXMgd2FzIHRoZSBsYXN0IHBsYWNlIGluIGd0L3VjIHRoYXQgd2FzIHN0aWxsIHVz
aW5nIEk5MTVfUkVBRAp3aXRoIHRoZSBnbG9iYWwgZGV2X3ByaXYuCgpTaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDYgKysrLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IDVlYmIwYTUzNDcxOC4uNDQ4MGEzZGMyNDQ5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTM3LDE3ICszNywxNyBAQCBzdGF0
aWMgdm9pZCBndWNfZnJlZV9sb2FkX2Vycl9sb2coc3RydWN0IGludGVsX2d1YyAqZ3VjKTsKICAq
Lwogc3RhdGljIGludCBfX2ludGVsX3VjX3Jlc2V0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCiB7
Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdWNfdG9fZ3QodWMpLT5pOTE1
OworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSB1Y190b19ndCh1Yyk7CiAJaW50IHJldDsKIAl1MzIg
Z3VjX3N0YXR1czsKIAotCXJldCA9IGludGVsX3Jlc2V0X2d1YygmZGV2X3ByaXYtPmd0KTsKKwly
ZXQgPSBpbnRlbF9yZXNldF9ndWMoZ3QpOwogCWlmIChyZXQpIHsKIAkJRFJNX0VSUk9SKCJGYWls
ZWQgdG8gcmVzZXQgR3VDLCByZXQgPSAlZFxuIiwgcmV0KTsKIAkJcmV0dXJuIHJldDsKIAl9CiAK
LQlndWNfc3RhdHVzID0gSTkxNV9SRUFEKEdVQ19TVEFUVVMpOworCWd1Y19zdGF0dXMgPSBpbnRl
bF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBHVUNfU1RBVFVTKTsKIAlXQVJOKCEoZ3VjX3N0YXR1
cyAmIEdTX01JQV9JTl9SRVNFVCksCiAJICAgICAiR3VDIHN0YXR1czogMHgleCwgTUlBIGNvcmUg
ZXhwZWN0ZWQgdG8gYmUgaW4gcmVzZXRcbiIsCiAJICAgICBndWNfc3RhdHVzKTsKLS0gCjIuMjIu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
