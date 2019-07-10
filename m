Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 070FF64183
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 08:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E27899A7;
	Wed, 10 Jul 2019 06:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 889088999C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 06:45:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17193814-1500050 
 for multiple; Wed, 10 Jul 2019 07:45:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 07:44:41 +0100
Message-Id: <20190710064454.682-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/14] drm/i915/execlists: Record preemption for
 selftests
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

UHV0IGJhY2sgdGhlIHByZWVtcHRpb24gY291bnRlcnMgbG9zdCBpbiBjb21taXQgMjJiN2E0MjZi
YmUxCigiZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kiKSBzbyB0aGF0IG91ciBz
ZWxmdGVzdHMgdGhhdAphc3NlcnQgbm8gcHJlZW1wdGlvbiB0b29rIHBsYWNlIGNvbnRpbnVlIHRv
IGZ1bmN0aW9uLgoKdjI6IEJ1dCBhIHRpbWVzbGljZSBpcyBvbmx5IGEgInNvZnQiIHByZWVtcHRp
b24hCgpGaXhlczogMjJiN2E0MjZiYmUxICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRv
LWJ1c3kiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBN
aWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMTlj
ZThlYjVlNWM5Li4yNzBlZjQxN2RkMWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CkBAIC05MjEsNiArOTIxLDExIEBAIGVuYWJsZV90aW1lc2xpY2Uoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCXJldHVybiBsYXN0ICYmIG5lZWRfdGltZXNsaWNlKGVuZ2luZSwgbGFz
dCk7CiB9CiAKK3N0YXRpYyB2b2lkIHJlY29yZF9wcmVlbXB0aW9uKHN0cnVjdCBpbnRlbF9lbmdp
bmVfZXhlY2xpc3RzICpleGVjbGlzdHMpCit7CisJKHZvaWQpSTkxNV9TRUxGVEVTVF9PTkxZKGV4
ZWNsaXN0cy0+cHJlZW1wdF9oYW5nLmNvdW50KyspOworfQorCiBzdGF0aWMgdm9pZCBleGVjbGlz
dHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBleGVjbGlzdHMgPSAmZW5naW5lLT5leGVjbGlz
dHM7CkBAIC05ODksNiArOTk0LDggQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJCSAgbGFzdC0+ZmVuY2Uuc2Vxbm8sCiAJ
CQkJICBsYXN0LT5zY2hlZC5hdHRyLnByaW9yaXR5LAogCQkJCSAgZXhlY2xpc3RzLT5xdWV1ZV9w
cmlvcml0eV9oaW50KTsKKwkJCXJlY29yZF9wcmVlbXB0aW9uKGV4ZWNsaXN0cyk7CisKIAkJCS8q
CiAJCQkgKiBEb24ndCBsZXQgdGhlIFJJTkdfSEVBRCBhZHZhbmNlIHBhc3QgdGhlIGJyZWFkY3J1
bWIKIAkJCSAqIGFzIHdlIHVud2luZCAoYW5kIHVudGlsIHdlIHJlc3VibWl0KSBzbyB0aGF0IHdl
IGRvCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
