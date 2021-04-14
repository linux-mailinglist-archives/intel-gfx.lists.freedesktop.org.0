Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A95F35EAC4
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 04:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A856E429;
	Wed, 14 Apr 2021 02:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63436E429
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:23:16 +0000 (UTC)
IronPort-SDR: nBt8sxyi5Bs4NirDu1tctEiMUMozCJYiAhHyRqP92ul3kijsutO+0LZWvbCvK5fPo57mW1EoEE
 Lq5ZvyCgvixg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194110982"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="194110982"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 19:23:15 -0700
IronPort-SDR: OECLkUIS8rvdIMpXQGtoSK0y6h2Nm5BXYfeL87HZHx35N6VsPG4xwmxPruFiSaFgdIjCMBUv2r
 EyRh+Cv24nGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="460816558"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 13 Apr 2021 19:23:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Apr 2021 05:23:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 05:23:02 +0300
Message-Id: <20210414022309.30898-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Add frontbuffer tracking
 tracepoints
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBzb21lIHRyYWNwb2ludHMgZm9yIGZyb250YnVmZmVyIHRyYWNraW5nIHNvIHdlIGNhbgp0cnkg
dG8gZmlndXJlIG91dCB3aGF0J3MgZ29pbmcgb24uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jICB8ICA1ICsrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV90cmFjZS5oICAgICAgICAgICAgIHwgMzggKysrKysrKysrKysrKysrKysrKwog
MiBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jCmluZGV4IDZmYzY5NjViNjEzMy4uODE2
MWQ0OWU3OGJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Zyb250YnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
cm9udGJ1ZmZlci5jCkBAIC01OCw2ICs1OCw3IEBACiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9k
cC5oIgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCiAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX2ZiYy5oIgog
I2luY2x1ZGUgImludGVsX2Zyb250YnVmZmVyLmgiCkBAIC04Nyw2ICs4OCw4IEBAIHN0YXRpYyB2
b2lkIGZyb250YnVmZmVyX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWlm
ICghZnJvbnRidWZmZXJfYml0cykKIAkJcmV0dXJuOwogCisJdHJhY2VfaW50ZWxfZnJvbnRidWZm
ZXJfZmx1c2goZnJvbnRidWZmZXJfYml0cywgb3JpZ2luKTsKKwogCW1pZ2h0X3NsZWVwKCk7CiAJ
aW50ZWxfZWRwX2RycnNfZmx1c2goaTkxNSwgZnJvbnRidWZmZXJfYml0cyk7CiAJaW50ZWxfcHNy
X2ZsdXNoKGk5MTUsIGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbik7CkBAIC0xNzMsNiArMTc2LDgg
QEAgdm9pZCBfX2ludGVsX2ZiX2ludmFsaWRhdGUoc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpm
cm9udCwKIAkJc3Bpbl91bmxvY2soJmk5MTUtPmZiX3RyYWNraW5nLmxvY2spOwogCX0KIAorCXRy
YWNlX2ludGVsX2Zyb250YnVmZmVyX2ludmFsaWRhdGUoZnJvbnRidWZmZXJfYml0cywgb3JpZ2lu
KTsKKwogCW1pZ2h0X3NsZWVwKCk7CiAJaW50ZWxfcHNyX2ludmFsaWRhdGUoaTkxNSwgZnJvbnRi
dWZmZXJfYml0cywgb3JpZ2luKTsKIAlpbnRlbF9lZHBfZHJyc19pbnZhbGlkYXRlKGk5MTUsIGZy
b250YnVmZmVyX2JpdHMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90
cmFjZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oCmluZGV4IGE0YWRkY2M2
NDk3OC4uODFmNWUxNzIxMTgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3RyYWNlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oCkBAIC00NzQs
NiArNDc0LDQ0IEBAIFRSQUNFX0VWRU5UKGludGVsX3BpcGVfdXBkYXRlX2VuZCwKIAkJICAgICAg
X19lbnRyeS0+c2NhbmxpbmUpCiApOwogCisvKiBmcm9udGJ1ZmZlciB0cmFja2luZyAqLworCitU
UkFDRV9FVkVOVChpbnRlbF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRlLAorCSAgICBUUF9QUk9UTyh1
bnNpZ25lZCBpbnQgZnJvbnRidWZmZXJfYml0cywgdW5zaWduZWQgaW50IG9yaWdpbiksCisJICAg
IFRQX0FSR1MoZnJvbnRidWZmZXJfYml0cywgb3JpZ2luKSwKKworCSAgICBUUF9TVFJVQ1RfX2Vu
dHJ5KAorCQkJICAgICBfX2ZpZWxkKHVuc2lnbmVkIGludCwgZnJvbnRidWZmZXJfYml0cykKKwkJ
CSAgICAgX19maWVsZCh1bnNpZ25lZCBpbnQsIG9yaWdpbikKKwkJCSAgICAgKSwKKworCSAgICBU
UF9mYXN0X2Fzc2lnbigKKwkJCSAgIF9fZW50cnktPmZyb250YnVmZmVyX2JpdHMgPSBmcm9udGJ1
ZmZlcl9iaXRzOworCQkJICAgX19lbnRyeS0+b3JpZ2luID0gb3JpZ2luOworCQkJICAgKSwKKwor
CSAgICBUUF9wcmludGsoImZyb250YnVmZmVyX2JpdHM9MHglMDh4LCBvcmlnaW49JXUiLAorCQkg
ICAgICBfX2VudHJ5LT5mcm9udGJ1ZmZlcl9iaXRzLCBfX2VudHJ5LT5vcmlnaW4pCispOworCitU
UkFDRV9FVkVOVChpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaCwKKwkgICAgVFBfUFJPVE8odW5zaWdu
ZWQgaW50IGZyb250YnVmZmVyX2JpdHMsIHVuc2lnbmVkIGludCBvcmlnaW4pLAorCSAgICBUUF9B
UkdTKGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbiksCisKKwkgICAgVFBfU1RSVUNUX19lbnRyeSgK
KwkJCSAgICAgX19maWVsZCh1bnNpZ25lZCBpbnQsIGZyb250YnVmZmVyX2JpdHMpCisJCQkgICAg
IF9fZmllbGQodW5zaWduZWQgaW50LCBvcmlnaW4pCisJCQkgICAgICksCisKKwkgICAgVFBfZmFz
dF9hc3NpZ24oCisJCQkgICBfX2VudHJ5LT5mcm9udGJ1ZmZlcl9iaXRzID0gZnJvbnRidWZmZXJf
Yml0czsKKwkJCSAgIF9fZW50cnktPm9yaWdpbiA9IG9yaWdpbjsKKwkJCSAgICksCisKKwkgICAg
VFBfcHJpbnRrKCJmcm9udGJ1ZmZlcl9iaXRzPTB4JTA4eCwgb3JpZ2luPSV1IiwKKwkJICAgICAg
X19lbnRyeS0+ZnJvbnRidWZmZXJfYml0cywgX19lbnRyeS0+b3JpZ2luKQorKTsKKwogLyogb2Jq
ZWN0IHRyYWNraW5nICovCiAKIFRSQUNFX0VWRU5UKGk5MTVfZ2VtX29iamVjdF9jcmVhdGUsCi0t
IAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
