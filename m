Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F90D118595
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:52:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3666E8B4;
	Tue, 10 Dec 2019 10:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28336E8B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:52:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:27 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="210367673"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:58 +0200
Message-Id: <fecebdc2719dd0c78eaf8f4d3225bb185956d7db.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 14/16] drm/i915/dsi: account for DSC in
 horizontal timings
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

V2hlbiBEU0MgaXMgZW5hYmxlZCwgd2UgbmVlZCB0byBhZGp1c3QgdGhlIGhvcml6b250YWwgdGlt
aW5ncyB0byBhY2NvdW50CmZvciB0aGUgY29tcHJlc3NlZCAoYW5kIHRoZXJlZm9yZSByZWR1Y2Vk
KSBsaW5rIHNwZWVkLgoKVGhlIGNvbXByZXNzZWQgZnJlcXVlbmN5IHJhdGlvIHNpbXBsaWZpZXMg
ZG93biB0byB0aGUgcmF0aW8gYmV0d2Vlbgpjb21wcmVzc2VkIGFuZCBub24tY29tcHJlc3NlZCBi
cHAuCgpCc3BlYzogNDkyNjMKU3VnZ2VzdGVkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRh
Lmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgMjQgKysr
KysrKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4
IDQ2MDc1OTkxMzcwOC4uY2FhNDc3YzRiMWFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYwpAQCAtNzg1LDEyICs3ODUsMTIgQEAgZ2VuMTFfZHNpX2NvbmZpZ3VyZV90cmFu
c2NvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCiBzdGF0aWMgdm9pZAogZ2Vu
MTFfZHNpX3NldF90cmFuc2NvZGVyX3RpbWluZ3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCi0JCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKKwkJ
CQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
CiAJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpID0gZW5jX3RvX2ludGVsX2RzaSgmZW5jb2Rl
ci0+YmFzZSk7CiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUg
PQotCQkJCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7CisJCSZjcnRjX3N0YXRlLT5o
dy5hZGp1c3RlZF9tb2RlOwogCWVudW0gcG9ydCBwb3J0OwogCWVudW0gdHJhbnNjb2RlciBkc2lf
dHJhbnM7CiAJLyogaG9yaXpvbnRhbCB0aW1pbmdzICovCkBAIC03OTgsMTEgKzc5OCwyNSBAQCBn
ZW4xMV9kc2lfc2V0X3RyYW5zY29kZXJfdGltaW5ncyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAl1MTYgaGJhY2tfcG9yY2g7CiAJLyogdmVydGljYWwgdGltaW5ncyAqLwogCXUxNiB2
dG90YWwsIHZhY3RpdmUsIHZzeW5jX3N0YXJ0LCB2c3luY19lbmQsIHZzeW5jX3NoaWZ0OworCWlu
dCBtdWwgPSAxLCBkaXYgPSAxOworCisJLyoKKwkgKiBBZGp1c3QgaG9yaXpvbnRhbCB0aW1pbmdz
IChodG90YWwsIGhzeW5jX3N0YXJ0LCBoc3luY19lbmQpIHRvIGFjY291bnQKKwkgKiBmb3Igc2xv
d2VyIGxpbmsgc3BlZWQgaWYgRFNDIGlzIGVuYWJsZWQuCisJICoKKwkgKiBUaGUgY29tcHJlc3Np
b24gZnJlcXVlbmN5IHJhdGlvIGlzIHRoZSByYXRpbyBiZXR3ZWVuIGNvbXByZXNzZWQgYW5kCisJ
ICogbm9uLWNvbXByZXNzZWQgbGluayBzcGVlZHMsIGFuZCBzaW1wbGlmaWVzIGRvd24gdG8gdGhl
IHJhdGlvIGJldHdlZW4KKwkgKiBjb21wcmVzc2VkIGFuZCBub24tY29tcHJlc3NlZCBicHAuCisJ
ICovCisJaWYgKGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpIHsKKwkJbXVsID0g
Y3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzZWRfYnBwOworCQlkaXYgPSBtaXBpX2RzaV9waXhlbF9m
b3JtYXRfdG9fYnBwKGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsKKwl9CiAKIAloYWN0aXZlID0g
YWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheTsKLQlodG90YWwgPSBhZGp1c3RlZF9tb2RlLT5j
cnRjX2h0b3RhbDsKLQloc3luY19zdGFydCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfc3Rh
cnQ7Ci0JaHN5bmNfZW5kID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oc3luY19lbmQ7CisJaHRvdGFs
ID0gRElWX1JPVU5EX1VQKGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsICogbXVsLCBkaXYpOwor
CWhzeW5jX3N0YXJ0ID0gRElWX1JPVU5EX1VQKGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfc3Rh
cnQgKiBtdWwsIGRpdik7CisJaHN5bmNfZW5kID0gRElWX1JPVU5EX1VQKGFkanVzdGVkX21vZGUt
PmNydGNfaHN5bmNfZW5kICogbXVsLCBkaXYpOwogCWhzeW5jX3NpemUgID0gaHN5bmNfZW5kIC0g
aHN5bmNfc3RhcnQ7CiAJaGJhY2tfcG9yY2ggPSAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwg
LQogCQkgICAgICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oc3luY19lbmQpOwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
