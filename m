Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABAFE4D55
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 15:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E076EA4C;
	Fri, 25 Oct 2019 13:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702256EA4C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 13:59:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18963476-1500050 
 for multiple; Fri, 25 Oct 2019 14:59:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 14:59:43 +0100
Message-Id: <20191025135943.12524-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191025135943.12524-1-chris@chris-wilson.co.uk>
References: <20191025135943.12524-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Initialise err in case
 there are no engines!
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

ZHJpdmVycy9ncHUvZHJtL2k5MTUvL2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYzoyNTUg
bGl2ZV9oZWFydGJlYXRfZmFzdCgpIGVycm9yOiB1bmluaXRpYWxpemVkIHN5bWJvbCAnZXJyJy4K
ZHJpdmVycy9ncHUvZHJtL2k5MTUvL2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYzozMjAg
bGl2ZV9oZWFydGJlYXRfb2ZmKCkgZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdlcnInLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFy
dGJlYXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJl
YXQuYwppbmRleCA3NjhmMDMyZTY1NzguLjE1NWM1MDgwMjRkZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwpAQCAtMjQwLDcg
KzI0MCw3IEBAIHN0YXRpYyBpbnQgbGl2ZV9oZWFydGJlYXRfZmFzdCh2b2lkICphcmcpCiAJc3Ry
dWN0IGludGVsX2d0ICpndCA9IGFyZzsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7
CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50IGVycjsKKwlpbnQgZXJyID0gMDsKIAog
CS8qIENoZWNrIHRoYXQgdGhlIGhlYXJ0YmVhdCB0aWNrcyBhdCB0aGUgZGVzaXJlZCByYXRlLiAq
LwogCWlmICghQ09ORklHX0RSTV9JOTE1X0hFQVJUQkVBVF9JTlRFUlZBTCkKQEAgLTMwMiw3ICsz
MDIsNyBAQCBzdGF0aWMgaW50IGxpdmVfaGVhcnRiZWF0X29mZih2b2lkICphcmcpCiAJc3RydWN0
IGludGVsX2d0ICpndCA9IGFyZzsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJ
ZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50IGVycjsKKwlpbnQgZXJyID0gMDsKIAogCS8q
IENoZWNrIHRoYXQgd2UgY2FuIHR1cm4gb2ZmIGhlYXJ0YmVhdCBhbmQgbm90IGludGVycnVwdCBW
SVAgKi8KIAlpZiAoIUNPTkZJR19EUk1fSTkxNV9IRUFSVEJFQVRfSU5URVJWQUwpCi0tIAoyLjI0
LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
