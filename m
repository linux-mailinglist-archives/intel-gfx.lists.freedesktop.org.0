Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6723961DCC
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 13:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1C589CAD;
	Mon,  8 Jul 2019 11:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20EAB89CAD
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 11:30:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17167872-1500050 
 for multiple; Mon, 08 Jul 2019 12:30:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 12:30:38 +0100
Message-Id: <20190708113038.19251-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fill in a little more of
 the dummy fence
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

SW5pdGlhbGlzZSB0aGUgZG1hX2ZlbmNlIGlubmFyZHMgaW4gcHJlcGFyYXRpb24gZm9yIG1ha2lu
ZwpkbWFfZmVuY2Vfc2lnbmFsKCkgYWx3YXlzIGNoZWNrIHRoZSBjYWxsYmFjayBsaXN0LgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwppbmRleCAx
MWY0OTA1MDJjYTYuLjY3MmJkYWE2NjU0MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfbHJjLmMKQEAgLTg1OSw2ICs4NTksMTAgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KmR1bW15X3JlcXVlc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWk5MTVfc3df
ZmVuY2VfaW5pdCgmcnEtPnN1Ym1pdCwgZHVtbXlfbm90aWZ5KTsKIAlzZXRfYml0KEk5MTVfRkVO
Q0VfRkxBR19BQ1RJVkUsICZycS0+ZmVuY2UuZmxhZ3MpOwogCisJc3Bpbl9sb2NrX2luaXQoJnJx
LT5sb2NrKTsKKwlycS0+ZmVuY2UubG9jayA9ICZycS0+bG9jazsKKwlJTklUX0xJU1RfSEVBRCgm
cnEtPmZlbmNlLmNiX2xpc3QpOworCiAJcmV0dXJuIHJxOwogfQogCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
