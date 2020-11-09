Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BA92AC91E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 00:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69216896FA;
	Mon,  9 Nov 2020 23:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05AEF896FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 23:12:44 +0000 (UTC)
IronPort-SDR: g9+dFB0Yde6QmBl+cN9Zrz9tCv3eH1nO1FEjTvmDwcrnMTmLDB0Mqv8nwtARnDWutQ7HW0qtMA
 0TqncRkOR9Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="169101331"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="169101331"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 15:12:44 -0800
IronPort-SDR: p9qP2TZBZ6TEodnU9o2SbFScwF25uW66Eg+H/ZW9uBceiAS7W8yQlV0R12yrVau6BMMAewNGt/
 8dPGeFoTJEQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="307823072"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 09 Nov 2020 15:12:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Nov 2020 01:12:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Nov 2020 01:12:37 +0200
Message-Id: <20201109231239.17002-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
References: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Move intel_dpll_get_hw_state()
 into the hsw+ platform specific functions
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IGljbCsgd2Ugd2FudCB0byBwb3B1bGF0ZSBib3RoIGNydGNfc3RhdGUue3NoYXJlZF9kcGxsLGRw
bGxfaHdfc3RhdGV9CmFuZCBjcnRjX3N0YXRlLnBvcnRfZHBsbHNbXSBkdXJpbmcgcmVhZG91dCwg
d2hlcmVhcyBvbiBwcmUtaWNsIHdlCndhbnQgdG8gbGVhdmUgdGhlIGxhdHRlciBzdHVmZiB1bnRv
dWNoZWQuIFJhdGhlciB0aGFuIGFkZGluZyBtb3JlIGlmcwppbnRvIGhzd19nZXRfZGRpX3BvcnRf
c3RhdGUoKSB0byBjb3B5IHRoZSBEUExMIGh3IHN0YXRlIGFyb3VuZCBsZXQncwpqdXN0IG1vdmUg
dGhlIHdob2xlIGRwbGwgcmVhZG91dCBpbnRvIGhzd19nZXRfZGRpX2RwbGwoKSAmIGNvLgpTbGln
aHRseSByZXBldGl0aXZlLCBidXQgbWVoLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDY4ICsrKysrKysrKysrKysrKy0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhN2M0Y2Q3YThhMzEu
LjhhYjYyMmMwMTg2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKQEAgLTExMDEwLDcgKzExMDEwLDEwIEBAIHN0YXRpYyB2b2lkIGRnMV9nZXRfZGRp
X3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAog
ewogCWVudW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQgPSBJQ0xfUE9SVF9EUExMX0RF
RkFVTFQ7CiAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQp
OworCXN0cnVjdCBpY2xfcG9ydF9kcGxsICpwb3J0X2RwbGw7CisJc3RydWN0IGludGVsX3NoYXJl
ZF9kcGxsICpwbGw7CiAJZW51bSBpbnRlbF9kcGxsX2lkIGlkOworCWJvb2wgcGxsX2FjdGl2ZTsK
IAl1MzIgY2xrX3NlbDsKIAogCWNsa19zZWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBERzFf
RFBDTEtBX0NGR0NSMChwaHkpKSAmIERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0so
cGh5KTsKQEAgLTExMDE5LDggKzExMDIyLDEzIEBAIHN0YXRpYyB2b2lkIGRnMV9nZXRfZGRpX3Bs
bChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAogCWlm
IChXQVJOX09OKGlkID4gRFBMTF9JRF9ERzFfRFBMTDMpKQogCQlyZXR1cm47CiAKLQlwaXBlX2Nv
bmZpZy0+aWNsX3BvcnRfZHBsbHNbcG9ydF9kcGxsX2lkXS5wbGwgPQotCQlpbnRlbF9nZXRfc2hh
cmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsKKwlwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2Rw
bGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsKKwlwb3J0X2RwbGwgPSAmcGlwZV9jb25maWctPmljbF9w
b3J0X2RwbGxzW3BvcnRfZHBsbF9pZF07CisKKwlwb3J0X2RwbGwtPnBsbCA9IHBsbDsKKwlwbGxf
YWN0aXZlID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwKKwkJCQkJICAg
ICAmcG9ydF9kcGxsLT5od19zdGF0ZSk7CisJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICFw
bGxfYWN0aXZlKTsKIAogCWljbF9zZXRfYWN0aXZlX3BvcnRfZHBsbChwaXBlX2NvbmZpZywgcG9y
dF9kcGxsX2lkKTsKIH0KQEAgLTExMDI4LDcgKzExMDM2LDkgQEAgc3RhdGljIHZvaWQgZGcxX2dl
dF9kZGlfcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBv
cnQsCiBzdGF0aWMgdm9pZCBjbmxfZ2V0X2RkaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCwKIAkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqcGlwZV9jb25maWcpCiB7CisJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGw7CiAJZW51
bSBpbnRlbF9kcGxsX2lkIGlkOworCWJvb2wgcGxsX2FjdGl2ZTsKIAl1MzIgdGVtcDsKIAogCXRl
bXAgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEUENMS0FfQ0ZHQ1IwKSAmIERQQ0xLQV9DRkdD
UjBfRERJX0NMS19TRUxfTUFTSyhwb3J0KTsKQEAgLTExMDM3LDcgKzExMDQ3LDEyIEBAIHN0YXRp
YyB2b2lkIGNubF9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGVudW0gcG9ydCBwb3J0LAogCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaWQgPCBT
S0xfRFBMTDAgfHwgaWQgPiBTS0xfRFBMTDIpKQogCQlyZXR1cm47CiAKLQlwaXBlX2NvbmZpZy0+
c2hhcmVkX2RwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsK
KwlwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsKKworCXBp
cGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IHBsbDsKKwlwbGxfYWN0aXZlID0gaW50ZWxfZHBsbF9n
ZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwKKwkJCQkJICAgICAmcGlwZV9jb25maWctPmRwbGxf
aHdfc3RhdGUpOworCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxsX2FjdGl2ZSk7CiB9
CiAKIHN0YXRpYyB2b2lkIGljbF9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LApAQCAtMTEwNDUsNyArMTEwNjAsMTAgQEAgc3RhdGlj
IHZvaWQgaWNsX2dldF9kZGlfcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
ZW51bSBwb3J0IHBvcnQsCiB7CiAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2
X3ByaXYsIHBvcnQpOwogCWVudW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQ7CisJc3Ry
dWN0IGljbF9wb3J0X2RwbGwgKnBvcnRfZHBsbDsKKwlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwg
KnBsbDsKIAllbnVtIGludGVsX2RwbGxfaWQgaWQ7CisJYm9vbCBwbGxfYWN0aXZlOwogCXUzMiB0
ZW1wOwogCiAJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkgewpAQCAtMTEw
ODAsOCArMTEwOTgsMTMgQEAgc3RhdGljIHZvaWQgaWNsX2dldF9kZGlfcGxsKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQsCiAJCXJldHVybjsKIAl9CiAK
LQlwaXBlX2NvbmZpZy0+aWNsX3BvcnRfZHBsbHNbcG9ydF9kcGxsX2lkXS5wbGwgPQotCQlpbnRl
bF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsKKwlwbGwgPSBpbnRlbF9nZXRf
c2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsKKwlwb3J0X2RwbGwgPSAmcGlwZV9jb25m
aWctPmljbF9wb3J0X2RwbGxzW3BvcnRfZHBsbF9pZF07CisKKwlwb3J0X2RwbGwtPnBsbCA9IHBs
bDsKKwlwbGxfYWN0aXZlID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwK
KwkJCQkJICAgICAmcG9ydF9kcGxsLT5od19zdGF0ZSk7CisJZHJtX1dBUk5fT04oJmRldl9wcml2
LT5kcm0sICFwbGxfYWN0aXZlKTsKIAogCWljbF9zZXRfYWN0aXZlX3BvcnRfZHBsbChwaXBlX2Nv
bmZpZywgcG9ydF9kcGxsX2lkKTsKIH0KQEAgLTExMDkwLDcgKzExMTEzLDkgQEAgc3RhdGljIHZv
aWQgYnh0X2dldF9kZGlfcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJ
CQllbnVtIHBvcnQgcG9ydCwKIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25m
aWcpCiB7CisJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGw7CiAJZW51bSBpbnRlbF9kcGxs
X2lkIGlkOworCWJvb2wgcGxsX2FjdGl2ZTsKIAogCXN3aXRjaCAocG9ydCkgewogCWNhc2UgUE9S
VF9BOgpAQCAtMTExMDcsMTMgKzExMTMyLDIwIEBAIHN0YXRpYyB2b2lkIGJ4dF9nZXRfZGRpX3Bs
bChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXJldHVybjsKIAl9CiAKLQlw
aXBlX2NvbmZpZy0+c2hhcmVkX2RwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2
X3ByaXYsIGlkKTsKKwlwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYs
IGlkKTsKKworCXBpcGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IHBsbDsKKwlwbGxfYWN0aXZlID0g
aW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwKKwkJCQkJICAgICAmcGlwZV9j
b25maWctPmRwbGxfaHdfc3RhdGUpOworCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxs
X2FjdGl2ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIHNrbF9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAogCQkJICAgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIHsKKwlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwg
KnBsbDsKIAllbnVtIGludGVsX2RwbGxfaWQgaWQ7CisJYm9vbCBwbGxfYWN0aXZlOwogCXUzMiB0
ZW1wOwogCiAJdGVtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERQTExfQ1RSTDIpICYgRFBM
TF9DVFJMMl9ERElfQ0xLX1NFTF9NQVNLKHBvcnQpOwpAQCAtMTExMjIsMTQgKzExMTU0LDIxIEBA
IHN0YXRpYyB2b2lkIHNrbF9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGVudW0gcG9ydCBwb3J0LAogCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
aWQgPCBTS0xfRFBMTDAgfHwgaWQgPiBTS0xfRFBMTDMpKQogCQlyZXR1cm47CiAKLQlwaXBlX2Nv
bmZpZy0+c2hhcmVkX2RwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYs
IGlkKTsKKwlwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsK
KworCXBpcGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IHBsbDsKKwlwbGxfYWN0aXZlID0gaW50ZWxf
ZHBsbF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwKKwkJCQkJICAgICAmcGlwZV9jb25maWct
PmRwbGxfaHdfc3RhdGUpOworCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxsX2FjdGl2
ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGhzd19nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAogCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZykKIHsKKwlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbDsK
IAllbnVtIGludGVsX2RwbGxfaWQgaWQ7CiAJdTMyIGRkaV9wbGxfc2VsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgUE9SVF9DTEtfU0VMKHBvcnQpKTsKKwlib29sIHBsbF9hY3RpdmU7CiAKIAlz
d2l0Y2ggKGRkaV9wbGxfc2VsKSB7CiAJY2FzZSBQT1JUX0NMS19TRUxfV1JQTEwxOgpAQCAtMTEx
NTcsNyArMTExOTYsMTIgQEAgc3RhdGljIHZvaWQgaHN3X2dldF9kZGlfcGxsKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQsCiAJCXJldHVybjsKIAl9CiAK
LQlwaXBlX2NvbmZpZy0+c2hhcmVkX2RwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQo
ZGV2X3ByaXYsIGlkKTsKKwlwbGwgPSBpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3By
aXYsIGlkKTsKKworCXBpcGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IHBsbDsKKwlwbGxfYWN0aXZl
ID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwKKwkJCQkJICAgICAmcGlw
ZV9jb25maWctPmRwbGxfaHdfc3RhdGUpOworCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAh
cGxsX2FjdGl2ZSk7CiB9CiAKIHN0YXRpYyBib29sIGhzd19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKQEAgLTExMzE3LDcgKzExMzYxLDYgQEAgc3RhdGljIHZv
aWQgaHN3X2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKIAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBwaXBlX2NvbmZpZy0+Y3B1X3Ry
YW5zY29kZXI7Ci0Jc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGw7CiAJZW51bSBwb3J0IHBv
cnQ7CiAJdTMyIHRtcDsKIApAQCAtMTEzNDYsMTMgKzExMzg5LDYgQEAgc3RhdGljIHZvaWQgaHN3
X2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAllbHNlCiAJCWhz
d19nZXRfZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwogCi0JcGxsID0gcGlw
ZV9jb25maWctPnNoYXJlZF9kcGxsOwotCWlmIChwbGwpIHsKLQkJYm9vbCBwbGxfYWN0aXZlID0g
aW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwKLQkJCQkJCQkgICZwaXBlX2Nv
bmZpZy0+ZHBsbF9od19zdGF0ZSk7Ci0JCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxs
X2FjdGl2ZSk7Ci0JfQotCiAJLyoKIAkgKiBIYXN3ZWxsIGhhcyBvbmx5IEZESS9QQ0ggdHJhbnNj
b2RlciBBLiBJdCBpcyB3aGljaCBpcyBjb25uZWN0ZWQgdG8KIAkgKiBEREkgRS4gU28ganVzdCBj
aGVjayB3aGV0aGVyIHRoaXMgcGlwZSBpcyB3aXJlZCB0byBEREkgRSBhbmQgd2hldGhlcgotLSAK
Mi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
