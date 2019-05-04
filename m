Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0D613B58
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 19:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87B589453;
	Sat,  4 May 2019 17:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3097D89458
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2019 17:16:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 10:16:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,430,1549958400"; d="scan'208";a="229328246"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2019 10:16:21 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 May 2019 22:41:40 +0530
Message-Id: <1556989900-21972-12-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v5][PATCH 11/11] drm/i915: Add intel_color_lut_equal()
 to compare hw and sw gamma/degamma lut values
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

djM6IFJlYmFzZQp2NDogLVJlbmFtZWQgaW50ZWxfY29tcGFyZV9jb2xvcl9sdXQoKSB0byBpbnRl
bF9jb2xvcl9sdXRfZXF1YWwoKSBbSmFuaV0KICAgIC1BZGRlZCB0aGUgZGVmYXVsdCBsYWJlbCBh
Ym92ZSB0aGUgY29ycmVjdCBsYWJlbCBbSmFuaV0KICAgIC1Db3JyZWN0ZWQgc21hdGNoIHdhcm4g
InZhcmlhYmxlIGRlcmVmZXJlbmNlZCBiZWZvcmUgY2hlY2siIFtEYW4gQ2FycGVudGVyXQp2NTog
LUFkZGVkIGNvbmRpdGlvbiAoIWJsb2IxICYmICFibG9iMikgcmV0dXJuIHRydWUgW0phbmldCiAg
ICAtQ2FsbGVkIFBJUEVfQ09ORl9DSEVDS19DT0xPUl9MVVQgaW5zaWRlIGlmICghYWRqdXN0KSBb
SmFuaV0KICAgIC1BZGRlZCAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0NPTE9SX0xVVCBbSmFuaV0K
ClRoZXJlIGFyZSBmZXcgdGhpbmdzIHdyb25nIGluIHRoaXMgcGF0Y2g6ClsxXSBGb3IgY2h2IGJp
dCBwcmVjaXNpb24gaXMgMTQsIG9uIHdoYXQgYmFzaXMgaXQgc2hvdWxkIGJlIGFzc2lnbmVkPwpb
Ml0gRm9yIGdsayBhbmQgaWNsLCBkZWdhbW1hIExVVCB2YWx1ZXMgYXJlIG5vdCByb3VuZGVkIG9m
ZiwgdGhlcmUKc2hvdWxkIGVycj0wIGlmIHVzaW5nIHNhbWUgZnVuY3Rpb24sIGhvdyB0byBtYWtl
IHRoYXQgZXhjZXB0aW9uPwpbM10gRm9yIGdsaywgYml0IHByZWNpc2lvbiBpcyAxMCBidXQgZ2Ft
bWEgbW9kZSBpcyA4QklUPwoKU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hh
cm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jICAg
fCA1NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NvbG9yLmggICB8ICA2ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYyB8IDEyICsrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwppbmRleCA2OTViNzZkLi43M2NiOTAx
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKQEAgLTE2MzAsNiArMTYzMCw2MCBAQCBz
dGF0aWMgdm9pZCBpbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGlsa19yZWFkX2dhbW1hX2x1dChj
cnRjX3N0YXRlKTsKIH0KIAorc3RhdGljIGlubGluZSBib29sIGVycl9jaGVjayhzdHJ1Y3QgZHJt
X2NvbG9yX2x1dCAqc3dfbHV0LCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqaHdfbHV0LCB1MzIgZXJy
KQoreworCSByZXR1cm4gKChhYnMoKGxvbmcpaHdfbHV0LT5yZWQgLSBzd19sdXQtPnJlZCkpIDw9
IGVycikgJiYKKwkgICAgICAgICgoYWJzKChsb25nKWh3X2x1dC0+Ymx1ZSAtIHN3X2x1dC0+Ymx1
ZSkpIDw9IGVycikgJiYKKwkgICAgICAgICgoYWJzKChsb25nKWh3X2x1dC0+Z3JlZW4gLSBzd19s
dXQtPmdyZWVuKSkgPD0gZXJyKTsKK30KKworYm9vbCBpbnRlbF9jb2xvcl9sdXRfZXF1YWwoc3Ry
dWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMSwKKwkJCSAgIHN0cnVjdCBkcm1fcHJvcGVydHlf
YmxvYiAqYmxvYjIsCisJCQkgICB1MzIgZ2FtbWFfbW9kZSkKK3sKKwlzdHJ1Y3QgZHJtX2NvbG9y
X2x1dCAqc3dfbHV0LCAqaHdfbHV0OworCWludCBzd19sdXRfc2l6ZSwgaHdfbHV0X3NpemUsIGk7
CisJdTMyIGJpdF9wcmVjaXNpb24sIGVycjsKKworCWlmICghYmxvYjEgJiYgIWJsb2IyKQorCQly
ZXR1cm4gdHJ1ZTsKKworCWlmICghYmxvYjEgfHwgIWJsb2IyKQorCQlyZXR1cm4gZmFsc2U7CisK
Kwlzd19sdXRfc2l6ZSA9IGRybV9jb2xvcl9sdXRfc2l6ZShibG9iMSk7CisJaHdfbHV0X3NpemUg
PSBkcm1fY29sb3JfbHV0X3NpemUoYmxvYjIpOworCisJaWYgKHN3X2x1dF9zaXplICE9IGh3X2x1
dF9zaXplKQorCQlyZXR1cm4gZmFsc2U7CisKKwlzd2l0Y2goZ2FtbWFfbW9kZSkgeworCWRlZmF1
bHQ6CisJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKKwkJYml0X3ByZWNpc2lvbiA9IDg7CisJ
CWJyZWFrOworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOgorCWNhc2UgR0FNTUFfTU9ERV9N
T0RFX1NQTElUOgorCQliaXRfcHJlY2lzaW9uID0gMTA7CisJCWJyZWFrOworCWNhc2UgR0FNTUFf
TU9ERV9NT0RFXzEyQklUOgorCQliaXRfcHJlY2lzaW9uID0gMTI7CisJCWJyZWFrOworCX0KKwor
CXN3X2x1dCA9IGJsb2IxLT5kYXRhOworCWh3X2x1dCA9IGJsb2IyLT5kYXRhOworCisJZXJyID0g
MHhmZmZmID4+IGJpdF9wcmVjaXNpb247CisKKwlmb3IgKGkgPSAwOyBpIDwgc3dfbHV0X3NpemU7
IGkrKykgeworCQkgaWYgKCFlcnJfY2hlY2soJmh3X2x1dFtpXSwgJnN3X2x1dFtpXSwgZXJyKSkK
KwkJCXJldHVybiBmYWxzZTsKKwl9CisKKwlyZXR1cm4gdHJ1ZTsKK30KKwogdm9pZCBpbnRlbF9j
b2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NvbG9yLmgKaW5kZXggZmM1M2RlOS4uYjUyNWM4MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jb2xvci5oCkBAIC02LDEzICs2LDE5IEBACiAjaWZuZGVmIF9fSU5URUxfQ09MT1JfSF9f
CiAjZGVmaW5lIF9fSU5URUxfQ09MT1JfSF9fCiAKKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgor
CiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKIHN0cnVjdCBpbnRlbF9jcnRjOworc3RydWN0IGRy
bV9wcm9wZXJ0eV9ibG9iOwogCiB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpOwogaW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0KGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfY29sb3JfbG9hZF9sdXRzKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfY29s
b3JfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKK2Jvb2wg
aW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCisJ
CQkJIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjIsCisJCQkJIHUzMiBnYW1tYV9tb2Rl
KTsKIAogI2VuZGlmIC8qIF9fSU5URUxfQ09MT1JfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggNzkxOTc0Yi4uYTcxMzE3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYwpAQCAtMTIyODcsNiArMTIyODcsMTQgQEAgc3RhdGljIGJvb2wgZmFzdGJv
b3RfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJfSBcCiB9IHdo
aWxlICgwKQogCisjZGVmaW5lIFBJUEVfQ09ORl9DSEVDS19DT0xPUl9MVVQobmFtZSwgZ2FtbWFf
bW9kZSkgZG8geyBcCisJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZXF1YWwoY3VycmVudF9jb25maWct
Pm5hbWUsIHBpcGVfY29uZmlnLT5uYW1lLCBnYW1tYV9tb2RlKSkgeyBcCisJCXBpcGVfY29uZmln
X2VycihhZGp1c3QsIF9fc3RyaW5naWZ5KG5hbWUpLCBcCisJCQkJImh3X3N0YXRlIGRvZXNuJ3Qg
bWF0Y2ggc3dfc3RhdGVcbiIpOyBcCisJCXJldCA9IGZhbHNlOyBcCisJfSBcCit9IHdoaWxlICgw
KQorCiAjZGVmaW5lIFBJUEVfQ09ORl9RVUlSSyhxdWlyaykgXAogCSgoY3VycmVudF9jb25maWct
PnF1aXJrcyB8IHBpcGVfY29uZmlnLT5xdWlya3MpICYgKHF1aXJrKSkKIApAQCAtMTIzNzYsNiAr
MTIzODQsOSBAQCBzdGF0aWMgYm9vbCBmYXN0Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJCVBJUEVfQ09ORl9DSEVDS19YKGNzY19tb2RlKTsKIAkJUElQ
RV9DT05GX0NIRUNLX0JPT0woZ2FtbWFfZW5hYmxlKTsKIAkJUElQRV9DT05GX0NIRUNLX0JPT0wo
Y3NjX2VuYWJsZSk7CisKKwkJUElQRV9DT05GX0NIRUNLX0NPTE9SX0xVVChiYXNlLmdhbW1hX2x1
dCwgcGlwZV9jb25maWctPmdhbW1hX21vZGUpOworCQlQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVU
KGJhc2UuZGVnYW1tYV9sdXQsIHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlKTsKIAl9CiAKIAlQSVBF
X0NPTkZfQ0hFQ0tfQk9PTChkb3VibGVfd2lkZSk7CkBAIC0xMjQzOCw2ICsxMjQ0OSw3IEBAIHN0
YXRpYyBib29sIGZhc3Rib290X2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19GTEFHUwogI3VuZGVmIFBJUEVfQ09ORl9DSEVD
S19DTE9DS19GVVpaWQogI3VuZGVmIFBJUEVfQ09ORl9RVUlSSworI3VuZGVmIFBJUEVfQ09ORl9D
SEVDS19DT0xPUl9MVVQKIAogCXJldHVybiByZXQ7CiB9Ci0tIAoxLjkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
