Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1A92CB3C1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32236EA18;
	Wed,  2 Dec 2020 04:04:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D936EA0D
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:04:21 +0000 (UTC)
IronPort-SDR: 25JvPkwNxUTFFStVt4tTrGZ4tMH293mmJ1K/e2eJ9AqzMRXSllqakLLE9WLf7b33vn5Zlr5WVe
 qmBLXzbwuG7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="237078966"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="237078966"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:04:17 -0800
IronPort-SDR: CP/akAyzmT+X9MhS2EgN6V7RWZb7+2ikO5I5dmDL8cd3BMYOY5/FB0M+pVH4kSXXA34K9hdgsg
 Z3Ldw27QGY0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549869260"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 20:04:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:03:32 -0800
Message-Id: <20201202040341.31981-18-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v4 17/26] drm/i915/pxp: Implement funcs to create
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
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggNjEwYmE2YTcyOWE1Li4xMTMwOWYy
NjM0ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0yNTksNyArMjU5LDggQEAgaTkxNS0kKENP
TkZJR19EUk1fSTkxNV9QWFApICs9IFwKIAlweHAvaW50ZWxfcHhwLm8gXAogCXB4cC9pbnRlbF9w
eHBfY29udGV4dC5vIFwKIAlweHAvaW50ZWxfcHhwX3BtLm8gXAotCXB4cC9pbnRlbF9weHBfc20u
bworCXB4cC9pbnRlbF9weHBfc20ubyBcCisJcHhwL2ludGVsX3B4cF90ZWUubwogCiAjIFBvc3Qt
bW9ydGVtIGRlYnVnIGFuZCBHUFUgaGFuZyBzdGF0ZSBjYXB0dXJlCiBpOTE1LSQoQ09ORklHX0RS
TV9JOTE1X0NBUFRVUkVfRVJST1IpICs9IGk5MTVfZ3B1X2Vycm9yLm8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCmluZGV4IGFjYjk0Y2U5YmYxMS4uOTU1ODA0NGU3MDY0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKQEAgLTMyNCw2ICszMjQsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5
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
IDU0OTI5MzM1YjBmNy4uMzE1OTc4OTY2Y2M0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9weHAvaW50ZWxfcHhwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVs
X3B4cC5jCkBAIC03LDYgKzcsNyBAQAogI2luY2x1ZGUgImludGVsX3B4cC5oIgogI2luY2x1ZGUg
ImludGVsX3B4cF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiaW50ZWxfcHhwX3NtLmgiCisjaW5jbHVk
ZSAiaW50ZWxfcHhwX3RlZS5oIgogCiBpbnQgaTkxNV9weHBfb3BzX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZHJtZmlsZSkKIHsKQEAg
LTIxMCw2ICsyMTEsOCBAQCBpbnQgaW50ZWxfcHhwX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiAJCXJldHVybiByZXQ7CiAJfQogCisJaW50ZWxfcHhwX3RlZV9jb21wb25lbnRf
aW5pdChpOTE1KTsKKwogCUlOSVRfV09SSygmaTkxNS0+cHhwLmlycV93b3JrLCBpbnRlbF9weHBf
aXJxX3dvcmspOwogCiAJaTkxNS0+cHhwLmhhbmRsZWRfaXJyID0gKFBYUF9JUlFfVkVDVE9SX0RJ
U1BMQVlfUFhQX1NUQVRFX1RFUk1JTkFURUQgfApAQCAtMjI0LDYgKzIyNyw4IEBAIHZvaWQgaW50
ZWxfcHhwX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAoIWk5MTUg
fHwgSU5URUxfR0VOKGk5MTUpIDwgMTIpCiAJCXJldHVybjsKIAorCWludGVsX3B4cF90ZWVfY29t
cG9uZW50X2ZpbmkoaTkxNSk7CisKIAlpbnRlbF9weHBfZGVzdHJveV9jdHgoaTkxNSk7CiB9CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jCm5ldyBmaWxlIG1vZGUgMTAw
NjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZmE2MTc1NDZiZGQ0Ci0tLSAvZGV2L251bGwKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYwpAQCAtMCwwICsxLDEyNyBA
QAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodChjKSAy
MDIwIEludGVsIENvcnBvcmF0aW9uLgorICovCisKKyNpbmNsdWRlIDxsaW51eC9jb21wb25lbnQu
aD4KKyNpbmNsdWRlICJkcm0vaTkxNV9weHBfdGVlX2ludGVyZmFjZS5oIgorI2luY2x1ZGUgImRy
bS9pOTE1X2NvbXBvbmVudC5oIgorI2luY2x1ZGUgImludGVsX3B4cC5oIgorI2luY2x1ZGUgImlu
dGVsX3B4cF9jb250ZXh0LmgiCisjaW5jbHVkZSAiaW50ZWxfcHhwX3RlZS5oIgorCitzdGF0aWMg
aW50IGludGVsX3B4cF90ZWVfaW9fbWVzc2FnZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKKwkJCQkgICAgdm9pZCAqbXNnX2luLCB1MzIgbXNnX2luX3NpemUsCisJCQkJICAgIHZvaWQg
Km1zZ19vdXQsIHUzMiAqbXNnX291dF9zaXplX3B0ciwKKwkJCQkgICAgdTMyIG1zZ19vdXRfYnVm
X3NpemUpCit7CisJaW50IHJldDsKKwlzdHJ1Y3QgaTkxNV9weHBfY29tcF9tYXN0ZXIgKnB4cF90
ZWVfbWFzdGVyID0gaTkxNS0+cHhwX3RlZV9tYXN0ZXI7CisKKwlpZiAoIXB4cF90ZWVfbWFzdGVy
IHx8ICFtc2dfaW4gfHwgIW1zZ19vdXQgfHwgIW1zZ19vdXRfc2l6ZV9wdHIpCisJCXJldHVybiAt
RUlOVkFMOworCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4
KTsKKworCWlmIChkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFJJVkVSKSkKKwkJcHJpbnRfaGV4
X2R1bXAoS0VSTl9ERUJVRywgIlRFRSBpbnB1dCBtZXNzYWdlIGJpbmFyaWVzOiIsCisJCQkgICAg
ICAgRFVNUF9QUkVGSVhfT0ZGU0VULCA0LCA0LCBtc2dfaW4sIG1zZ19pbl9zaXplLCB0cnVlKTsK
KworCXJldCA9IHB4cF90ZWVfbWFzdGVyLT5vcHMtPnNlbmQocHhwX3RlZV9tYXN0ZXItPnRlZV9k
ZXYsIG1zZ19pbiwgbXNnX2luX3NpemUpOworCWlmIChyZXQpIHsKKwkJZHJtX2VycigmaTkxNS0+
ZHJtLCAiRmFpbGVkIHRvIHNlbmQgVEVFIG1lc3NhZ2VcbiIpOworCQlyZXR1cm4gLUVGQVVMVDsK
Kwl9CisKKwlyZXQgPSBweHBfdGVlX21hc3Rlci0+b3BzLT5yZWNlaXZlKHB4cF90ZWVfbWFzdGVy
LT50ZWVfZGV2LCBtc2dfb3V0LCBtc2dfb3V0X2J1Zl9zaXplKTsKKwlpZiAocmV0IDwgMCkgewor
CQlkcm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gcmVjZWl2ZSBURUUgbWVzc2FnZVxuIik7
CisJCXJldHVybiAtRUZBVUxUOworCX0KKworCWlmIChyZXQgPiBtc2dfb3V0X2J1Zl9zaXplKSB7
CisJCWRybV9lcnIoJmk5MTUtPmRybSwgIkZhaWxlZCB0byByZWNlaXZlIFRFRSBtZXNzYWdlIGR1
ZSB0byB1bmV4cGVjdGVkIG91dHB1dCBzaXplXG4iKTsKKwkJcmV0dXJuIC1FRkFVTFQ7CisJfQor
CisJKm1zZ19vdXRfc2l6ZV9wdHIgPSByZXQ7CisJcmV0ID0gMDsKKworCWlmIChkcm1fZGVidWdf
ZW5hYmxlZChEUk1fVVRfRFJJVkVSKSkKKwkJcHJpbnRfaGV4X2R1bXAoS0VSTl9ERUJVRywgIlRF
RSBvdXRwdXQgbWVzc2FnZSBiaW5hcmllczoiLAorCQkJICAgICAgIERVTVBfUFJFRklYX09GRlNF
VCwgNCwgNCwgbXNnX291dCwgKm1zZ19vdXRfc2l6ZV9wdHIsIHRydWUpOworCisJcmV0dXJuIHJl
dDsKK30KKworLyoqCisgKiBpOTE1X3B4cF90ZWVfY29tcG9uZW50X2JpbmQgLSBiaW5kIGZ1bmNp
dG9uIHRvIHBhc3MgdGhlIGZ1bmN0aW9uIHBvaW50ZXJzIHRvIHB4cF90ZWUKKyAqIEBpOTE1X2tk
ZXY6IHBvaW50ZXIgdG8gaTkxNSBrZXJuZWwgZGV2aWNlCisgKiBAdGVlX2tkZXY6IHBvaW50ZXIg
dG8gdGVlIGtlcm5lbCBkZXZpY2UKKyAqIEBkYXRhOiBwb2ludGVyIHRvIHB4cF90ZWVfbWFzdGVy
IGNvbnRhaW5pbmcgdGhlIGZ1bmN0aW9uIHBvaW50ZXJzCisgKgorICogVGhpcyBiaW5kIGZ1bmN0
aW9uIGlzIGNhbGxlZCBkdXJpbmcgdGhlIHN5c3RlbSBib290IG9yIHJlc3VtZSBmcm9tIHN5c3Rl
bSBzbGVlcC4KKyAqCisgKiBSZXR1cm46IHJldHVybiAwIGlmIHN1Y2Nlc3NmdWwuCisgKi8KK3N0
YXRpYyBpbnQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kKHN0cnVjdCBkZXZpY2UgKmk5MTVf
a2RldiwKKwkJCQkgICAgICAgc3RydWN0IGRldmljZSAqdGVlX2tkZXYsIHZvaWQgKmRhdGEpCit7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBrZGV2X3RvX2k5MTUoaTkxNV9rZGV2
KTsKKworCWlmICghaTkxNSB8fCAhdGVlX2tkZXYgfHwgIWRhdGEpCisJCXJldHVybiAtRVBFUk07
CisKKwltdXRleF9sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90
ZWVfbWFzdGVyID0gKHN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqKWRhdGE7CisJaTkxNS0+
cHhwX3RlZV9tYXN0ZXItPnRlZV9kZXYgPSB0ZWVfa2RldjsKKwltdXRleF91bmxvY2soJmk5MTUt
PnB4cF90ZWVfY29tcF9tdXRleCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgaTkx
NV9weHBfdGVlX2NvbXBvbmVudF91bmJpbmQoc3RydWN0IGRldmljZSAqaTkxNV9rZGV2LAorCQkJ
CQkgIHN0cnVjdCBkZXZpY2UgKnRlZV9rZGV2LCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0ga2Rldl90b19pOTE1KGk5MTVfa2Rldik7CisKKwlpZiAoIWk5
MTUgfHwgIXRlZV9rZGV2IHx8ICFkYXRhKQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZpOTE1
LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfbWFzdGVyID0gTlVMTDsKKwlt
dXRleF91bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7Cit9CisKK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgY29tcG9uZW50X29wcyBpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcyA9IHsKKwku
YmluZCAgID0gaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kLAorCS51bmJpbmQgPSBpOTE1X3B4
cF90ZWVfY29tcG9uZW50X3VuYmluZCwKK307CisKK3ZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25l
bnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlpbnQgcmV0OworCisJ
aWYgKCFpOTE1KQorCQlyZXR1cm47CisKKwlyZXQgPSBjb21wb25lbnRfYWRkX3R5cGVkKGk5MTUt
PmRybS5kZXYsICZpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcywKKwkJCQkgIEk5MTVfQ09NUE9O
RU5UX1BYUCk7CisJaWYgKHJldCA8IDApIHsKKwkJZHJtX2VycigmaTkxNS0+ZHJtLCAiRmFpbGVk
IGF0IGNvbXBvbmVudCBhZGQoJWQpXG4iLCByZXQpOworCQlyZXR1cm47CisJfQorCisJbXV0ZXhf
bG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKKwlpOTE1LT5weHBfdGVlX2NvbXBfYWRk
ZWQgPSB0cnVlOworCW11dGV4X3VubG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKK30K
Kwordm9pZCBpbnRlbF9weHBfdGVlX2NvbXBvbmVudF9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQoreworCW11dGV4X2xvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7CisJ
aTkxNS0+cHhwX3RlZV9jb21wX2FkZGVkID0gZmFsc2U7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5w
eHBfdGVlX2NvbXBfbXV0ZXgpOworCisJY29tcG9uZW50X2RlbChpOTE1LT5kcm0uZGV2LCAmaTkx
NV9weHBfdGVlX2NvbXBvbmVudF9vcHMpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHBfdGVlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wZDBm
YmQwZWQwMTgKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50
ZWxfcHhwX3RlZS5oCkBAIC0wLDAgKzEsMTQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQoYykgMjAyMCwgSW50ZWwgQ29ycG9yYXRpb24uIEFs
bCByaWdodHMgcmVzZXJ2ZWQuCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX1BYUF9URUVfSF9fCisj
ZGVmaW5lIF9fSU5URUxfUFhQX1RFRV9IX18KKworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisKK3Zv
aWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSk7Cit2b2lkIGludGVsX3B4cF90ZWVfY29tcG9uZW50X2Zpbmkoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpOworCisjZW5kaWYgLyogX19JTlRFTF9QWFBfVEVFX0hfXyAqLwpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaCBiL2luY2x1ZGUvZHJtL2k5MTVf
Y29tcG9uZW50LmgKaW5kZXggNTVjM2IxMjM1ODFiLi5jMWUyYTQzZDJkMWUgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50LmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21w
b25lbnQuaApAQCAtMjksNiArMjksNyBAQAogZW51bSBpOTE1X2NvbXBvbmVudF90eXBlIHsKIAlJ
OTE1X0NPTVBPTkVOVF9BVURJTyA9IDEsCiAJSTkxNV9DT01QT05FTlRfSERDUCwKKwlJOTE1X0NP
TVBPTkVOVF9QWFAKIH07CiAKIC8qIE1BWF9QT1JUIGlzIHRoZSBudW1iZXIgb2YgcG9ydApkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9weHBfdGVlX2ludGVyZmFjZS5oIGIvaW5jbHVkZS9k
cm0vaTkxNV9weHBfdGVlX2ludGVyZmFjZS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uMzk5OWUyNTVlMTQ1Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kcm0v
aTkxNV9weHBfdGVlX2ludGVyZmFjZS5oCkBAIC0wLDAgKzEsNDUgQEAKKy8qIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jw
b3JhdGlvbgorICoKKyAqIEF1dGhvcnM6CisgKiBWaXRhbHkgTHViYXJ0IDx2aXRhbHkubHViYXJ0
QGludGVsLmNvbT4KKyAqLworCisjaWZuZGVmIF9JOTE1X1BYUF9URUVfSU5URVJGQUNFX0hfCisj
ZGVmaW5lIF9JOTE1X1BYUF9URUVfSU5URVJGQUNFX0hfCisKKyNpbmNsdWRlIDxsaW51eC9tdXRl
eC5oPgorI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgorCisvKioKKyAqIHN0cnVjdCBpOTE1X3B4
cF9jb21wb25lbnRfb3BzIC0gb3BzIGZvciBQWFAgc2VydmljZXMuCisgKiBAb3duZXI6IE1vZHVs
ZSBwcm92aWRpbmcgdGhlIG9wcworICogQHNlbmQ6IHNlbmRzIGRhdGEgdG8gUFhQCisgKiBAcmVj
ZWl2ZTogcmVjZWl2ZXMgZGF0YSBmcm9tIFBYUAorICovCitzdHJ1Y3QgaTkxNV9weHBfY29tcG9u
ZW50X29wcyB7CisJLyoqCisJICogQG93bmVyOiBvd25lciBvZiB0aGUgbW9kdWxlIHByb3ZkaW5n
IHRoZSBvcHMKKwkgKi8KKwlzdHJ1Y3QgbW9kdWxlICpvd25lcjsKKworCWludCAoKnNlbmQpKHN0
cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qgdm9pZCAqbWVzc2FnZSwgc2l6ZV90IHNpemUpOworCWlu
dCAoKnJlY2VpdmUpKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAqYnVmZmVyLCBzaXplX3Qgc2l6
ZSk7Cit9OworCisvKioKKyAqIHN0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfbWFzdGVyIC0gVXNl
ZCBmb3IgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIGk5MTUKKyAqIGFuZCBURUUgZHJpdmVycyBmb3Ig
dGhlIFBYUCBzZXJ2aWNlcworICogQHRlZV9kZXY6IGRldmljZSB0aGF0IHByb3ZpZGUgdGhlIFBY
UCBzZXJ2aWNlIGZyb20gVEVFIEJ1cy4KKyAqIEBweHBfb3BzOiBPcHMgaW1wbGVtZW50ZWQgYnkg
VEVFIGRyaXZlciwgdXNlZCBieSBpOTE1IGRyaXZlci4KKyAqLworc3RydWN0IGk5MTVfcHhwX2Nv
bXBfbWFzdGVyIHsKKwlzdHJ1Y3QgZGV2aWNlICp0ZWVfZGV2OworCWNvbnN0IHN0cnVjdCBpOTE1
X3B4cF9jb21wb25lbnRfb3BzICpvcHM7CisKKwkvKiBUbyBwcm90ZWN0IHRoZSBhYm92ZSBtZW1i
ZXJzLiAqLworCXN0cnVjdCBtdXRleCBtdXRleDsKK307CisKKyNlbmRpZiAvKiBfSTkxNV9URUVf
UFhQX0lOVEVSRkFDRV9IXyAqLwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
