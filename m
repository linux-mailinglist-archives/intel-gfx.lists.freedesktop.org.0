Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D2BF608
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665166ED91;
	Thu, 26 Sep 2019 15:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088156ED8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:37:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18629162-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 16:37:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 16:36:58 +0100
Message-Id: <20190926153700.19712-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Delegate our irq handler to a thread
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

TW92aW5nIG91ciBwcmltYXJ5IGlycSBoYW5kbGVyIHRvIGEgUlQgdGhyZWFkIGluY3VycyBhbiBl
eHRyYSAxdXMgZGVsYXkKaW4gcHJvY2VzcyBpbnRlcnJ1cHRzLiBUaGlzIGlzIG1vc3Qgbm90aWNl
IGluIHdha2luZyB1cCBjbGllbnQgdGhyZWFkcywKd2hlcmUgaXQgYWRkcyBhYm91dCAyMCUgb2Yg
ZXh0cmEgbGF0ZW5jeS4gSXQgYWxzbyBpbXBvc2VzIGEgZGVsYXkgaW4KZmVlZGluZyB0aGUgR1BV
LCBhbiBleHRyYSAxdXMgYmVmb3JlIHNpZ25hbGluZyBzZWNvbmRhcnkgZW5naW5lcyBhbmQKZXh0
cmEgbGF0ZW5jeSBpbiByZXN1Ym1pdHRpbmcgd29yayB0byBrZWVwIHRoZSBHUFUgYnVzeS4gVGhl
IGxhdHRlciBjYXNlCmlzIGluc2lnbmlmaWNhbnQgYXMgdGhlIGxhdGVuY3kgaGlkZGVuIGJ5IHRo
ZSBhY3RpdmUgR1BVLCBhbmQKcHJlZW1wdC10by1idXN5IGVuc3VyZXMgdGhhdCBubyBleHRyYSBs
YXRlbmN5IGlzIGluY3VycmVkIGZvcgpwcmVlbXB0aW9uLgoKVGhlIGJlbmVmaXQgaXMgdGhhdCB3
ZSByZWR1Y2VkIHRoZSBpbXBhY3Qgb24gdGhlIHJlc3Qgb2YgdGhlIHN5c3RlbSwgdGhlCmN5Y2xl
dGVzdCBzaG93cyBhIHJlZHVjdGlvbiBmcm9tIDV1cyBtZWFuIGxhdGVuY3kgdG8gMnVzLCB3aXRo
IHRoZQptYXhpbXVtIG9ic2VydmVkIGxhdGVuY3kgKGluIGEgMiBtaW51dGUgd2luZG93KSByZWR1
Y2VkIGJ5IG92ZXIgMTYwdXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+CkNjOiBDbGFyayBXaWxsaWFtcyA8d2lsbGlhbXNAcmVkaGF0LmNvbT4KQ2M6IFNlYmFzdGlh
biBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IGJjODNm
MDk0MDY1YS4uZjNkZjc3MTRhM2YzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTQ0OTEs
OCArNDQ5MSw4IEBAIGludCBpbnRlbF9pcnFfaW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAKIAlpbnRlbF9pcnFfcmVzZXQoZGV2X3ByaXYpOwogCi0JcmV0ID0gcmVx
dWVzdF9pcnEoaXJxLCBpbnRlbF9pcnFfaGFuZGxlcihkZXZfcHJpdiksCi0JCQkgIElSUUZfU0hB
UkVELCBEUklWRVJfTkFNRSwgZGV2X3ByaXYpOworCXJldCA9IHJlcXVlc3RfdGhyZWFkZWRfaXJx
KGlycSwgTlVMTCwgaW50ZWxfaXJxX2hhbmRsZXIoZGV2X3ByaXYpLAorCQkJCSAgIElSUUZfU0hB
UkVELCBEUklWRVJfTkFNRSwgZGV2X3ByaXYpOwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9wcml2
LT5kcm0uaXJxX2VuYWJsZWQgPSBmYWxzZTsKIAkJcmV0dXJuIHJldDsKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
