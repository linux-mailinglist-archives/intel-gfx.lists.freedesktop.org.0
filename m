Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D492F2D088F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA96E6E55E;
	Mon,  7 Dec 2020 00:22:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 067E86E550
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:10 +0000 (UTC)
IronPort-SDR: tQEQ8KlK09jPj8aPZlZCLteGzCbkqpIebUFg0qPBzvBp1Xdr9QoUMsAmSCywP2YyPL9gNm51MI
 IPcbWaFRGelQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889195"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889195"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:07 -0800
IronPort-SDR: zJ1+BFhd4wgvO73CDFFQc1ykuno/3JbBjUVlSsWRKQXaVxWWg/g095JGMWPexnBUPcRiRqQCgI
 hH8BmhE/31Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586439"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:07 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:25 -0800
Message-Id: <20201207002134.13731-8-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v1 07/16] drm/i915/pxp: Implement funcs to create
 the TEE channel
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHJpbmczIGRyaXZlciBzZW5kcyB0aGUgVEVFIGNvbW1hbmRzIGRpcmVjdGx5IHRv
IFRFRSwgYnV0CmxhdGVyLCBhcyBvdXIgZGVzaWduLCB3ZSB3b3VsZCBsaWtlIHRvIG1ha2Ugcmlu
ZzMgc2VuZGluZyB0aGUgVEVFCmNvbW1hbmRzIHZpYSB0aGUgcmluZzAgUFhQIGlvY3RsIGFjdGlv
biBpbnN0ZWFkIG9mIFRFRSBpb2N0bCwgc28Kd2UgY2FuIGNlbnRyYWxpemUgdGhvc2UgcHJvdGVj
dGlvbiBvcGVyYXRpb25zIGF0IHJpbmcwIFBYUC4KClNpZ25lZC1vZmYtYnk6IEh1YW5nLCBTZWFu
IFogPHNlYW4uei5odWFuZ0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgIHwgICA2ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMgICAgIHwg
ICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMgfCAxMjcgKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBf
dGVlLmggfCAgMTQgKysrCiBpbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oICAgICAgICAgICAg
IHwgICAxICsKIGluY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9pbnRlcmZhY2UuaCAgICAgfCAgNDUg
KysrKysrKysKIDggZmlsZXMgY2hhbmdlZCwgMjAxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
X3RlZS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVs
X3B4cF90ZWUuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9p
bnRlcmZhY2UuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggMTMxYmQ4OTIxNTY1Li4zY2M1ZmMy
NTBiMzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0yNTgsNyArMjU4LDggQEAgaTkxNS15ICs9
IGk5MTVfcGVyZi5vCiBpOTE1LSQoQ09ORklHX0RSTV9JOTE1X1BYUCkgKz0gXAogCXB4cC9pbnRl
bF9weHAubyBcCiAJcHhwL2ludGVsX3B4cF9jb250ZXh0Lm8gXAotCXB4cC9pbnRlbF9weHBfc20u
bworCXB4cC9pbnRlbF9weHBfc20ubyBcCisJcHhwL2ludGVsX3B4cF90ZWUubwogCiAjIFBvc3Qt
bW9ydGVtIGRlYnVnIGFuZCBHUFUgaGFuZyBzdGF0ZSBjYXB0dXJlCiBpOTE1LSQoQ09ORklHX0RS
TV9JOTE1X0NBUFRVUkVfRVJST1IpICs9IGk5MTVfZ3B1X2Vycm9yLm8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCmluZGV4IDFlNWVjYWZmNTcxZi4uNjQzOTkzODYyOTJmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKQEAgLTMyMiw2ICszMjIsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5
X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAltdXRleF9pbml0KCZk
ZXZfcHJpdi0+d20ud21fbXV0ZXgpOwogCW11dGV4X2luaXQoJmRldl9wcml2LT5wcHNfbXV0ZXgp
OwogCW11dGV4X2luaXQoJmRldl9wcml2LT5oZGNwX2NvbXBfbXV0ZXgpOworCW11dGV4X2luaXQo
JmRldl9wcml2LT5weHBfdGVlX2NvbXBfbXV0ZXgpOwogCiAJaTkxNV9tZW1jcHlfaW5pdF9lYXJs
eShkZXZfcHJpdik7CiAJaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KCZkZXZfcHJpdi0+cnVu
dGltZV9wbSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAzM2EzZjVjMzg3YjAuLjMyZTlj
Y2U5MjVkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xMjE5LDYgKzEyMTksMTIgQEAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCiAJc3RydWN0IGludGVsX3B4cCBweHA7CiAKKwlz
dHJ1Y3QgaTkxNV9weHBfY29tcF9tYXN0ZXIgKnB4cF90ZWVfbWFzdGVyOworCWJvb2wgcHhwX3Rl
ZV9jb21wX2FkZGVkOworCisJLyogTXV0ZXggdG8gcHJvdGVjdCB0aGUgYWJvdmUgcHhwX3RlZSBj
b21wb25lbnQgcmVsYXRlZCB2YWx1ZXMuICovCisJc3RydWN0IG11dGV4IHB4cF90ZWVfY29tcF9t
dXRleDsKKwogCUk5MTVfU0VMRlRFU1RfREVDTEFSRShzdHJ1Y3QgaTkxNV9zZWxmdGVzdF9zdGFz
aCBzZWxmdGVzdDspCiAKIAkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhw
L2ludGVsX3B4cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jCmluZGV4
IGQ3NGEzMmIyOTcxNi4uMzMyZDliYWZmMjlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9weHAvaW50ZWxfcHhwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVs
X3B4cC5jCkBAIC03LDYgKzcsNyBAQAogI2luY2x1ZGUgImludGVsX3B4cC5oIgogI2luY2x1ZGUg
ImludGVsX3B4cF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiaW50ZWxfcHhwX3NtLmgiCisjaW5jbHVk
ZSAiaW50ZWxfcHhwX3RlZS5oIgogCiBzdGF0aWMgdm9pZCBpbnRlbF9weHBfd3JpdGVfaXJxX21h
c2tfcmVnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWFzaykKIHsKQEAgLTEw
MSw2ICsxMDIsOCBAQCBpbnQgaW50ZWxfcHhwX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJCXJldHVybiByZXQ7CiAJfQogCisJaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5p
dChpOTE1KTsKKwogCUlOSVRfV09SSygmaTkxNS0+cHhwLmlycV93b3JrLCBpbnRlbF9weHBfaXJx
X3dvcmspOwogCiAJaTkxNS0+cHhwLmhhbmRsZWRfaXJyID0gKFBYUF9JUlFfVkVDVE9SX0RJU1BM
QVlfUFhQX1NUQVRFX1RFUk1JTkFURUQgfApAQCAtMTE1LDYgKzExOCw4IEBAIHZvaWQgaW50ZWxf
cHhwX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAoIWk5MTUgfHwg
SU5URUxfR0VOKGk5MTUpIDwgMTIpCiAJCXJldHVybjsKIAorCWludGVsX3B4cF90ZWVfY29tcG9u
ZW50X2ZpbmkoaTkxNSk7CisKIAlpbnRlbF9weHBfZGVzdHJveV9jdHgoaTkxNSk7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uZmE2MTc1NDZiZGQ0Ci0tLSAvZGV2L251bGwKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYwpAQCAtMCwwICsxLDEyNyBAQAor
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodChjKSAyMDIw
IEludGVsIENvcnBvcmF0aW9uLgorICovCisKKyNpbmNsdWRlIDxsaW51eC9jb21wb25lbnQuaD4K
KyNpbmNsdWRlICJkcm0vaTkxNV9weHBfdGVlX2ludGVyZmFjZS5oIgorI2luY2x1ZGUgImRybS9p
OTE1X2NvbXBvbmVudC5oIgorI2luY2x1ZGUgImludGVsX3B4cC5oIgorI2luY2x1ZGUgImludGVs
X3B4cF9jb250ZXh0LmgiCisjaW5jbHVkZSAiaW50ZWxfcHhwX3RlZS5oIgorCitzdGF0aWMgaW50
IGludGVsX3B4cF90ZWVfaW9fbWVzc2FnZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
KwkJCQkgICAgdm9pZCAqbXNnX2luLCB1MzIgbXNnX2luX3NpemUsCisJCQkJICAgIHZvaWQgKm1z
Z19vdXQsIHUzMiAqbXNnX291dF9zaXplX3B0ciwKKwkJCQkgICAgdTMyIG1zZ19vdXRfYnVmX3Np
emUpCit7CisJaW50IHJldDsKKwlzdHJ1Y3QgaTkxNV9weHBfY29tcF9tYXN0ZXIgKnB4cF90ZWVf
bWFzdGVyID0gaTkxNS0+cHhwX3RlZV9tYXN0ZXI7CisKKwlpZiAoIXB4cF90ZWVfbWFzdGVyIHx8
ICFtc2dfaW4gfHwgIW1zZ19vdXQgfHwgIW1zZ19vdXRfc2l6ZV9wdHIpCisJCXJldHVybiAtRUlO
VkFMOworCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsK
KworCWlmIChkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFJJVkVSKSkKKwkJcHJpbnRfaGV4X2R1
bXAoS0VSTl9ERUJVRywgIlRFRSBpbnB1dCBtZXNzYWdlIGJpbmFyaWVzOiIsCisJCQkgICAgICAg
RFVNUF9QUkVGSVhfT0ZGU0VULCA0LCA0LCBtc2dfaW4sIG1zZ19pbl9zaXplLCB0cnVlKTsKKwor
CXJldCA9IHB4cF90ZWVfbWFzdGVyLT5vcHMtPnNlbmQocHhwX3RlZV9tYXN0ZXItPnRlZV9kZXYs
IG1zZ19pbiwgbXNnX2luX3NpemUpOworCWlmIChyZXQpIHsKKwkJZHJtX2VycigmaTkxNS0+ZHJt
LCAiRmFpbGVkIHRvIHNlbmQgVEVFIG1lc3NhZ2VcbiIpOworCQlyZXR1cm4gLUVGQVVMVDsKKwl9
CisKKwlyZXQgPSBweHBfdGVlX21hc3Rlci0+b3BzLT5yZWNlaXZlKHB4cF90ZWVfbWFzdGVyLT50
ZWVfZGV2LCBtc2dfb3V0LCBtc2dfb3V0X2J1Zl9zaXplKTsKKwlpZiAocmV0IDwgMCkgeworCQlk
cm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gcmVjZWl2ZSBURUUgbWVzc2FnZVxuIik7CisJ
CXJldHVybiAtRUZBVUxUOworCX0KKworCWlmIChyZXQgPiBtc2dfb3V0X2J1Zl9zaXplKSB7CisJ
CWRybV9lcnIoJmk5MTUtPmRybSwgIkZhaWxlZCB0byByZWNlaXZlIFRFRSBtZXNzYWdlIGR1ZSB0
byB1bmV4cGVjdGVkIG91dHB1dCBzaXplXG4iKTsKKwkJcmV0dXJuIC1FRkFVTFQ7CisJfQorCisJ
Km1zZ19vdXRfc2l6ZV9wdHIgPSByZXQ7CisJcmV0ID0gMDsKKworCWlmIChkcm1fZGVidWdfZW5h
YmxlZChEUk1fVVRfRFJJVkVSKSkKKwkJcHJpbnRfaGV4X2R1bXAoS0VSTl9ERUJVRywgIlRFRSBv
dXRwdXQgbWVzc2FnZSBiaW5hcmllczoiLAorCQkJICAgICAgIERVTVBfUFJFRklYX09GRlNFVCwg
NCwgNCwgbXNnX291dCwgKm1zZ19vdXRfc2l6ZV9wdHIsIHRydWUpOworCisJcmV0dXJuIHJldDsK
K30KKworLyoqCisgKiBpOTE1X3B4cF90ZWVfY29tcG9uZW50X2JpbmQgLSBiaW5kIGZ1bmNpdG9u
IHRvIHBhc3MgdGhlIGZ1bmN0aW9uIHBvaW50ZXJzIHRvIHB4cF90ZWUKKyAqIEBpOTE1X2tkZXY6
IHBvaW50ZXIgdG8gaTkxNSBrZXJuZWwgZGV2aWNlCisgKiBAdGVlX2tkZXY6IHBvaW50ZXIgdG8g
dGVlIGtlcm5lbCBkZXZpY2UKKyAqIEBkYXRhOiBwb2ludGVyIHRvIHB4cF90ZWVfbWFzdGVyIGNv
bnRhaW5pbmcgdGhlIGZ1bmN0aW9uIHBvaW50ZXJzCisgKgorICogVGhpcyBiaW5kIGZ1bmN0aW9u
IGlzIGNhbGxlZCBkdXJpbmcgdGhlIHN5c3RlbSBib290IG9yIHJlc3VtZSBmcm9tIHN5c3RlbSBz
bGVlcC4KKyAqCisgKiBSZXR1cm46IHJldHVybiAwIGlmIHN1Y2Nlc3NmdWwuCisgKi8KK3N0YXRp
YyBpbnQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kKHN0cnVjdCBkZXZpY2UgKmk5MTVfa2Rl
diwKKwkJCQkgICAgICAgc3RydWN0IGRldmljZSAqdGVlX2tkZXYsIHZvaWQgKmRhdGEpCit7CisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBrZGV2X3RvX2k5MTUoaTkxNV9rZGV2KTsK
KworCWlmICghaTkxNSB8fCAhdGVlX2tkZXYgfHwgIWRhdGEpCisJCXJldHVybiAtRVBFUk07CisK
KwltdXRleF9sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVf
bWFzdGVyID0gKHN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqKWRhdGE7CisJaTkxNS0+cHhw
X3RlZV9tYXN0ZXItPnRlZV9kZXYgPSB0ZWVfa2RldjsKKwltdXRleF91bmxvY2soJmk5MTUtPnB4
cF90ZWVfY29tcF9tdXRleCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgaTkxNV9w
eHBfdGVlX2NvbXBvbmVudF91bmJpbmQoc3RydWN0IGRldmljZSAqaTkxNV9rZGV2LAorCQkJCQkg
IHN0cnVjdCBkZXZpY2UgKnRlZV9rZGV2LCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0ga2Rldl90b19pOTE1KGk5MTVfa2Rldik7CisKKwlpZiAoIWk5MTUg
fHwgIXRlZV9rZGV2IHx8ICFkYXRhKQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZpOTE1LT5w
eHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfbWFzdGVyID0gTlVMTDsKKwltdXRl
eF91bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7Cit9CisKK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgY29tcG9uZW50X29wcyBpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcyA9IHsKKwkuYmlu
ZCAgID0gaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kLAorCS51bmJpbmQgPSBpOTE1X3B4cF90
ZWVfY29tcG9uZW50X3VuYmluZCwKK307CisKK3ZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlpbnQgcmV0OworCisJaWYg
KCFpOTE1KQorCQlyZXR1cm47CisKKwlyZXQgPSBjb21wb25lbnRfYWRkX3R5cGVkKGk5MTUtPmRy
bS5kZXYsICZpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcywKKwkJCQkgIEk5MTVfQ09NUE9ORU5U
X1BYUCk7CisJaWYgKHJldCA8IDApIHsKKwkJZHJtX2VycigmaTkxNS0+ZHJtLCAiRmFpbGVkIGF0
IGNvbXBvbmVudCBhZGQoJWQpXG4iLCByZXQpOworCQlyZXR1cm47CisJfQorCisJbXV0ZXhfbG9j
aygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKKwlpOTE1LT5weHBfdGVlX2NvbXBfYWRkZWQg
PSB0cnVlOworCW11dGV4X3VubG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKK30KKwor
dm9pZCBpbnRlbF9weHBfdGVlX2NvbXBvbmVudF9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQoreworCW11dGV4X2xvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7CisJaTkx
NS0+cHhwX3RlZV9jb21wX2FkZGVkID0gZmFsc2U7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5weHBf
dGVlX2NvbXBfbXV0ZXgpOworCisJY29tcG9uZW50X2RlbChpOTE1LT5kcm0uZGV2LCAmaTkxNV9w
eHBfdGVlX2NvbXBvbmVudF9vcHMpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvcHhwL2ludGVsX3B4cF90ZWUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9w
eHBfdGVlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wZDBmYmQw
ZWQwMTgKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxf
cHhwX3RlZS5oCkBAIC0wLDAgKzEsMTQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBN
SVQgKi8KKy8qCisgKiBDb3B5cmlnaHQoYykgMjAyMCwgSW50ZWwgQ29ycG9yYXRpb24uIEFsbCBy
aWdodHMgcmVzZXJ2ZWQuCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX1BYUF9URUVfSF9fCisjZGVm
aW5lIF9fSU5URUxfUFhQX1RFRV9IX18KKworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisKK3ZvaWQg
aW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSk7Cit2b2lkIGludGVsX3B4cF90ZWVfY29tcG9uZW50X2Zpbmkoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpOworCisjZW5kaWYgLyogX19JTlRFTF9QWFBfVEVFX0hfXyAqLwpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaCBiL2luY2x1ZGUvZHJtL2k5MTVfY29t
cG9uZW50LmgKaW5kZXggNTVjM2IxMjM1ODFiLi5jMWUyYTQzZDJkMWUgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50LmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25l
bnQuaApAQCAtMjksNiArMjksNyBAQAogZW51bSBpOTE1X2NvbXBvbmVudF90eXBlIHsKIAlJOTE1
X0NPTVBPTkVOVF9BVURJTyA9IDEsCiAJSTkxNV9DT01QT05FTlRfSERDUCwKKwlJOTE1X0NPTVBP
TkVOVF9QWFAKIH07CiAKIC8qIE1BWF9QT1JUIGlzIHRoZSBudW1iZXIgb2YgcG9ydApkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9weHBfdGVlX2ludGVyZmFjZS5oIGIvaW5jbHVkZS9kcm0v
aTkxNV9weHBfdGVlX2ludGVyZmFjZS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uMzk5OWUyNTVlMTQ1Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kcm0vaTkx
NV9weHBfdGVlX2ludGVyZmFjZS5oCkBAIC0wLDAgKzEsNDUgQEAKKy8qIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3Jh
dGlvbgorICoKKyAqIEF1dGhvcnM6CisgKiBWaXRhbHkgTHViYXJ0IDx2aXRhbHkubHViYXJ0QGlu
dGVsLmNvbT4KKyAqLworCisjaWZuZGVmIF9JOTE1X1BYUF9URUVfSU5URVJGQUNFX0hfCisjZGVm
aW5lIF9JOTE1X1BYUF9URUVfSU5URVJGQUNFX0hfCisKKyNpbmNsdWRlIDxsaW51eC9tdXRleC5o
PgorI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgorCisvKioKKyAqIHN0cnVjdCBpOTE1X3B4cF9j
b21wb25lbnRfb3BzIC0gb3BzIGZvciBQWFAgc2VydmljZXMuCisgKiBAb3duZXI6IE1vZHVsZSBw
cm92aWRpbmcgdGhlIG9wcworICogQHNlbmQ6IHNlbmRzIGRhdGEgdG8gUFhQCisgKiBAcmVjZWl2
ZTogcmVjZWl2ZXMgZGF0YSBmcm9tIFBYUAorICovCitzdHJ1Y3QgaTkxNV9weHBfY29tcG9uZW50
X29wcyB7CisJLyoqCisJICogQG93bmVyOiBvd25lciBvZiB0aGUgbW9kdWxlIHByb3ZkaW5nIHRo
ZSBvcHMKKwkgKi8KKwlzdHJ1Y3QgbW9kdWxlICpvd25lcjsKKworCWludCAoKnNlbmQpKHN0cnVj
dCBkZXZpY2UgKmRldiwgY29uc3Qgdm9pZCAqbWVzc2FnZSwgc2l6ZV90IHNpemUpOworCWludCAo
KnJlY2VpdmUpKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAqYnVmZmVyLCBzaXplX3Qgc2l6ZSk7
Cit9OworCisvKioKKyAqIHN0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfbWFzdGVyIC0gVXNlZCBm
b3IgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIGk5MTUKKyAqIGFuZCBURUUgZHJpdmVycyBmb3IgdGhl
IFBYUCBzZXJ2aWNlcworICogQHRlZV9kZXY6IGRldmljZSB0aGF0IHByb3ZpZGUgdGhlIFBYUCBz
ZXJ2aWNlIGZyb20gVEVFIEJ1cy4KKyAqIEBweHBfb3BzOiBPcHMgaW1wbGVtZW50ZWQgYnkgVEVF
IGRyaXZlciwgdXNlZCBieSBpOTE1IGRyaXZlci4KKyAqLworc3RydWN0IGk5MTVfcHhwX2NvbXBf
bWFzdGVyIHsKKwlzdHJ1Y3QgZGV2aWNlICp0ZWVfZGV2OworCWNvbnN0IHN0cnVjdCBpOTE1X3B4
cF9jb21wb25lbnRfb3BzICpvcHM7CisKKwkvKiBUbyBwcm90ZWN0IHRoZSBhYm92ZSBtZW1iZXJz
LiAqLworCXN0cnVjdCBtdXRleCBtdXRleDsKK307CisKKyNlbmRpZiAvKiBfSTkxNV9URUVfUFhQ
X0lOVEVSRkFDRV9IXyAqLwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
