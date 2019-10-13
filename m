Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E98D5606
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2019 13:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708D56E0E7;
	Sun, 13 Oct 2019 11:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05346E0E7
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Oct 2019 11:45:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18821581-1500050 
 for multiple; Sun, 13 Oct 2019 12:45:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 13 Oct 2019 12:45:09 +0100
Message-Id: <20191013114509.3405-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013091127.1165-1-chris@chris-wilson.co.uk>
References: <20191013091127.1165-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: Fixup naked 64b divide
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

ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5vOiBpbiBmdW5jdGlvbiBg
aWd0X21vY2tfY29udGlndW91cyc6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRl
bF9tZW1vcnlfcmVnaW9uLmM6MTY2OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBfX3Vtb2RkaTMn
Cgp2MjogcHJvbW90ZSB0YXJnZXQgdG8gdTY0IGZvciBjb25zaXN0ZW5jeSBhY3Jvc3MgYWxsIGJ1
aWxkcwoKUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgpGaXhl
czogMmYwYjk3Y2EwMjExICgiZHJtL2k5MTUvcmVnaW9uOiBzdXBwb3J0IGNvbnRpZ3VvdXMgYWxs
b2NhdGlvbnMiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jIHwgMTIg
KysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVt
b3J5X3JlZ2lvbi5jCmluZGV4IDRlNDRjODFlOGU1Yi4uNTYwOTFlN2U1OTllIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMK
QEAgLTEyOCw5ICsxMjgsOSBAQCBzdGF0aWMgaW50IGlndF9tb2NrX2NvbnRpZ3VvdXModm9pZCAq
YXJnKQogCUxJU1RfSEVBRChvYmplY3RzKTsKIAlMSVNUX0hFQUQoaG9sZXMpOwogCUk5MTVfUk5E
X1NUQVRFKHBybmcpOwotCXJlc291cmNlX3NpemVfdCB0YXJnZXQ7CiAJcmVzb3VyY2Vfc2l6ZV90
IHRvdGFsOwogCXJlc291cmNlX3NpemVfdCBtaW47CisJdTY0IHRhcmdldDsKIAlpbnQgZXJyID0g
MDsKIAogCXRvdGFsID0gcmVzb3VyY2Vfc2l6ZSgmbWVtLT5yZWdpb24pOwpAQCAtMTYzLDcgKzE2
Myw5IEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfY29udGlndW91cyh2b2lkICphcmcpCiAJaWd0X29i
amVjdF9yZWxlYXNlKG9iaik7CiAKIAkvKiBJbnRlcm5hbCBmcmFnbWVudGF0aW9uIHNob3VsZCBu
b3QgYmxlZWQgaW50byB0aGUgb2JqZWN0IHNpemUgKi8KLQl0YXJnZXQgPSByb3VuZF91cChwcmFu
ZG9tX3UzMl9zdGF0ZSgmcHJuZykgJSB0b3RhbCwgUEFHRV9TSVpFKTsKKwl0YXJnZXQgPSBpOTE1
X3ByYW5kb21fdTY0X3N0YXRlKCZwcm5nKTsKKwlkaXY2NF91NjRfcmVtKHRhcmdldCwgdG90YWws
ICZ0YXJnZXQpOworCXRhcmdldCA9IHJvdW5kX3VwKHRhcmdldCwgUEFHRV9TSVpFKTsKIAl0YXJn
ZXQgPSBtYXhfdCh1NjQsIFBBR0VfU0laRSwgdGFyZ2V0KTsKIAogCW9iaiA9IGlndF9vYmplY3Rf
Y3JlYXRlKG1lbSwgJm9iamVjdHMsIHRhcmdldCwKQEAgLTE3Miw4ICsxNzQsOCBAQCBzdGF0aWMg
aW50IGlndF9tb2NrX2NvbnRpZ3VvdXModm9pZCAqYXJnKQogCQlyZXR1cm4gUFRSX0VSUihvYmop
OwogCiAJaWYgKG9iai0+YmFzZS5zaXplICE9IHRhcmdldCkgewotCQlwcl9lcnIoIiVzIG9iai0+
YmFzZS5zaXplKCVsbHgpICE9IHRhcmdldCglbGx4KVxuIiwgX19mdW5jX18sCi0JCSAgICAgICAo
dTY0KW9iai0+YmFzZS5zaXplLCAodTY0KXRhcmdldCk7CisJCXByX2VycigiJXMgb2JqLT5iYXNl
LnNpemUoJXp4KSAhPSB0YXJnZXQoJWxseClcbiIsIF9fZnVuY19fLAorCQkgICAgICAgb2JqLT5i
YXNlLnNpemUsIHRhcmdldCk7CiAJCWVyciA9IC1FSU5WQUw7CiAJCWdvdG8gZXJyX2Nsb3NlX29i
amVjdHM7CiAJfQpAQCAtMjM2LDcgKzIzOCw3IEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfY29udGln
dW91cyh2b2lkICphcmcpCiAJCQkJCUk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyk7CiAJCWlmIChz
aG91bGRfZmFpbCAhPSBJU19FUlIob2JqKSkgewogCQkJcHJfZXJyKCIlcyB0YXJnZXQgYWxsb2Nh
dGlvbiglbGx4KSBtaXNtYXRjaFxuIiwKLQkJCSAgICAgICBfX2Z1bmNfXywgKHU2NCl0YXJnZXQp
OworCQkJICAgICAgIF9fZnVuY19fLCB0YXJnZXQpOwogCQkJZXJyID0gLUVJTlZBTDsKIAkJCWdv
dG8gZXJyX2Nsb3NlX29iamVjdHM7CiAJCX0KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
