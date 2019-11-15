Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEF0FDB1C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 11:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050726E3CE;
	Fri, 15 Nov 2019 10:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A83C6E3CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 10:18:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 02:18:52 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199157045"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 02:18:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 12:18:40 +0200
Message-Id: <20191115101840.23921-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191115101840.23921-1-jani.nikula@intel.com>
References: <20191115101840.23921-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: make debug printer shown_bug_once
 variable to drm_i915_private
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2V0IHJpZCBvZiB0aGUgbW9kdWxlIHNwZWNpZmljIHN0YXRpYyB2YXJpYWJsZS4KClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV91dGlscy5jIHwgOSArKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDE3NzlmNjAwZmNm
Yi4uZTExZWUzMjY4YWUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEyODMsNiArMTI4
Myw4IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAkvKiBNdXRleCB0byBwcm90ZWN0IHRo
ZSBhYm92ZSBoZGNwIGNvbXBvbmVudCByZWxhdGVkIHZhbHVlcy4gKi8KIAlzdHJ1Y3QgbXV0ZXgg
aGRjcF9jb21wX211dGV4OwogCisJYm9vbCBzaG93bl9idWdfb25jZTsKKwogCUk5MTVfU0VMRlRF
U1RfREVDTEFSRShzdHJ1Y3QgaTkxNV9zZWxmdGVzdF9zdGFzaCBzZWxmdGVzdDspCiAKIAkvKgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV91dGlscy5jCmluZGV4IGM0NzI2MWFlODZlYS4uZjQzNDI3NGIwYjI5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jCkBAIC0xMywxMSArMTMsMTAgQEAKIAkJICAg
ICJwcm92aWRpbmcgdGhlIGRtZXNnIGxvZyBieSBib290aW5nIHdpdGggZHJtLmRlYnVnPTB4ZiIK
IAogdm9pZAotX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGNvbnN0IGNoYXIgKmxldmVsLAorX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgY29uc3QgY2hhciAqbGV2ZWwsCiAJICAgICAgY29uc3QgY2hhciAqZm10LCAuLi4p
CiB7Ci0Jc3RhdGljIGJvb2wgc2hvd25fYnVnX29uY2U7Ci0Jc3RydWN0IGRldmljZSAqa2RldiA9
IGRldl9wcml2LT5kcm0uZGV2OworCXN0cnVjdCBkZXZpY2UgKmtkZXYgPSBpOTE1LT5kcm0uZGV2
OwogCWJvb2wgaXNfZXJyb3IgPSBsZXZlbFsxXSA8PSBLRVJOX0VSUlsxXTsKIAlib29sIGlzX2Rl
YnVnID0gbGV2ZWxbMV0gPT0gS0VSTl9ERUJVR1sxXTsKIAlzdHJ1Y3QgdmFfZm9ybWF0IHZhZjsK
QEAgLTM5LDcgKzM4LDcgQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxldmVsLAogCiAJdmFfZW5kKGFyZ3MpOwogCi0JaWYgKGlz
X2Vycm9yICYmICFzaG93bl9idWdfb25jZSkgeworCWlmIChpc19lcnJvciAmJiAhaTkxNS0+c2hv
d25fYnVnX29uY2UpIHsKIAkJLyoKIAkJICogQXNrIHRoZSB1c2VyIHRvIGZpbGUgYSBidWcgcmVw
b3J0IGZvciB0aGUgZXJyb3IsIGV4Y2VwdAogCQkgKiBpZiB0aGV5IG1heSBoYXZlIGNhdXNlZCB0
aGUgYnVnIGJ5IGZpZGRsaW5nIHdpdGggdW5zYWZlCkBAIC00Nyw3ICs0Niw3IEBAIF9faTkxNV9w
cmludGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBjb25zdCBjaGFyICpsZXZl
bCwKIAkJICovCiAJCWlmICghdGVzdF90YWludChUQUlOVF9VU0VSKSkKIAkJCWRldl9ub3RpY2Uo
a2RldiwgIiVzIiwgRkRPX0JVR19NU0cpOwotCQlzaG93bl9idWdfb25jZSA9IHRydWU7CisJCWk5
MTUtPnNob3duX2J1Z19vbmNlID0gdHJ1ZTsKIAl9CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
