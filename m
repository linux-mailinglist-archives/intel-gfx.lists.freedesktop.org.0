Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E673D8D2D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 12:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3276E90C;
	Wed, 16 Oct 2019 10:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22ABE6E90F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 10:03:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 03:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="189633911"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga008.jf.intel.com with ESMTP; 16 Oct 2019 03:03:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:02:44 +0530
Message-Id: <20191016103249.32121-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191016103249.32121-1-uma.shankar@intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v1 1/6] drm/i915/display: Add HDR Capability detection
 for LSPCON
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

TFNQQ09OIGZpcm13YXJlIGV4cG9zZXMgSERSIGNhcGFiaWxpdHkgdGhyb3VnaCBMUENPTl9DQVBB
QklMSVRJRVMKRFBDRCByZWdpc3Rlci4gTFNQQ09OIGltcGxlbWVudGF0aW9ucyBjYXBhYmxlIG9m
IHN1cHBvcnRpbmcKSERSIHNldCBIRFJfQ0FQQUJJTElUWSBiaXQgaW4gTFNQQ09OX0NBUEFCSUxJ
VElFUyB0byAxLiBUaGlzIHBhdGNoCnJlYWRzIHRoZSBzYW1lLCBkZXRlY3RzIHRoZSBIRFIgY2Fw
YWJpbGl0eSBhbmQgYWRkcyB0aGlzIHRvCmludGVsX2xzcGNvbiBzdHJ1Y3QuCgpTaWduZWQtb2Zm
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgICB8IDMyICsrKysrKysrKysrKysrKysrKysK
IDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggNDAzOTBkODU1ODE1
Li41NjBhZjA4NjI1OWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC0xMjY4LDYgKzEyNjgsNyBAQCBzdHJ1Y3QgaW50ZWxf
bHNwY29uIHsKIAlib29sIGFjdGl2ZTsKIAllbnVtIGRybV9sc3Bjb25fbW9kZSBtb2RlOwogCWVu
dW0gbHNwY29uX3ZlbmRvciB2ZW5kb3I7CisJYm9vbCBoZHJfc3VwcG9ydGVkOwogfTsKIAogc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9sc3Bjb24uYwppbmRleCBmOGYxMzA4NjQzYTkuLmExZDAxMjdiN2Y1NyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC0zNSw2ICszNSw4IEBA
CiAjZGVmaW5lIExTUENPTl9WRU5ET1JfUEFSQURFX09VSSAweDAwMUNGOAogI2RlZmluZSBMU1BD
T05fVkVORE9SX01DQV9PVUkgMHgwMDYwQUQKIAorI2RlZmluZSBEUENEX01DQV9MU1BDT05fSERS
X1NUQVRVUwkweDcwMDAzCisKIC8qIEFVWCBhZGRyZXNzZXMgdG8gd3JpdGUgTUNBIEFWSSBJRiAq
LwogI2RlZmluZSBMU1BDT05fTUNBX0FWSV9JRl9XUklURV9PRkZTRVQgMHg1QzAKICNkZWZpbmUg
TFNQQ09OX01DQV9BVklfSUZfQ1RSTCAweDVERgpAQCAtMTA0LDYgKzEwNiwzMSBAQCBzdGF0aWMg
Ym9vbCBsc3Bjb25fZGV0ZWN0X3ZlbmRvcihzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCiAJ
cmV0dXJuIHRydWU7CiB9CiAKK3N0YXRpYyBib29sIGxzcGNvbl9kZXRlY3RfaGRyX2NhcGFiaWxp
dHkoc3RydWN0IGludGVsX2xzcGNvbiAqbHNwY29uKQoreworCXN0cnVjdCBpbnRlbF9kcCAqZHAg
PSBsc3Bjb25fdG9faW50ZWxfZHAobHNwY29uKTsKKwl1OCBoZHJfY2FwczsKKwlpbnQgcmV0Owor
CisJLyogRW5hYmxlIEhEUiBmb3IgTUNBIGJhc2VkIExTUENPTiBkZXZpY2VzICovCisJaWYgKGxz
cGNvbi0+dmVuZG9yID09IExTUENPTl9WRU5ET1JfTUNBKQorCQlyZXQgPSBkcm1fZHBfZHBjZF9y
ZWFkKCZkcC0+YXV4LCBEUENEX01DQV9MU1BDT05fSERSX1NUQVRVUywKKwkJCQkgICAgICAgJmhk
cl9jYXBzLCAxKTsKKwllbHNlCisJCXJldHVybiBmYWxzZTsKKworCWlmIChyZXQgPCAwKSB7CisJ
CURSTV9ERUJVR19LTVMoImhkciBjYXBhYmlsaXR5IGRldGVjdGlvbiBmYWlsZWRcbiIpOworCQls
c3Bjb24tPmhkcl9zdXBwb3J0ZWQgPSBmYWxzZTsKKwkJcmV0dXJuIGZhbHNlOworCX0gZWxzZSBp
ZiAoaGRyX2NhcHMgJiAweDEpIHsKKwkJRFJNX0RFQlVHX0tNUygibHNwY29uIGNhcGFibGUgb2Yg
SERSXG4iKTsKKwkJbHNwY29uLT5oZHJfc3VwcG9ydGVkID0gdHJ1ZTsKKwl9CisKKwlyZXR1cm4g
dHJ1ZTsKK30KKwogc3RhdGljIGVudW0gZHJtX2xzcGNvbl9tb2RlIGxzcGNvbl9nZXRfY3VycmVu
dF9tb2RlKHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbikKIHsKIAllbnVtIGRybV9sc3Bjb25f
bW9kZSBjdXJyZW50X21vZGU7CkBAIC01ODEsNiArNjA4LDExIEBAIGJvb2wgbHNwY29uX2luaXQo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiAJCXJldHVybiBmYWxz
ZTsKIAl9CiAKKwlpZiAoIWxzcGNvbl9kZXRlY3RfaGRyX2NhcGFiaWxpdHkobHNwY29uKSkgewor
CQlEUk1fRVJST1IoIkxTUENPTiBoZHIgZGV0ZWN0aW9uIGZhaWxlZFxuIik7CisJCXJldHVybiBm
YWxzZTsKKwl9CisKIAljb25uZWN0b3ItPnljYmNyXzQyMF9hbGxvd2VkID0gdHJ1ZTsKIAlsc3Bj
b24tPmFjdGl2ZSA9IHRydWU7CiAJRFJNX0RFQlVHX0tNUygiU3VjY2VzczogTFNQQ09OIGluaXRc
biIpOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
