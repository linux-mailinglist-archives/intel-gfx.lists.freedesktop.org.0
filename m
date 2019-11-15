Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E01FE15D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7441C6E8B4;
	Fri, 15 Nov 2019 15:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F6B76E8C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:35:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:35:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="195420982"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 15 Nov 2019 07:35:14 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 20:55:46 +0530
Message-Id: <20191115152549.23047-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191115152549.23047-1-animesh.manna@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/7] drm/i915/dp: Notify testapp using uevent and
 debugfs entry
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gYWxpZ24gd2l0aCBsaW5rIGNvbXBsaWFuY2UgZGVzaWduIGV4aXN0aW5nIGludGVsX2RwX2Nv
bXBsaWFuY2UKdG9vbCB3aWxsIGJlIHVzZWQgdG8gZ2V0IHRoZSBwaHkgcmVxdWVzdCBpbiB1c2Vy
c3BhY2UgdGhyb3VnaCB1ZXZlbnQuCgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgfCAgNiArKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
ICAgICB8IDEwICsrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5k
ZXggMzM4ZDM3NDRjNWQ1Li5hMmI4NjBjZjNiOTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKQEAgLTUyODgsOCArNTI4OCwxMCBAQCBpbnRlbF9kcF9zaG9ydF9wdWxz
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCiAJaW50ZWxfcHNyX3Nob3J0X3B1bHNlKGlu
dGVsX2RwKTsKIAotCWlmIChpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X3R5cGUgPT0gRFBfVEVT
VF9MSU5LX1RSQUlOSU5HKSB7Ci0JCURSTV9ERUJVR19LTVMoIkxpbmsgVHJhaW5pbmcgQ29tcGxp
YW5jZSBUZXN0IHJlcXVlc3RlZFxuIik7CisJaWYgKGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3Rf
dHlwZSA9PSBEUF9URVNUX0xJTktfVFJBSU5JTkcgfHwKKwkgICAgaW50ZWxfZHAtPmNvbXBsaWFu
Y2UudGVzdF90eXBlID09CisJICAgIERQX1RFU1RfTElOS19QSFlfVEVTVF9QQVRURVJOKSB7CisJ
CURSTV9ERUJVR19LTVMoIkNvbXBsaWFuY2UgVGVzdCByZXF1ZXN0ZWRcbiIpOwogCQkvKiBTZW5k
IGEgSG90cGx1ZyBVZXZlbnQgdG8gdXNlcnNwYWNlIHRvIHN0YXJ0IG1vZGVzZXQgKi8KIAkJZHJt
X2ttc19oZWxwZXJfaG90cGx1Z19ldmVudCgmZGV2X3ByaXYtPmRybSk7CiAJfQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBjYWI2MzI3OTFmNzMuLmU4YjFhOGMxMDE1YSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTMyMTIsNiArMzIxMiwxNiBAQCBzdGF0
aWMgaW50IGk5MTVfZGlzcGxheXBvcnRfdGVzdF9kYXRhX3Nob3coc3RydWN0IHNlcV9maWxlICpt
LCB2b2lkICpkYXRhKQogCQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEudmRp
c3BsYXkpOwogCQkJCXNlcV9wcmludGYobSwgImJwYzogJXVcbiIsCiAJCQkJCSAgIGludGVsX2Rw
LT5jb21wbGlhbmNlLnRlc3RfZGF0YS5icGMpOworCQkJfSBlbHNlIGlmIChpbnRlbF9kcC0+Y29t
cGxpYW5jZS50ZXN0X3R5cGUgPT0KKwkJCQkgICBEUF9URVNUX0xJTktfUEhZX1RFU1RfUEFUVEVS
TikgeworCQkJCXNlcV9wcmludGYobSwgInBhdHRlcm46ICVkXG4iLAorCQkJCQkgICBpbnRlbF9k
cC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEucGh5dGVzdC5waHlfcGF0dGVybik7CisJCQkJc2VxX3By
aW50ZihtLCAiTnVtYmVyIG9mIGxhbmVzOiAlZFxuIiwKKwkJCQkJICAgaW50ZWxfZHAtPmNvbXBs
aWFuY2UudGVzdF9kYXRhLnBoeXRlc3QubnVtX2xhbmVzKTsKKwkJCQlzZXFfcHJpbnRmKG0sICJM
aW5rIFJhdGU6ICVkXG4iLAorCQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEu
cGh5dGVzdC5saW5rX3JhdGUpOworCQkJCXNlcV9wcmludGYobSwgImxldmVsOiAlMDJ4XG4iLAor
CQkJCQkgICBpbnRlbF9kcC0+dHJhaW5fc2V0WzBdKTsKIAkJCX0KIAkJfSBlbHNlCiAJCQlzZXFf
cHV0cyhtLCAiMCIpOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
