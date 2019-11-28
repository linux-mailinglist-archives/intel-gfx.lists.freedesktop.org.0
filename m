Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ACF10C69A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 11:25:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9456E799;
	Thu, 28 Nov 2019 10:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABAF56E799
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 10:25:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19372961-1500050 
 for multiple; Thu, 28 Nov 2019 10:25:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 10:25:46 +0000
Message-Id: <20191128102546.3857140-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Try to show where the pulse
 went
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

V2UgaGF2ZSBhIGNhc2Ugb2YgYSBteXN0ZXJpb3VzbHkgYWJzZW50IHB1bHNlLCBzbyBkdW1wIHRo
ZSBlbmdpbmUKZGV0YWlscyB0byBzZWUgaWYgd2UgY2FuIGZpbmQgb3V0IHdoYXQgaGFwcGVuZWQg
dG8gaXQuCgpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTI0MDUKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMgICAgICAgICAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5n
aW5lX2hlYXJ0YmVhdC5jIHwgNSArKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDhmNmUz
NTNjYWE2Ni4uZGYzMzY5YzNmMzMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYwpAQCAtMTQ3OSw2ICsxNDc5LDggQEAgdm9pZCBpbnRlbF9lbmdpbmVfZHVtcChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCWRybV9wcmludGYobSwgIioqKiBXRURH
RUQgKioqXG4iKTsKIAogCWRybV9wcmludGYobSwgIlx0QXdha2U/ICVkXG4iLCBhdG9taWNfcmVh
ZCgmZW5naW5lLT53YWtlcmVmLmNvdW50KSk7CisJZHJtX3ByaW50ZihtLCAiXHRCYXJyaWVycz86
ICVzXG4iLAorCQkgICB5ZXNubyghbGxpc3RfZW1wdHkoJmVuZ2luZS0+YmFycmllcl90YXNrcykp
KTsKIAogCXJjdV9yZWFkX2xvY2soKTsKIAlycSA9IFJFQURfT05DRShlbmdpbmUtPmhlYXJ0YmVh
dC5zeXN0b2xlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2VuZ2luZV9oZWFydGJlYXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2Vu
Z2luZV9oZWFydGJlYXQuYwppbmRleCBmNjY1YTBlMjNjNjEuLjBiMTE0OGNmM2Y2MSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQu
YwpAQCAtOTEsNiArOTEsMTEgQEAgc3RhdGljIGludCBfX2xpdmVfaWRsZV9wdWxzZShzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJR0VNX0JVR19PTighbGxpc3RfZW1wdHkoJmVuZ2lu
ZS0+YmFycmllcl90YXNrcykpOwogCiAJaWYgKGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1l
b3V0KGVuZ2luZS0+Z3QsIEhaIC8gNSkpIHsKKwkJc3RydWN0IGRybV9wcmludGVyIG0gPSBkcm1f
ZXJyX3ByaW50ZXIoInB1bHNlIik7CisKKwkJcHJfZXJyKCIlczogbm8gaGVhcnRiZWF0IHB1bHNl
P1xuIiwgZW5naW5lLT5uYW1lKTsKKwkJaW50ZWxfZW5naW5lX2R1bXAoZW5naW5lLCAmbSwgIiVz
IiwgZW5naW5lLT5uYW1lKTsKKwogCQllcnIgPSAtRVRJTUU7CiAJCWdvdG8gb3V0OwogCX0KLS0g
CjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
