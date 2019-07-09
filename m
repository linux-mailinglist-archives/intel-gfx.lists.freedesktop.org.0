Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 566C5639B2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 18:50:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8756E086;
	Tue,  9 Jul 2019 16:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95606E083
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 16:50:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17188187-1500050 
 for multiple; Tue, 09 Jul 2019 17:49:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 17:49:55 +0100
Message-Id: <20190709164955.20279-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Record preemption counting
 for selftests
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
IGZ1bmN0aW9uLgoKRml4ZXM6IDIyYjdhNDI2YmJlMSAoImRybS9pOTE1L2V4ZWNsaXN0czogUHJl
ZW1wdC10by1idXN5IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA4ICsrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpp
bmRleCBkMTZkNjVlMTk1YjAuLjk1NWE3OTk0Y2I3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKQEAgLTkyMSw2ICs5MjEsMTEgQEAgZW5hYmxlX3RpbWVzbGljZShzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmV0dXJuIGxhc3QgJiYgbmVlZF90aW1lc2xpY2UoZW5n
aW5lLCBsYXN0KTsKIH0KIAorc3RhdGljIHZvaWQgcmVjb3JkX3ByZWVtcHRpb24oc3RydWN0IGlu
dGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKK3sKKwkodm9pZClJOTE1X1NFTEZURVNU
X09OTFkoZXhlY2xpc3RzLT5wcmVlbXB0X2hhbmcuY291bnQrKyk7Cit9CisKIHN0YXRpYyB2b2lk
IGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAlz
dHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNsaXN0cyA9ICZlbmdpbmUt
PmV4ZWNsaXN0czsKQEAgLTk4OSw2ICs5OTQsOCBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfZGVx
dWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQkJICBsYXN0LT5mZW5jZS5z
ZXFubywKIAkJCQkgIGxhc3QtPnNjaGVkLmF0dHIucHJpb3JpdHksCiAJCQkJICBleGVjbGlzdHMt
PnF1ZXVlX3ByaW9yaXR5X2hpbnQpOworCQkJcmVjb3JkX3ByZWVtcHRpb24oZXhlY2xpc3RzKTsK
KwogCQkJLyoKIAkJCSAqIERvbid0IGxldCB0aGUgUklOR19IRUFEIGFkdmFuY2UgcGFzdCB0aGUg
YnJlYWRjcnVtYgogCQkJICogYXMgd2UgdW53aW5kIChhbmQgdW50aWwgd2UgcmVzdWJtaXQpIHNv
IHRoYXQgd2UgZG8KQEAgLTEwMjIsNiArMTAyOSw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19k
ZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQkgIGxhc3QtPmZlbmNl
LnNlcW5vLAogCQkJCSAgbGFzdC0+c2NoZWQuYXR0ci5wcmlvcml0eSwKIAkJCQkgIGV4ZWNsaXN0
cy0+cXVldWVfcHJpb3JpdHlfaGludCk7CisJCQlyZWNvcmRfcHJlZW1wdGlvbihleGVjbGlzdHMp
OwogCiAJCQlyaW5nX3NldF9wYXVzZWQoZW5naW5lLCAxKTsKIAkJCWRlZmVyX2FjdGl2ZShlbmdp
bmUpOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
