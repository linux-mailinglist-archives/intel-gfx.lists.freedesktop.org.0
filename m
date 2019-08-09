Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B26C388356
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 21:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41756EE8D;
	Fri,  9 Aug 2019 19:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071016EE8D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 19:34:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 12:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="199492144"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.86])
 by fmsmga004.fm.intel.com with ESMTP; 09 Aug 2019 12:34:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 20:34:56 +0100
Message-Id: <20190809193456.3836-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809193456.3836-1-matthew.auld@intel.com>
References: <20190809193456.3836-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gtt: disable 2M pages for pre-gen11
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

V2UgY3VycmVudGx5IGRpc2FibGUgVEhQKFRyYW5zcGFyZW50LUh1Z2UtUGFnZXMpIGZvciBvdXIg
c2htZW0gb2JqZWN0cwpkdWUgdG8gYSBwZXJmb3JtYW5jZSByZWdyZXNzaW9uIHdpdGggcmVhZCBC
VyBpbiBzb21lIGludGVybmFsCmJlbmNobWFya3MuIEdpdmVuIHRoYXQgdGhpcyBpcyBvdXIgbWFp
biBzb3VyY2Ugb2YgMk0gcGFnZXMsIHRoZXJlIHJlYWxseQppc24ndCBtdWNoIHBvaW50IGluIGVu
YWJsaW5nIDJNIEdUVCBwYWdlcywgZXNwZWNpYWxseSB0aGlzIHRoYXQgY29tZXMgYXQKdGhlIGNv
c3Qgb2YgZGlzYWJsaW5nIHRoZSBHVFQgY2FjaGUuIEhvd2V2ZXIgZnJvbSBnZW4xMSBpdCBsb29r
cyBsaWtlIHdlCnNob3VsZCBob3BlZnVsbHkgc2VlIHRoZSBIVyBpc3N1ZSByZXNvbHZlZC4gR2l2
ZW4gdGhpcyBvcHQgZm9yIG9ubHkKZW5hYmxpbmcgMk0gR1RUIHBhZ2VzIGZyb20gZ2VuMTEgb253
YXJkcy4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxMSArKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpp
bmRleCAxZmViZGEyYTkwZTcuLjE5NzRlNGM3OGE0MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
CkBAIC01MjIsOCArNTIyLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5m
byBpbnRlbF9oYXN3ZWxsX2d0M19pbmZvID0gewogI2RlZmluZSBHRU44X0ZFQVRVUkVTIFwKIAlH
NzVfRkVBVFVSRVMsIFwKIAlHRU4oOCksIFwKLQkucGFnZV9zaXplcyA9IEk5MTVfR1RUX1BBR0Vf
U0laRV80SyB8IFwKLQkJICAgICAgSTkxNV9HVFRfUEFHRV9TSVpFXzJNLCBcCiAJLmhhc19sb2dp
Y2FsX3JpbmdfY29udGV4dHMgPSAxLCBcCiAJLnBwZ3R0X3R5cGUgPSBJTlRFTF9QUEdUVF9GVUxM
LCBcCiAJLnBwZ3R0X3NpemUgPSA0OCwgXApAQCAtNTg2LDggKzU4NCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfY2hlcnJ5dmlld19pbmZvID0gewogCiAj
ZGVmaW5lIEdFTjlfREVGQVVMVF9QQUdFX1NJWkVTIFwKIAkucGFnZV9zaXplcyA9IEk5MTVfR1RU
X1BBR0VfU0laRV80SyB8IFwKLQkJICAgICAgSTkxNV9HVFRfUEFHRV9TSVpFXzY0SyB8IFwKLQkJ
ICAgICAgSTkxNV9HVFRfUEFHRV9TSVpFXzJNCisJCSAgICAgIEk5MTVfR1RUX1BBR0VfU0laRV82
NEsKIAogI2RlZmluZSBHRU45X0ZFQVRVUkVTIFwKIAlHRU44X0ZFQVRVUkVTLCBcCkBAIC03Mjcs
OCArNzI0LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxf
Y2Fubm9ubGFrZV9pbmZvID0gewogCS5ndCA9IDIsCiB9OwogCisjZGVmaW5lIEdFTjExX0RFRkFV
TFRfUEFHRV9TSVpFUyBcCisJLnBhZ2Vfc2l6ZXMgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNEsgfCBc
CisJCSAgICAgIEk5MTVfR1RUX1BBR0VfU0laRV82NEsgfCBcCisJCSAgICAgIEk5MTVfR1RUX1BB
R0VfU0laRV8yTQorCiAjZGVmaW5lIEdFTjExX0ZFQVRVUkVTIFwKIAlHRU4xMF9GRUFUVVJFUywg
XAorCUdFTjExX0RFRkFVTFRfUEFHRV9TSVpFUywgXAogCS5waXBlX29mZnNldHMgPSB7IFwKIAkJ
W1RSQU5TQ09ERVJfQV0gPSBQSVBFX0FfT0ZGU0VULCBcCiAJCVtUUkFOU0NPREVSX0JdID0gUElQ
RV9CX09GRlNFVCwgXAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
