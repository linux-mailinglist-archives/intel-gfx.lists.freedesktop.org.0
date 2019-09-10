Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7111AEA13
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 14:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13C46E8BE;
	Tue, 10 Sep 2019 12:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5AC6E072
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:13:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 05:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="184153555"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 10 Sep 2019 05:13:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 15:13:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:13:47 +0300
Message-Id: <20190910121347.22958-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use a high priority wq for
 nonblocking plane updates
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnN5
c3RlbV91bmJvdW5kX3dxIGNhbid0IGtlZXAgdXAgc29tZXRpbWVzIGFuZCB3ZSBnZXQgZHJvcHBl
ZCBmcmFtZXMuClN3aXRjaCB0byBhIGhpZ2ggcHJpb3JpdHkgdmFyaWFudC4KClJlcG9ydGVkLWJ5
OiBIZWlucmljaCBGaW5rIDxoZWlucmljaC5maW5rQGRhcXJpLmNvbT4KVGVzdGVkLWJ5OiBIZWlu
cmljaCBGaW5rIDxoZWlucmljaC5maW5rQGRhcXJpLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8IDIgKysKIDIgZmlsZXMgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAzYjUyNzVhYjY2Y2YuLjI2Njg3NDQwMDdi
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTE0MjcyLDcgKzE0MjcyLDcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiAJaWYgKG5vbmJsb2NrICYmIHN0YXRlLT5tb2Rlc2V0KSB7CiAJ
CXF1ZXVlX3dvcmsoZGV2X3ByaXYtPm1vZGVzZXRfd3EsICZzdGF0ZS0+YmFzZS5jb21taXRfd29y
ayk7CiAJfSBlbHNlIGlmIChub25ibG9jaykgewotCQlxdWV1ZV93b3JrKHN5c3RlbV91bmJvdW5k
X3dxLCAmc3RhdGUtPmJhc2UuY29tbWl0X3dvcmspOworCQlxdWV1ZV93b3JrKGRldl9wcml2LT5m
bGlwX3dxLCAmc3RhdGUtPmJhc2UuY29tbWl0X3dvcmspOwogCX0gZWxzZSB7CiAJCWlmIChzdGF0
ZS0+bW9kZXNldCkKIAkJCWZsdXNoX3dvcmtxdWV1ZShkZXZfcHJpdi0+bW9kZXNldF93cSk7CkBA
IC0xNjE4MSw2ICsxNjE4MSw4IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKIAlpbnQgcmV0OwogCiAJZGV2X3ByaXYtPm1vZGVzZXRfd3EgPSBhbGxvY19v
cmRlcmVkX3dvcmtxdWV1ZSgiaTkxNV9tb2Rlc2V0IiwgMCk7CisJZGV2X3ByaXYtPmZsaXBfd3Eg
PSBhbGxvY193b3JrcXVldWUoImk5MTVfZmxpcCIsIFdRX0hJR0hQUkkgfAorCQkJCQkgICAgV1Ff
VU5CT1VORCwgV1FfVU5CT1VORF9NQVhfQUNUSVZFKTsKIAogCWRybV9tb2RlX2NvbmZpZ19pbml0
KGRldik7CiAKQEAgLTE3MTM5LDYgKzE3MTQxLDcgQEAgdm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZl
cl9yZW1vdmUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAKKwlmbHVzaF93b3JrcXVldWUoZGV2X3By
aXYtPmZsaXBfd3EpOwogCWZsdXNoX3dvcmtxdWV1ZShkZXZfcHJpdi0+bW9kZXNldF93cSk7CiAK
IAlmbHVzaF93b3JrKCZkZXZfcHJpdi0+YXRvbWljX2hlbHBlci5mcmVlX3dvcmspOwpAQCAtMTcx
NzUsNiArMTcxNzgsNyBAQCB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2KQogCiAJaW50ZWxfZ21idXNfdGVhcmRvd24oZGV2X3ByaXYpOwogCisJ
ZGVzdHJveV93b3JrcXVldWUoZGV2X3ByaXYtPmZsaXBfd3EpOwogCWRlc3Ryb3lfd29ya3F1ZXVl
KGRldl9wcml2LT5tb2Rlc2V0X3dxKTsKIAogCWludGVsX2ZiY19jbGVhbnVwX2NmYihkZXZfcHJp
dik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBlMjg5YjRmZmQzNGIuLmQ0MTc3Y2E4ZmZj
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xNDM0LDYgKzE0MzQsOCBAQCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSB7CiAKIAkvKiBvcmRlcmVkIHdxIGZvciBtb2Rlc2V0cyAqLwogCXN0
cnVjdCB3b3JrcXVldWVfc3RydWN0ICptb2Rlc2V0X3dxOworCS8qIHVuYm91bmQgaGlwcmkgd3Eg
Zm9yIHBhZ2UgZmxpcHMvcGxhbmUgdXBkYXRlcyAqLworCXN0cnVjdCB3b3JrcXVldWVfc3RydWN0
ICpmbGlwX3dxOwogCiAJLyogRGlzcGxheSBmdW5jdGlvbnMgKi8KIAlzdHJ1Y3QgZHJtX2k5MTVf
ZGlzcGxheV9mdW5jcyBkaXNwbGF5OwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
