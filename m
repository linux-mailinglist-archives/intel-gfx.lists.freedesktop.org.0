Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C80D9A76
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 21:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8926E42F;
	Wed, 16 Oct 2019 19:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6386E42F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 19:53:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18861736-1500050 
 for multiple; Wed, 16 Oct 2019 20:52:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 20:52:51 +0100
Message-Id: <20191016195251.17863-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Don't merely skip
 submission if maybe timeslicing
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

Tm9ybWFsbHksIHdlIHRyeSBhbmQgc2tpcCBzdWJtaXNzaW9uIGlmIEVMU1BbMV0gaXMgZmlsbGVk
LiBIb3dldmVyLCB3ZQptYXkgZGVzaXJlIHRvIGVuYWJsZSB0aW1lc2xpY2luZyBkdWUgdG8gdGhl
IHF1ZXVlIHByaW9yaXR5LCBldmVuIGlmCkVMU1BbMV0gaXRzZWxmIGRvZXMgbm90IHJlcXVpcmUg
dGltZXNsaWNpbmcuIFRoYXQgaXMgdGhlIHF1ZXVlIGlzIGVxdWFsCnByaW9yaXR5IHRvIEVMU1Bb
MF0gYW5kIGhpZ2hlciBwcmlvcml0eSB0aGVuIEVMU1BbMV0uIFByZXZpb3VzbHksIHdlCndvdWxk
IHdhaXQgdW50aWwgdGhlIGNvbnRleHQgc3dpdGNoIHRvIHByZWVtcHQgdGhlIGN1cnJlbnQgRUxT
UFsxXSwgYnV0CndpdGggdGltZXNsaWNpbmcsIHdlIHdhbnQgdG8gcHJlZW1wdCBFTFNQWzBdIGFu
ZCByZXBsYWNlIGl0IHdpdGggdGhlCnF1ZXVlLgoKRml4ZXM6IDIyMjlhZGM4MTM4MCAoImRybS9p
OTE1L2V4ZWNsaXN0OiBUcmltIGltbWVkaWF0ZSB0aW1lc2xpY2UgZXhwaXJ5IikKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwppbmRleCA2NjIwNzcyZWRmNGYuLjc2OTBiYzY1OWIzMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKQEAgLTE1MDksOCArMTUwOSwxNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNf
ZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQkgKiBzdWJtaXNzaW9u
LgogCQkJICovCiAJCQlpZiAoIWxpc3RfaXNfbGFzdCgmbGFzdC0+c2NoZWQubGluaywKLQkJCQkJ
ICAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMpKQorCQkJCQkgICZlbmdpbmUtPmFjdGl2ZS5yZXF1
ZXN0cykpIHsKKwkJCQkvKgorCQkJCSAqIEV2ZW4gaWYgRUxTUFsxXSBpcyBvY2N1cGllZCBhbmQg
bm90IHdvcnRoeQorCQkJCSAqIG9mIHRpbWVzbGljZXMsIG91ciBxdWV1ZSBtaWdodCBiZS4KKwkJ
CQkgKi8KKwkJCQlpZiAoIWV4ZWNsaXN0cy0+dGltZXIuZXhwaXJlcyAmJgorCQkJCSAgICBuZWVk
X3RpbWVzbGljZShlbmdpbmUsIGxhc3QpKQorCQkJCQltb2RfdGltZXIoJmV4ZWNsaXN0cy0+dGlt
ZXIsCisJCQkJCQkgIGppZmZpZXMgKyAxKTsKIAkJCQlyZXR1cm47CisJCQl9CiAKIAkJCS8qCiAJ
CQkgKiBXYUlkbGVMaXRlUmVzdG9yZTpiZHcsc2tsCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
