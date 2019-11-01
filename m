Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA45EC109
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 11:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A529F6E1D8;
	Fri,  1 Nov 2019 10:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F046E1D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 10:08:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19043805-1500050 
 for multiple; Fri, 01 Nov 2019 09:51:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 09:51:47 +0000
Message-Id: <20191101095147.9769-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/lmem: Check against i915_selftest only
 under CONFIG_SELFTEST
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGkxOTVfc2VsZnRlc3QgbW9kdWxlIHBhcmFtZXRlcnMgb25seSBleGlzdCB3aGVuCkNPTkZJ
R19EUk1fSTkxNV9TRUxGVEVTVCBpcyBzZXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMiArKwog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmlu
ZGV4IDQ4MGUyMDU0ZjYyOC4uMzM0MDQ4NWMxMmUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
QEAgLTE0ODcsNiArMTQ4Nyw3IEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2Rl
diAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKIAkgKiBDaGVjayBpZiB3
ZSBzdXBwb3J0IGZha2UgTE1FTSAtLSBmb3Igbm93IHdlIG9ubHkgdW5sZWFzaCB0aGlzIGZvcgog
CSAqIHRoZSBsaXZlIHNlbGZ0ZXN0cyh0ZXN0LWFuZC1leGl0KS4KIAkgKi8KKyNpZiBJU19FTkFC
TEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKIAlpZiAoSVNfRU5BQkxFRChDT05GSUdfRFJN
X0k5MTVfVU5TVEFCTEVfRkFLRV9MTUVNKSkgewogCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSA5ICYmIGk5MTVfc2VsZnRlc3QubGl2ZSA8IDAgJiYKIAkJICAgIGk5MTVfbW9kcGFyYW1zLmZh
a2VfbG1lbV9zdGFydCkgewpAQCAtMTQ5Nyw2ICsxNDk4LDcgQEAgaW50IGk5MTVfZHJpdmVyX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50
KQogCQkJR0VNX0JVR19PTighSVNfREdGWChkZXZfcHJpdikpOwogCQl9CiAJfQorI2VuZGlmCiAK
IAlyZXQgPSBwY2lfZW5hYmxlX2RldmljZShwZGV2KTsKIAlpZiAocmV0KQotLSAKMi4yNC4wLnJj
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
