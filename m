Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0F939EFA5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D4506EAD4;
	Tue,  8 Jun 2021 07:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DAC6EAD4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 07:36:12 +0000 (UTC)
IronPort-SDR: FcBytUpLg1CNPb1Q6qEa9jH55nfPPFiDxGavHocnNL7HT8mNRea0fM/CaEnKUqbo8ihK8+pJKm
 ib/plt9Tq5oQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="290420026"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="290420026"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:36:11 -0700
IronPort-SDR: ZCcNdxqroXxchg1ysZ1GbUeXUGwLdscH7SvrzZ//hrnaiVjePOZpMI0LckEeBQABrdR0QC6nLr
 cuMT2nCpFr+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="481846209"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 08 Jun 2021 00:36:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jun 2021 10:36:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 10:35:47 +0300
Message-Id: <20210608073603.2408-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/17] drm/i915: s/intel/hsw/ for hsw/bdw/skl
 buf trans
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdp
dmUgdGhlIGhzdy9iZHcvc2tsIGJ1ZiB0cmFucyBzdHVmZiBhIGJldHRlciBuYW1lc3BhY2UuCgpS
ZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAzOSArKysr
Ky0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmggICAgICB8ICA0
ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCA3OSAr
KysrKysrKystLS0tLS0tLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3Ry
YW5zLmggICAgfCAyMCArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
ZGkuYyAgICAgIHwgIDQgKy0KIDUgZmlsZXMgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgNzYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5k
ZXggMzkwODY5YmQ2YjYzLi4xMDdlNDkwM2I2OTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwpAQCAtOTUsMjQgKzk1LDIxIEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRp
X2hkbWlfbGV2ZWwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAgKiB2YWx1ZXMgaW4g
YWR2YW5jZS4gVGhpcyBmdW5jdGlvbiBwcm9ncmFtcyB0aGUgY29ycmVjdCB2YWx1ZXMgZm9yCiAg
KiBEUC9lRFAvRkRJIHVzZSBjYXNlcy4KICAqLwotdm9pZCBpbnRlbF9wcmVwYXJlX2RwX2RkaV9i
dWZmZXJzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAotCQkJCSAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit2b2lkIGhzd19wcmVwYXJlX2RwX2RkaV9i
dWZmZXJzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJCWNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXUzMiBpYm9vc3RfYml0
ID0gMDsKIAlpbnQgaSwgbl9lbnRyaWVzOwogCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9y
dDsKLQljb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9uczsKKwljb25z
dCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgKmRkaV90cmFuc2xhdGlvbnM7CiAKIAlpZiAoaW50
ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfQU5BTE9HKSkKLQkJZGRp
X3RyYW5zbGF0aW9ucyA9IGludGVsX2RkaV9nZXRfYnVmX3RyYW5zX2ZkaShkZXZfcHJpdiwKLQkJ
CQkJCQkgICAgICAgJm5fZW50cmllcyk7CisJCWRkaV90cmFuc2xhdGlvbnMgPSBoc3dfZGRpX2dl
dF9idWZfdHJhbnNfZmRpKGRldl9wcml2LCAmbl9lbnRyaWVzKTsKIAllbHNlIGlmIChpbnRlbF9j
cnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9FRFApKQotCQlkZGlfdHJhbnNs
YXRpb25zID0gaW50ZWxfZGRpX2dldF9idWZfdHJhbnNfZWRwKGVuY29kZXIsCi0JCQkJCQkJICAg
ICAgICZuX2VudHJpZXMpOworCQlkZGlfdHJhbnNsYXRpb25zID0gaHN3X2RkaV9nZXRfYnVmX3Ry
YW5zX2VkcChlbmNvZGVyLCAmbl9lbnRyaWVzKTsKIAllbHNlCi0JCWRkaV90cmFuc2xhdGlvbnMg
PSBpbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19kcChlbmNvZGVyLAotCQkJCQkJCSAgICAgICZuX2Vu
dHJpZXMpOworCQlkZGlfdHJhbnNsYXRpb25zID0gaHN3X2RkaV9nZXRfYnVmX3RyYW5zX2RwKGVu
Y29kZXIsICZuX2VudHJpZXMpOwogCiAJLyogSWYgd2UncmUgYm9vc3RpbmcgdGhlIGN1cnJlbnQs
IHNldCBiaXQgMzEgb2YgdHJhbnMxICovCiAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSA5
ICYmICFJU19CUk9YVE9OKGRldl9wcml2KSAmJgpAQCAtMTMyLDE2ICsxMjksMTYgQEAgdm9pZCBp
bnRlbF9wcmVwYXJlX2RwX2RkaV9idWZmZXJzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogICogdmFsdWVzIGluIGFkdmFuY2UuIFRoaXMgZnVuY3Rpb24gcHJvZ3JhbXMgdGhlIGNvcnJl
Y3QgdmFsdWVzIGZvcgogICogSERNSS9EVkkgdXNlIGNhc2VzLgogICovCi1zdGF0aWMgdm9pZCBp
bnRlbF9wcmVwYXJlX2hkbWlfZGRpX2J1ZmZlcnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCi0JCQkJCSAgIGludCBsZXZlbCkKK3N0YXRpYyB2b2lkIGhzd19wcmVwYXJlX2hkbWlfZGRp
X2J1ZmZlcnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQkJCSBpbnQgbGV2ZWwp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVy
LT5iYXNlLmRldik7CiAJdTMyIGlib29zdF9iaXQgPSAwOwogCWludCBuX2VudHJpZXM7CiAJZW51
bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0OwotCWNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5z
ICpkZGlfdHJhbnNsYXRpb25zOworCWNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyAqZGRp
X3RyYW5zbGF0aW9uczsKIAotCWRkaV90cmFuc2xhdGlvbnMgPSBpbnRlbF9kZGlfZ2V0X2J1Zl90
cmFuc19oZG1pKGVuY29kZXIsICZuX2VudHJpZXMpOworCWRkaV90cmFuc2xhdGlvbnMgPSBoc3df
ZGRpX2dldF9idWZfdHJhbnNfaGRtaShlbmNvZGVyLCAmbl9lbnRyaWVzKTsKIAogCWlmIChkcm1f
V0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCAhZGRpX3RyYW5zbGF0aW9ucykpCiAJCXJldHVy
bjsKQEAgLTk0OCwxNSArOTQ1LDE1IEBAIHN0YXRpYyB2b2lkIHNrbF9kZGlfc2V0X2lib29zdChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJaWJvb3N0ID0gaW50ZWxfYmlvc19lbmNv
ZGVyX2RwX2Jvb3N0X2xldmVsKGVuY29kZXItPmRldmRhdGEpOwogCiAJaWYgKGlib29zdCA9PSAw
KSB7Ci0JCWNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zOworCQlj
b25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgKmRkaV90cmFuc2xhdGlvbnM7CiAJCWludCBu
X2VudHJpZXM7CiAKIAkJaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxf
T1VUUFVUX0hETUkpKQotCQkJZGRpX3RyYW5zbGF0aW9ucyA9IGludGVsX2RkaV9nZXRfYnVmX3Ry
YW5zX2hkbWkoZW5jb2RlciwgJm5fZW50cmllcyk7CisJCQlkZGlfdHJhbnNsYXRpb25zID0gaHN3
X2RkaV9nZXRfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgJm5fZW50cmllcyk7CiAJCWVsc2UgaWYg
KGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VEUCkpCi0JCQlk
ZGlfdHJhbnNsYXRpb25zID0gaW50ZWxfZGRpX2dldF9idWZfdHJhbnNfZWRwKGVuY29kZXIsICZu
X2VudHJpZXMpOworCQkJZGRpX3RyYW5zbGF0aW9ucyA9IGhzd19kZGlfZ2V0X2J1Zl90cmFuc19l
ZHAoZW5jb2RlciwgJm5fZW50cmllcyk7CiAJCWVsc2UKLQkJCWRkaV90cmFuc2xhdGlvbnMgPSBp
bnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19kcChlbmNvZGVyLCAmbl9lbnRyaWVzKTsKKwkJCWRkaV90
cmFuc2xhdGlvbnMgPSBoc3dfZGRpX2dldF9idWZfdHJhbnNfZHAoZW5jb2RlciwgJm5fZW50cmll
cyk7CiAKIAkJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNs
YXRpb25zKSkKIAkJCXJldHVybjsKQEAgLTEwMzEsOSArMTAyOCw5IEBAIHN0YXRpYyB1OCBpbnRl
bF9kZGlfZHBfdm9sdGFnZV9tYXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJYnh0X2dl
dF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7CiAJfSBlbHNlIHsK
IAkJaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VEUCkp
Ci0JCQlpbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19lZHAoZW5jb2RlciwgJm5fZW50cmllcyk7CisJ
CQloc3dfZGRpX2dldF9idWZfdHJhbnNfZWRwKGVuY29kZXIsICZuX2VudHJpZXMpOwogCQllbHNl
Ci0JCQlpbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19kcChlbmNvZGVyLCAmbl9lbnRyaWVzKTsKKwkJ
CWhzd19kZGlfZ2V0X2J1Zl90cmFuc19kcChlbmNvZGVyLCAmbl9lbnRyaWVzKTsKIAl9CiAKIAlp
ZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIG5fZW50cmllcyA8IDEpKQpAQCAtMjcwMiw3
ICsyNjk5LDcgQEAgc3RhdGljIHZvaWQgaHN3X2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWVsc2UgaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
IHx8IElTX0JST1hUT04oZGV2X3ByaXYpKQogCQlieHRfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNv
ZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7CiAJZWxzZQotCQlpbnRlbF9wcmVwYXJlX2RwX2RkaV9i
dWZmZXJzKGVuY29kZXIsIGNydGNfc3RhdGUpOworCQloc3dfcHJlcGFyZV9kcF9kZGlfYnVmZmVy
cyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAogCWludGVsX2RkaV9wb3dlcl91cF9sYW5lcyhlbmNv
ZGVyLCBjcnRjX3N0YXRlKTsKIApAQCAtMzE0OSw3ICszMTQ2LDcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZW5hYmxlX2RkaV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWVs
c2UgaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpIHx8IElTX0JST1hUT04oZGV2X3ByaXYpKQog
CQlieHRfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7CiAJ
ZWxzZQotCQlpbnRlbF9wcmVwYXJlX2hkbWlfZGRpX2J1ZmZlcnMoZW5jb2RlciwgbGV2ZWwpOwor
CQloc3dfcHJlcGFyZV9oZG1pX2RkaV9idWZmZXJzKGVuY29kZXIsIGxldmVsKTsKIAogCWlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gOSAmJiAhSVNfQlJPWFRPTihkZXZfcHJpdikpCiAJCXNr
bF9kZGlfc2V0X2lib29zdChlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaAppbmRleCA1OWM2YjAxZDQxOTkuLjdkNDQ4NDg1
ZDg4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oCkBAIC00MCw4
ICs0MCw4IEBAIGJvb2wgaHN3X2RkaV9pc19jbG9ja19lbmFibGVkKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKTsKIHZvaWQgaHN3X2RkaV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCQkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwog
c3RydWN0IGludGVsX3NoYXJlZF9kcGxsICppY2xfZGRpX2NvbWJvX2dldF9wbGwoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpOwotdm9pZCBpbnRlbF9wcmVwYXJlX2RwX2RkaV9idWZmZXJz
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAotCQkJCSAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwordm9pZCBoc3dfcHJlcGFyZV9kcF9kZGlfYnVmZmVy
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQljb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2b2lkIGludGVsX3dhaXRfZGRpX2J1Zl9pZGxlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgZW51bSBwb3J0IHBvcnQp
Owogdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGVudW0gcG9ydCBwb3J0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGlfYnVmX3RyYW5zLmMKaW5kZXggOGJmZDAwZjQ5ZjJhLi5lOGU0NmQ3YTZjZWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFu
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFu
cy5jCkBAIC0xMyw3ICsxMyw3IEBACiAgKiB0aGVtIGZvciBib3RoIERQIGFuZCBGREkgdHJhbnNw
b3J0cywgYWxsb3dpbmcgdGhvc2UgcG9ydHMgdG8KICAqIGF1dG9tYXRpY2FsbHkgYWRhcHQgdG8g
SERNSSBjb25uZWN0aW9ucyBhcyB3ZWxsCiAgKi8KLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1
Zl90cmFucyBoc3dfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0geworc3RhdGljIGNvbnN0IHN0cnVj
dCBoc3dfZGRpX2J1Zl90cmFucyBoc3dfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0gewogCXsgMHgw
MEZGRkZGRiwgMHgwMDA2MDAwRSwgMHgwIH0sCiAJeyAweDAwRDc1RkZGLCAweDAwMDUwMDBBLCAw
eDAgfSwKIAl7IDB4MDBDMzBGRkYsIDB4MDAwNDAwMDYsIDB4MCB9LApAQCAtMjUsNyArMjUsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgaHN3X2RkaV90cmFuc2xhdGlvbnNf
ZHBbXSA9IHsKIAl7IDB4ODBENzVGRkYsIDB4MDAwQjAwMDAsIDB4MCB9LAogfTsKIAotc3RhdGlj
IGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIGhzd19kZGlfdHJhbnNsYXRpb25zX2ZkaVtdID0g
eworc3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyBoc3dfZGRpX3RyYW5zbGF0
aW9uc19mZGlbXSA9IHsKIAl7IDB4MDBGRkZGRkYsIDB4MDAwNzAwMEUsIDB4MCB9LAogCXsgMHgw
MEQ3NUZGRiwgMHgwMDBGMDAwQSwgMHgwIH0sCiAJeyAweDAwQzMwRkZGLCAweDAwMDYwMDA2LCAw
eDAgfSwKQEAgLTM3LDcgKzM3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5z
IGhzd19kZGlfdHJhbnNsYXRpb25zX2ZkaVtdID0gewogCXsgMHgwMEQ3NUZGRiwgMHgwMDFFMDAw
MCwgMHgwIH0sCiB9OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgaHN3X2Rk
aV90cmFuc2xhdGlvbnNfaGRtaVtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1
Zl90cmFucyBoc3dfZGRpX3RyYW5zbGF0aW9uc19oZG1pW10gPSB7CiAJCQkJCS8qIElkeAlOVCBt
ViBkCVQgbVYgZAlkYgkqLwogCXsgMHgwMEZGRkZGRiwgMHgwMDA2MDAwRSwgMHgwIH0sLyogMDoJ
NDAwCTQwMAkwCSovCiAJeyAweDAwRTc5RkZGLCAweDAwMEUwMDBDLCAweDAgfSwvKiAxOgk0MDAJ
NTAwCTIJKi8KQEAgLTUzLDcgKzUzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3Ry
YW5zIGhzd19kZGlfdHJhbnNsYXRpb25zX2hkbWlbXSA9IHsKIAl7IDB4ODBGRkZGRkYsIDB4MDAw
MzAwMDIsIDB4MCB9LC8qIDExOgkxMDAwCTEwMDAJMAkqLwogfTsKIAotc3RhdGljIGNvbnN0IHN0
cnVjdCBkZGlfYnVmX3RyYW5zIGJkd19kZGlfdHJhbnNsYXRpb25zX2VkcFtdID0geworc3RhdGlj
IGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyBiZHdfZGRpX3RyYW5zbGF0aW9uc19lZHBb
XSA9IHsKIAl7IDB4MDBGRkZGRkYsIDB4MDAwMDAwMTIsIDB4MCB9LAogCXsgMHgwMEVCQUZGRiwg
MHgwMDAyMDAxMSwgMHgwIH0sCiAJeyAweDAwQzcxRkZGLCAweDAwMDYwMDBGLCAweDAgfSwKQEAg
LTY1LDcgKzY1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIGJkd19kZGlf
dHJhbnNsYXRpb25zX2VkcFtdID0gewogCXsgMHgwMERCNkZGRiwgMHgwMDBBMDAwQywgMHgwIH0s
CiB9OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgYmR3X2RkaV90cmFuc2xh
dGlvbnNfZHBbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgYmR3
X2RkaV90cmFuc2xhdGlvbnNfZHBbXSA9IHsKIAl7IDB4MDBGRkZGRkYsIDB4MDAwNzAwMEUsIDB4
MCB9LAogCXsgMHgwMEQ3NUZGRiwgMHgwMDBFMDAwQSwgMHgwIH0sCiAJeyAweDAwQkVGRkZGLCAw
eDAwMTQwMDA2LCAweDAgfSwKQEAgLTc3LDcgKzc3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
ZGlfYnVmX3RyYW5zIGJkd19kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7CiAJeyAweDgwRDc1RkZG
LCAweDAwMUIwMDAyLCAweDAgfSwKIH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90
cmFucyBiZHdfZGRpX3RyYW5zbGF0aW9uc19mZGlbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
aHN3X2RkaV9idWZfdHJhbnMgYmR3X2RkaV90cmFuc2xhdGlvbnNfZmRpW10gPSB7CiAJeyAweDAw
RkZGRkZGLCAweDAwMDEwMDBFLCAweDAgfSwKIAl7IDB4MDBENzVGRkYsIDB4MDAwNDAwMEEsIDB4
MCB9LAogCXsgMHgwMEMzMEZGRiwgMHgwMDA3MDAwNiwgMHgwIH0sCkBAIC04OSw3ICs4OSw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBiZHdfZGRpX3RyYW5zbGF0aW9uc19m
ZGlbXSA9IHsKIAl7IDB4MDBENzVGRkYsIDB4MDAwQzAwMDAsIDB4MCB9LAogfTsKIAotc3RhdGlj
IGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIGJkd19kZGlfdHJhbnNsYXRpb25zX2hkbWlbXSA9
IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgYmR3X2RkaV90cmFuc2xh
dGlvbnNfaGRtaVtdID0gewogCQkJCQkvKiBJZHgJTlQgbVYgZAlUIG1WIGRmCWRiCSovCiAJeyAw
eDAwRkZGRkZGLCAweDAwMDcwMDBFLCAweDAgfSwvKiAwOgk0MDAJNDAwCTAJKi8KIAl7IDB4MDBE
NzVGRkYsIDB4MDAwRTAwMEEsIDB4MCB9LC8qIDE6CTQwMAk2MDAJMy41CSovCkBAIC0xMDQsNyAr
MTA0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIGJkd19kZGlfdHJhbnNs
YXRpb25zX2hkbWlbXSA9IHsKIH07CiAKIC8qIFNreWxha2UgSCBhbmQgUyAqLwotc3RhdGljIGNv
bnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIHNrbF9kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7Citz
dGF0aWMgY29uc3Qgc3RydWN0IGhzd19kZGlfYnVmX3RyYW5zIHNrbF9kZGlfdHJhbnNsYXRpb25z
X2RwW10gPSB7CiAJeyAweDAwMDAyMDE2LCAweDAwMDAwMEEwLCAweDAgfSwKIAl7IDB4MDAwMDUw
MTIsIDB4MDAwMDAwOUIsIDB4MCB9LAogCXsgMHgwMDAwNzAxMSwgMHgwMDAwMDA4OCwgMHgwIH0s
CkBAIC0xMTcsNyArMTE3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIHNr
bF9kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7CiB9OwogCiAvKiBTa3lsYWtlIFUgKi8KLXN0YXRp
YyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBza2xfdV9kZGlfdHJhbnNsYXRpb25zX2RwW10g
PSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IGhzd19kZGlfYnVmX3RyYW5zIHNrbF91X2RkaV90cmFu
c2xhdGlvbnNfZHBbXSA9IHsKIAl7IDB4MDAwMDIwMUIsIDB4MDAwMDAwQTIsIDB4MCB9LAogCXsg
MHgwMDAwNTAxMiwgMHgwMDAwMDA4OCwgMHgwIH0sCiAJeyAweDgwMDA3MDExLCAweDAwMDAwMENE
LCAweDEgfSwKQEAgLTEzMCw3ICsxMzAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZf
dHJhbnMgc2tsX3VfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0gewogfTsKIAogLyogU2t5bGFrZSBZ
ICovCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgc2tsX3lfZGRpX3RyYW5zbGF0
aW9uc19kcFtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyBza2xf
eV9kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7CiAJeyAweDAwMDAwMDE4LCAweDAwMDAwMEEyLCAw
eDAgfSwKIAl7IDB4MDAwMDUwMTIsIDB4MDAwMDAwODgsIDB4MCB9LAogCXsgMHg4MDAwNzAxMSwg
MHgwMDAwMDBDRCwgMHgzIH0sCkBAIC0xNDMsNyArMTQzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkZGlfYnVmX3RyYW5zIHNrbF95X2RkaV90cmFuc2xhdGlvbnNfZHBbXSA9IHsKIH07CiAKIC8q
IEthYnlsYWtlIEggYW5kIFMgKi8KLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBr
YmxfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRp
X2J1Zl90cmFucyBrYmxfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0gewogCXsgMHgwMDAwMjAxNiwg
MHgwMDAwMDBBMCwgMHgwIH0sCiAJeyAweDAwMDA1MDEyLCAweDAwMDAwMDlCLCAweDAgfSwKIAl7
IDB4MDAwMDcwMTEsIDB4MDAwMDAwODgsIDB4MCB9LApAQCAtMTU2LDcgKzE1Niw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBrYmxfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0g
ewogfTsKIAogLyogS2FieWxha2UgVSAqLwotc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3Ry
YW5zIGtibF91X2RkaV90cmFuc2xhdGlvbnNfZHBbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
aHN3X2RkaV9idWZfdHJhbnMga2JsX3VfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0gewogCXsgMHgw
MDAwMjAxQiwgMHgwMDAwMDBBMSwgMHgwIH0sCiAJeyAweDAwMDA1MDEyLCAweDAwMDAwMDg4LCAw
eDAgfSwKIAl7IDB4ODAwMDcwMTEsIDB4MDAwMDAwQ0QsIDB4MyB9LApAQCAtMTY5LDcgKzE2OSw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBrYmxfdV9kZGlfdHJhbnNsYXRp
b25zX2RwW10gPSB7CiB9OwogCiAvKiBLYWJ5bGFrZSBZICovCi1zdGF0aWMgY29uc3Qgc3RydWN0
IGRkaV9idWZfdHJhbnMga2JsX3lfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0geworc3RhdGljIGNv
bnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyBrYmxfeV9kZGlfdHJhbnNsYXRpb25zX2RwW10g
PSB7CiAJeyAweDAwMDAxMDE3LCAweDAwMDAwMEExLCAweDAgfSwKIAl7IDB4MDAwMDUwMTIsIDB4
MDAwMDAwODgsIDB4MCB9LAogCXsgMHg4MDAwNzAxMSwgMHgwMDAwMDBDRCwgMHgzIH0sCkBAIC0x
ODUsNyArMTg1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIGtibF95X2Rk
aV90cmFuc2xhdGlvbnNfZHBbXSA9IHsKICAqIFNreWxha2UvS2FieWxha2UgSCBhbmQgUwogICog
ZURQIDEuNCBsb3cgdnN3aW5nIHRyYW5zbGF0aW9uIHBhcmFtZXRlcnMKICAqLwotc3RhdGljIGNv
bnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zIHNrbF9kZGlfdHJhbnNsYXRpb25zX2VkcFtdID0gewor
c3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyBza2xfZGRpX3RyYW5zbGF0aW9u
c19lZHBbXSA9IHsKIAl7IDB4MDAwMDAwMTgsIDB4MDAwMDAwQTgsIDB4MCB9LAogCXsgMHgwMDAw
NDAxMywgMHgwMDAwMDBBOSwgMHgwIH0sCiAJeyAweDAwMDA3MDExLCAweDAwMDAwMEEyLCAweDAg
fSwKQEAgLTIwMiw3ICsyMDIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMg
c2tsX2RkaV90cmFuc2xhdGlvbnNfZWRwW10gPSB7CiAgKiBTa3lsYWtlL0thYnlsYWtlIFUKICAq
IGVEUCAxLjQgbG93IHZzd2luZyB0cmFuc2xhdGlvbiBwYXJhbWV0ZXJzCiAgKi8KLXN0YXRpYyBj
b25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBza2xfdV9kZGlfdHJhbnNsYXRpb25zX2VkcFtdID0g
eworc3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyBza2xfdV9kZGlfdHJhbnNs
YXRpb25zX2VkcFtdID0gewogCXsgMHgwMDAwMDAxOCwgMHgwMDAwMDBBOCwgMHgwIH0sCiAJeyAw
eDAwMDA0MDEzLCAweDAwMDAwMEE5LCAweDAgfSwKIAl7IDB4MDAwMDcwMTEsIDB4MDAwMDAwQTIs
IDB4MCB9LApAQCAtMjE5LDcgKzIxOSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90
cmFucyBza2xfdV9kZGlfdHJhbnNsYXRpb25zX2VkcFtdID0gewogICogU2t5bGFrZS9LYWJ5bGFr
ZSBZCiAgKiBlRFAgMS40IGxvdyB2c3dpbmcgdHJhbnNsYXRpb24gcGFyYW1ldGVycwogICovCi1z
dGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgc2tsX3lfZGRpX3RyYW5zbGF0aW9uc19l
ZHBbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgc2tsX3lfZGRp
X3RyYW5zbGF0aW9uc19lZHBbXSA9IHsKIAl7IDB4MDAwMDAwMTgsIDB4MDAwMDAwQTgsIDB4MCB9
LAogCXsgMHgwMDAwNDAxMywgMHgwMDAwMDBBQiwgMHgwIH0sCiAJeyAweDAwMDA3MDExLCAweDAw
MDAwMEE0LCAweDAgfSwKQEAgLTIzMyw3ICsyMzMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRk
aV9idWZfdHJhbnMgc2tsX3lfZGRpX3RyYW5zbGF0aW9uc19lZHBbXSA9IHsKIH07CiAKIC8qIFNr
eWxha2UvS2FieWxha2UgVSwgSCBhbmQgUyAqLwotc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVm
X3RyYW5zIHNrbF9kZGlfdHJhbnNsYXRpb25zX2hkbWlbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgaHN3X2RkaV9idWZfdHJhbnMgc2tsX2RkaV90cmFuc2xhdGlvbnNfaGRtaVtdID0gewogCXsg
MHgwMDAwMDAxOCwgMHgwMDAwMDBBQywgMHgwIH0sCiAJeyAweDAwMDA1MDEyLCAweDAwMDAwMDlE
LCAweDAgfSwKIAl7IDB4MDAwMDcwMTEsIDB4MDAwMDAwODgsIDB4MCB9LApAQCAtMjQ4LDcgKzI0
OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBza2xfZGRpX3RyYW5zbGF0
aW9uc19oZG1pW10gPSB7CiB9OwogCiAvKiBTa3lsYWtlL0thYnlsYWtlIFkgKi8KLXN0YXRpYyBj
b25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyBza2xfeV9kZGlfdHJhbnNsYXRpb25zX2hkbWlbXSA9
IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgc2tsX3lfZGRpX3RyYW5z
bGF0aW9uc19oZG1pW10gPSB7CiAJeyAweDAwMDAwMDE4LCAweDAwMDAwMEExLCAweDAgfSwKIAl7
IDB4MDAwMDUwMTIsIDB4MDAwMDAwREYsIDB4MCB9LAogCXsgMHg4MDAwNzAxMSwgMHgwMDAwMDBD
QiwgMHgzIH0sCkBAIC0yNjIsNyArMjYyLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVm
X3RyYW5zIHNrbF95X2RkaV90cmFuc2xhdGlvbnNfaGRtaVtdID0gewogCXsgMHg4MDAwMDAxOCwg
MHgwMDAwMDBDMCwgMHgzIH0sCiB9OwogCi0KIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYnh0X2RkaV9i
dWZfdHJhbnMgYnh0X2RkaV90cmFuc2xhdGlvbnNfZHBbXSA9IHsKIAkJCQkJLyogSWR4CU5UIG1W
IGRpZmYJZGIgICovCiAJeyA1MiwgIDB4OUEsIDAsIDEyOCwgfSwJLyogMDoJNDAwCQkwICAgKi8K
QEAgLTc2OCw3ICs3NjcsNyBAQCBib29sIGlzX2hvYmxfYnVmX3RyYW5zKGNvbnN0IHN0cnVjdCBj
bmxfZGRpX2J1Zl90cmFucyAqdGFibGUpCiAJcmV0dXJuIHRhYmxlID09IHRnbF9jb21ib19waHlf
ZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMl9ob2JsOwogfQogCi1zdGF0aWMgY29uc3Qgc3RydWN0
IGRkaV9idWZfdHJhbnMgKgorc3RhdGljIGNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyAq
CiBiZHdfZ2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGlu
dCAqbl9lbnRyaWVzKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwpAQCAtNzgyLDcgKzc4MSw3IEBAIGJkd19nZXRfYnVm
X3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMp
CiAJfQogfQogCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgKgorc3RhdGljIGNv
bnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyAqCiBza2xfZ2V0X2J1Zl90cmFuc19kcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CkBA
IC03OTksNyArNzk4LDcgQEAgc2tsX2dldF9idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsIGludCAqbl9lbnRyaWVzKQogCX0KIH0KIAotc3RhdGljIGNvbnN0IHN0cnVj
dCBkZGlfYnVmX3RyYW5zICoKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMg
Kgoga2JsX2dldF9idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGlu
dCAqbl9lbnRyaWVzKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwpAQCAtODIwLDcgKzgxOSw3IEBAIGtibF9nZXRfYnVm
X3RyYW5zX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgKm5fZW50cmllcykK
IAl9CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqCitzdGF0aWMgY29u
c3Qgc3RydWN0IGhzd19kZGlfYnVmX3RyYW5zICoKIHNrbF9nZXRfYnVmX3RyYW5zX2VkcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CkBA
IC04NTIsNyArODUxLDcgQEAgc2tsX2dldF9idWZfdHJhbnNfZWRwKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLCBpbnQgKm5fZW50cmllcykKIAkJcmV0dXJuIHNrbF9nZXRfYnVmX3RyYW5z
X2RwKGVuY29kZXIsIG5fZW50cmllcyk7CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1
Zl90cmFucyAqCitzdGF0aWMgY29uc3Qgc3RydWN0IGhzd19kZGlfYnVmX3RyYW5zICoKIHNrbF9n
ZXRfYnVmX3RyYW5zX2hkbWkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQg
Km5fZW50cmllcykKIHsKIAlpZiAoSVNfU0tMX1VMWChkZXZfcHJpdikgfHwKQEAgLTg3NiwyMCAr
ODc1LDIwIEBAIHN0YXRpYyBpbnQgc2tsX2J1Zl90cmFuc19udW1fZW50cmllcyhlbnVtIHBvcnQg
cG9ydCwgaW50IG5fZW50cmllcykKIAkJcmV0dXJuIG1pbihuX2VudHJpZXMsIDkpOwogfQogCi1j
b25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqCi1pbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19kcChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCitjb25zdCBzdHJ1
Y3QgaHN3X2RkaV9idWZfdHJhbnMgKgoraHN3X2RkaV9nZXRfYnVmX3RyYW5zX2RwKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgKm5fZW50cmllcykKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAogCWlm
IChJU19LQUJZTEFLRShkZXZfcHJpdikgfHwKIAkgICAgSVNfQ09GRkVFTEFLRShkZXZfcHJpdikg
fHwKIAkgICAgSVNfQ09NRVRMQUtFKGRldl9wcml2KSkgewotCQljb25zdCBzdHJ1Y3QgZGRpX2J1
Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9ucyA9CisJCWNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90
cmFucyAqZGRpX3RyYW5zbGF0aW9ucyA9CiAJCQlrYmxfZ2V0X2J1Zl90cmFuc19kcChlbmNvZGVy
LCBuX2VudHJpZXMpOwogCQkqbl9lbnRyaWVzID0gc2tsX2J1Zl90cmFuc19udW1fZW50cmllcyhl
bmNvZGVyLT5wb3J0LCAqbl9lbnRyaWVzKTsKIAkJcmV0dXJuIGRkaV90cmFuc2xhdGlvbnM7CiAJ
fSBlbHNlIGlmIChJU19TS1lMQUtFKGRldl9wcml2KSkgewotCQljb25zdCBzdHJ1Y3QgZGRpX2J1
Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9ucyA9CisJCWNvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90
cmFucyAqZGRpX3RyYW5zbGF0aW9ucyA9CiAJCQlza2xfZ2V0X2J1Zl90cmFuc19kcChlbmNvZGVy
LCBuX2VudHJpZXMpOwogCQkqbl9lbnRyaWVzID0gc2tsX2J1Zl90cmFuc19udW1fZW50cmllcyhl
bmNvZGVyLT5wb3J0LCAqbl9lbnRyaWVzKTsKIAkJcmV0dXJuIGRkaV90cmFuc2xhdGlvbnM7CkBA
IC05MDUsMTMgKzkwNCwxMyBAQCBpbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19kcChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCiAJcmV0dXJuIE5VTEw7CiB9CiAK
LWNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zICoKLWludGVsX2RkaV9nZXRfYnVmX3RyYW5zX2Vk
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCitjb25zdCBz
dHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgKgoraHN3X2RkaV9nZXRfYnVmX3RyYW5zX2VkcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAK
IAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDkgJiYgIUlTX0JST1hUT04oZGV2X3ByaXYp
KSB7Ci0JCWNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zID0KKwkJ
Y29uc3Qgc3RydWN0IGhzd19kZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zID0KIAkJCXNr
bF9nZXRfYnVmX3RyYW5zX2VkcChlbmNvZGVyLCBuX2VudHJpZXMpOwogCQkqbl9lbnRyaWVzID0g
c2tsX2J1Zl90cmFuc19udW1fZW50cmllcyhlbmNvZGVyLT5wb3J0LCAqbl9lbnRyaWVzKTsKIAkJ
cmV0dXJuIGRkaV90cmFuc2xhdGlvbnM7CkBAIC05MjYsOSArOTI1LDkgQEAgaW50ZWxfZGRpX2dl
dF9idWZfdHJhbnNfZWRwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgKm5fZW50
cmllcykKIAlyZXR1cm4gTlVMTDsKIH0KIAotY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgKgot
aW50ZWxfZGRpX2dldF9idWZfdHJhbnNfZmRpKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKLQkJCSAgICBpbnQgKm5fZW50cmllcykKK2NvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90
cmFucyAqCitoc3dfZGRpX2dldF9idWZfdHJhbnNfZmRpKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKKwkJCSAgaW50ICpuX2VudHJpZXMpCiB7CiAJaWYgKElTX0JST0FEV0VMTChk
ZXZfcHJpdikpIHsKIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoYmR3X2RkaV90cmFuc2xhdGlv
bnNfZmRpKTsKQEAgLTk0Miw5ICs5NDEsOSBAQCBpbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19mZGko
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXJldHVybiBOVUxMOwogfQogCi1j
b25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqCi1pbnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19oZG1p
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAotCQkJICAgICBpbnQgKm5fZW50cmllcykK
K2NvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyAqCitoc3dfZGRpX2dldF9idWZfdHJhbnNf
aGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCSAgIGludCAqbl9lbnRyaWVz
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rl
ci0+YmFzZS5kZXYpOwogCkBAIC0xNDI4LDEzICsxNDI3LDEzIEBAIGludCBpbnRlbF9kZGlfaGRt
aV9udW1fZW50cmllcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJYnh0X2dldF9i
dWZfdHJhbnNfaGRtaShlbmNvZGVyLCAmbl9lbnRyaWVzKTsKIAkJKmRlZmF1bHRfZW50cnkgPSBu
X2VudHJpZXMgLSAxOwogCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDkpIHsK
LQkJaW50ZWxfZGRpX2dldF9idWZfdHJhbnNfaGRtaShlbmNvZGVyLCAmbl9lbnRyaWVzKTsKKwkJ
aHN3X2RkaV9nZXRfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgJm5fZW50cmllcyk7CiAJCSpkZWZh
dWx0X2VudHJ5ID0gODsKIAl9IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKLQkJ
aW50ZWxfZGRpX2dldF9idWZfdHJhbnNfaGRtaShlbmNvZGVyLCAmbl9lbnRyaWVzKTsKKwkJaHN3
X2RkaV9nZXRfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgJm5fZW50cmllcyk7CiAJCSpkZWZhdWx0
X2VudHJ5ID0gNzsKIAl9IGVsc2UgaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Ci0JCWludGVs
X2RkaV9nZXRfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgJm5fZW50cmllcyk7CisJCWhzd19kZGlf
Z2V0X2J1Zl90cmFuc19oZG1pKGVuY29kZXIsICZuX2VudHJpZXMpOwogCQkqZGVmYXVsdF9lbnRy
eSA9IDY7CiAJfSBlbHNlIHsKIAkJZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sIDEsICJkZGkgdHJh
bnNsYXRpb24gdGFibGUgbWlzc2luZ1xuIik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oCmluZGV4IDRjMmVmYWIzODY0Mi4uMWI4ZDNl
ZjdmMDZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aV9idWZfdHJhbnMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aV9idWZfdHJhbnMuaApAQCAtMTIsNyArMTIsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsK
IHN0cnVjdCBpbnRlbF9lbmNvZGVyOwogc3RydWN0IGludGVsX2NydGNfc3RhdGU7CiAKLXN0cnVj
dCBkZGlfYnVmX3RyYW5zIHsKK3N0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyB7CiAJdTMyIHRyYW5z
MTsJLyogYmFsYW5jZSBsZWcgZW5hYmxlLCBkZS1lbXBoIGxldmVsICovCiAJdTMyIHRyYW5zMjsJ
LyogdnJlZiBzZWwsIHZzd2luZyAqLwogCXU4IGlfYm9vc3Q7CS8qIFNLTDogSV9ib29zdDsgdmFs
aWQ6IDB4MCwgMHgxLCAweDMsIDB4NyAqLwpAQCAtNTEsMTYgKzUxLDE0IEBAIGludCBpbnRlbF9k
ZGlfaGRtaV9udW1fZW50cmllcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCSAg
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCSAgICAg
ICBpbnQgKmRlZmF1bHRfZW50cnkpOwogCi1jb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqCi1p
bnRlbF9kZGlfZ2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
IGludCAqbl9lbnRyaWVzKTsKLWNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zICoKLWludGVsX2Rk
aV9nZXRfYnVmX3RyYW5zX2ZkaShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0J
CQkgICAgaW50ICpuX2VudHJpZXMpOwotY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgKgotaW50
ZWxfZGRpX2dldF9idWZfdHJhbnNfaGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
LQkJCSAgICAgaW50ICpuX2VudHJpZXMpOwotY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgKgot
aW50ZWxfZGRpX2dldF9idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
IGludCAqbl9lbnRyaWVzKTsKK2NvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyAqCitoc3df
ZGRpX2dldF9idWZfdHJhbnNfZWRwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQg
Km5fZW50cmllcyk7Citjb25zdCBzdHJ1Y3QgaHN3X2RkaV9idWZfdHJhbnMgKgoraHN3X2RkaV9n
ZXRfYnVmX3RyYW5zX2ZkaShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCAq
bl9lbnRyaWVzKTsKK2NvbnN0IHN0cnVjdCBoc3dfZGRpX2J1Zl90cmFucyAqCitoc3dfZGRpX2dl
dF9idWZfdHJhbnNfaGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2Vu
dHJpZXMpOworY29uc3Qgc3RydWN0IGhzd19kZGlfYnVmX3RyYW5zICoKK2hzd19kZGlfZ2V0X2J1
Zl90cmFuc19kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMp
OwogCiBjb25zdCBzdHJ1Y3QgYnh0X2RkaV9idWZfdHJhbnMgKgogYnh0X2dldF9idWZfdHJhbnMo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mZGkuYwppbmRleCBjZWYxMDYxZmQ2Y2IuLmE4MDZlMWI4MzYxMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mZGkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jCkBAIC01NjksOSArNTY5LDkgQEAgdm9p
ZCBoc3dfZmRpX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJdTMy
IHRlbXAsIGksIHJ4X2N0bF92YWw7CiAJaW50IG5fZW50cmllczsKIAotCWludGVsX2RkaV9nZXRf
YnVmX3RyYW5zX2ZkaShkZXZfcHJpdiwgJm5fZW50cmllcyk7CisJaHN3X2RkaV9nZXRfYnVmX3Ry
YW5zX2ZkaShkZXZfcHJpdiwgJm5fZW50cmllcyk7CiAKLQlpbnRlbF9wcmVwYXJlX2RwX2RkaV9i
dWZmZXJzKGVuY29kZXIsIGNydGNfc3RhdGUpOworCWhzd19wcmVwYXJlX2RwX2RkaV9idWZmZXJz
KGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJLyogU2V0IHRoZSBGRElfUlhfTUlTQyBwd3JkbiBs
YW5lcyBhbmQgdGhlIDIgd29ya2Fyb3VuZHMgbGlzdGVkIGF0IHRoZQogCSAqIG1vZGUgc2V0ICJz
ZXF1ZW5jZSBmb3IgQ1JUIHBvcnQiIGRvY3VtZW50OgotLSAKMi4zMS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
