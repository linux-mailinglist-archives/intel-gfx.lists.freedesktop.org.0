Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEA7181CF2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 16:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022E66E9A8;
	Wed, 11 Mar 2020 15:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C8616E9A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 15:54:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 08:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="289424466"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Mar 2020 08:54:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Mar 2020 17:54:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 17:54:20 +0200
Message-Id: <20200311155422.3043-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915: Turn
 intel_digital_port_connected() in a vfunc
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGdldCByaWQgb2YgdGhlIHBsYXRmb3JtIGlmIGxhZGRlcnMgaW4KaW50ZWxfZGlnaXRhbF9w
b3J0X2Nvbm5lY3RlZCgpIGFuZCBtYWtlIGl0IGEgdmZ1bmMuIE5vdyB0aGUgaWYKbGFkZGVycyBh
cmUgYXQgdGhlIGVuY29kZXIgaW5pdGlhbGl6YXRpb24gd2hpY2ggbWFrZXMgdGhlbSBhIGJpdAps
ZXNzIGNvbnZvbHV0ZWQuCgp2MjogQWRkIGZvcndhcmQgZGVjbCBmb3IgaW50ZWxfZW5jb2RlciBp
biBpbnRlbF90Yy5oCnYzOiBEdXBsaWNhdGUgc3R1ZmYgdG8gYXZvaWQgZXhwb3NpbmcgcGxhdGZv
cm0gc3BlY2lmaWMKICAgIGZ1bmN0aW9ucyBhY3Jvc3MgZmlsZXMgKEphbmkpCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8IDEwOSArKysr
KysrKysrKysrCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAg
fCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwg
MTQ3ICsrKy0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmggICAgICAgfCAgIDMgKy0KIDUgZmlsZXMgY2hhbmdlZCwgMTM1IGluc2VydGlvbnMoKyks
IDEyOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YwppbmRleCA3M2QwZjQ2NDhjMDYuLmM4Y2ViMDhmOGQwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00MzQzLDYgKzQzNDMsOTYgQEAgaW50ZWxfZGRpX2hv
dHBsdWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJcmV0dXJuIHN0YXRlOwogfQog
CitzdGF0aWMgYm9vbCBscHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwl1MzIgYml0OworCisJc3dpdGNoIChlbmNvZGVy
LT5ocGRfcGluKSB7CisJY2FzZSBIUERfUE9SVF9COgorCQliaXQgPSBTREVfUE9SVEJfSE9UUExV
R19DUFQ7CisJCWJyZWFrOworCWNhc2UgSFBEX1BPUlRfQzoKKwkJYml0ID0gU0RFX1BPUlRDX0hP
VFBMVUdfQ1BUOworCQlicmVhazsKKwljYXNlIEhQRF9QT1JUX0Q6CisJCWJpdCA9IFNERV9QT1JU
RF9IT1RQTFVHX0NQVDsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKGVuY29k
ZXItPmhwZF9waW4pOworCQlyZXR1cm4gZmFsc2U7CisJfQorCisJcmV0dXJuIGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsIFNERUlTUikgJiBiaXQ7Cit9CisKK3N0YXRpYyBib29sIHNwdF9kaWdpdGFs
X3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
OworCXUzMiBiaXQ7CisKKwlzd2l0Y2ggKGVuY29kZXItPmhwZF9waW4pIHsKKwljYXNlIEhQRF9Q
T1JUX0E6CisJCWJpdCA9IFNERV9QT1JUQV9IT1RQTFVHX1NQVDsKKwkJYnJlYWs7CisJY2FzZSBI
UERfUE9SVF9FOgorCQliaXQgPSBTREVfUE9SVEVfSE9UUExVR19TUFQ7CisJCWJyZWFrOworCWRl
ZmF1bHQ6CisJCXJldHVybiBscHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKKwl9
CisKKwlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgU0RFSVNSKSAmIGJpdDsKK30KKwor
c3RhdGljIGJvb2wgaHN3X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisKKwlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgREVJU1IpICYgREVfRFBfQV9IT1RQTFVHX0lWQjsKK30KKworc3RhdGljIGJvb2wgYmR3X2Rp
Z2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCit7CisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7CisKKwlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgR0VOOF9ERV9QT1JUX0lT
UikgJiBHRU44X1BPUlRfRFBfQV9IT1RQTFVHOworfQorCitzdGF0aWMgYm9vbCBieHRfZGlnaXRh
bF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2
KTsKKwl1MzIgYml0OworCisJc3dpdGNoIChlbmNvZGVyLT5ocGRfcGluKSB7CisJY2FzZSBIUERf
UE9SVF9BOgorCQliaXQgPSBCWFRfREVfUE9SVF9IUF9ERElBOworCQlicmVhazsKKwljYXNlIEhQ
RF9QT1JUX0I6CisJCWJpdCA9IEJYVF9ERV9QT1JUX0hQX0RESUI7CisJCWJyZWFrOworCWNhc2Ug
SFBEX1BPUlRfQzoKKwkJYml0ID0gQlhUX0RFX1BPUlRfSFBfRERJQzsKKwkJYnJlYWs7CisJZGVm
YXVsdDoKKwkJTUlTU0lOR19DQVNFKGVuY29kZXItPmhwZF9waW4pOworCQlyZXR1cm4gZmFsc2U7
CisJfQorCisJcmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEdFTjhfREVfUE9SVF9JU1Ip
ICYgYml0OworfQorCitzdGF0aWMgYm9vbCBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwllbnVtIHBoeSBwaHkgPSBp
bnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7CisKKwlpZiAoSEFTX1BD
SF9NQ0MoZGV2X3ByaXYpICYmIHBoeSA9PSBQSFlfQykKKwkJcmV0dXJuIGludGVsX2RlX3JlYWQo
ZGV2X3ByaXYsIFNERUlTUikgJiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOworCisJcmV0
dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQ
KHBoeSk7Cit9CisKIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICoKIGludGVsX2RkaV9p
bml0X2hkbWlfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0KQogewpAQCAtNDUzNCw2ICs0NjI0LDI1IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAkJCQlwb3J0X25h
bWUocG9ydCkpOwogCX0KIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CisJCWlm
IChpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkpCisJCQlpbnRlbF9kaWdfcG9ydC0+Y29u
bmVjdGVkID0gaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWQ7CisJCWVsc2UKKwkJCWludGVsX2RpZ19w
b3J0LT5jb25uZWN0ZWQgPSBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZDsKKwl9IGVsc2UgaWYg
KElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7CisJCWludGVsX2RpZ19wb3J0LT5jb25uZWN0ZWQgPSBi
eHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZDsKKwl9IGVsc2UgaWYgKHBvcnQgPT0gUE9SVF9BKSB7
CisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpCisJCQlpbnRlbF9kaWdfcG9ydC0+Y29u
bmVjdGVkID0gYmR3X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQ7CisJCWVsc2UKKwkJCWludGVsX2Rp
Z19wb3J0LT5jb25uZWN0ZWQgPSBoc3dfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZDsKKwl9IGVsc2Ug
eworCQlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9TUFQpCisJCQlpbnRlbF9k
aWdfcG9ydC0+Y29ubmVjdGVkID0gc3B0X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQ7CisJCWVsc2UK
KwkJCWludGVsX2RpZ19wb3J0LT5jb25uZWN0ZWQgPSBscHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3Rl
ZDsKKwl9CisKIAlpbnRlbF9pbmZvZnJhbWVfaW5pdChpbnRlbF9kaWdfcG9ydCk7CiAKIAlyZXR1
cm47CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCmluZGV4IDVlMDBlNjExZjA3Ny4uM2FhYjEyZjY5ZmY4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTQwMSw2
ICsxNDAxLDcgQEAgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCB7CiAJCQkgICAgICAgY29uc3Qg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOwogCXUzMiAoKmluZm9mcmFt
ZXNfZW5hYmxlZCkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpOworCWJvb2wgKCpjb25uZWN0ZWQp
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsKIH07CiAKIHN0cnVjdCBpbnRlbF9kcF9t
c3RfZW5jb2RlciB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXgg
MGE0MTdjZDJhZjJiLi5jZmYxNGY1MmMzOTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKQEAgLTU0NDcsMjUgKzU0NDcsNiBAQCBzdGF0aWMgYm9vbCBjcHRfZGlnaXRh
bF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAlyZXR1cm4g
aW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgU0RFSVNSKSAmIGJpdDsKIH0KIAotc3RhdGljIGJvb2wg
c3B0X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
Ci17Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVy
LT5iYXNlLmRldik7Ci0JdTMyIGJpdDsKLQotCXN3aXRjaCAoZW5jb2Rlci0+aHBkX3Bpbikgewot
CWNhc2UgSFBEX1BPUlRfQToKLQkJYml0ID0gU0RFX1BPUlRBX0hPVFBMVUdfU1BUOwotCQlicmVh
azsKLQljYXNlIEhQRF9QT1JUX0U6Ci0JCWJpdCA9IFNERV9QT1JURV9IT1RQTFVHX1NQVDsKLQkJ
YnJlYWs7Ci0JZGVmYXVsdDoKLQkJcmV0dXJuIGNwdF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVu
Y29kZXIpOwotCX0KLQotCXJldHVybiBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBTREVJU1IpICYg
Yml0OwotfQotCiBzdGF0aWMgYm9vbCBnNHhfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKQEAgLTU1MTYsODggKzU0OTcsMTQg
QEAgc3RhdGljIGJvb2wgaWxrX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAKLQlpZiAoZW5jb2Rlci0+aHBkX3BpbiA9PSBI
UERfUE9SVF9BKQotCQlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgREVJU1IpICYgREVf
RFBfQV9IT1RQTFVHOwotCWVsc2UKLQkJcmV0dXJuIGlieF9kaWdpdGFsX3BvcnRfY29ubmVjdGVk
KGVuY29kZXIpOwotfQotCi1zdGF0aWMgYm9vbCBzbmJfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKLQotCWlmIChlbmNvZGVy
LT5ocGRfcGluID09IEhQRF9QT1JUX0EpCi0JCXJldHVybiBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBERUlTUikgJiBERV9EUF9BX0hPVFBMVUc7Ci0JZWxzZQotCQlyZXR1cm4gY3B0X2RpZ2l0YWxf
cG9ydF9jb25uZWN0ZWQoZW5jb2Rlcik7CisJcmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IERFSVNSKSAmIERFX0RQX0FfSE9UUExVRzsKIH0KIAogc3RhdGljIGJvb2wgaXZiX2RpZ2l0YWxf
cG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
CiAKLQlpZiAoZW5jb2Rlci0+aHBkX3BpbiA9PSBIUERfUE9SVF9BKQotCQlyZXR1cm4gaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgREVJU1IpICYgREVfRFBfQV9IT1RQTFVHX0lWQjsKLQllbHNlCi0J
CXJldHVybiBjcHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKLX0KLQotc3RhdGlj
IGJvb2wgYmR3X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIpCi17Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShl
bmNvZGVyLT5iYXNlLmRldik7Ci0KLQlpZiAoZW5jb2Rlci0+aHBkX3BpbiA9PSBIUERfUE9SVF9B
KQotCQlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgR0VOOF9ERV9QT1JUX0lTUikgJiBH
RU44X1BPUlRfRFBfQV9IT1RQTFVHOwotCWVsc2UKLQkJcmV0dXJuIGNwdF9kaWdpdGFsX3BvcnRf
Y29ubmVjdGVkKGVuY29kZXIpOwotfQotCi1zdGF0aWMgYm9vbCBieHRfZGlnaXRhbF9wb3J0X2Nv
bm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKLXsKLQlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKLQl1MzIg
Yml0OwotCi0Jc3dpdGNoIChlbmNvZGVyLT5ocGRfcGluKSB7Ci0JY2FzZSBIUERfUE9SVF9BOgot
CQliaXQgPSBCWFRfREVfUE9SVF9IUF9ERElBOwotCQlicmVhazsKLQljYXNlIEhQRF9QT1JUX0I6
Ci0JCWJpdCA9IEJYVF9ERV9QT1JUX0hQX0RESUI7Ci0JCWJyZWFrOwotCWNhc2UgSFBEX1BPUlRf
QzoKLQkJYml0ID0gQlhUX0RFX1BPUlRfSFBfRERJQzsKLQkJYnJlYWs7Ci0JZGVmYXVsdDoKLQkJ
TUlTU0lOR19DQVNFKGVuY29kZXItPmhwZF9waW4pOwotCQlyZXR1cm4gZmFsc2U7Ci0JfQotCi0J
cmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEdFTjhfREVfUE9SVF9JU1IpICYgYml0Owot
fQotCi1zdGF0aWMgYm9vbCBpbnRlbF9jb21ib19waHlfY29ubmVjdGVkKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkgICAgICBlbnVtIHBoeSBwaHkpCi17Ci0JaWYgKEhB
U19QQ0hfTUNDKGRldl9wcml2KSAmJiBwaHkgPT0gUEhZX0MpCi0JCXJldHVybiBpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LCBTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMxKTsKLQot
CXJldHVybiBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBTREVJU1IpICYgU0RFX0RESV9IT1RQTFVH
X0lDUChwaHkpOwotfQotCi1zdGF0aWMgYm9vbCBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKLQlzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsKLQllbnVt
IHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7Ci0K
LQlpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKQotCQlyZXR1cm4gaW50ZWxf
Y29tYm9fcGh5X2Nvbm5lY3RlZChkZXZfcHJpdiwgcGh5KTsKLQllbHNlIGlmIChpbnRlbF9waHlf
aXNfdGMoZGV2X3ByaXYsIHBoeSkpCi0JCXJldHVybiBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZChk
aWdfcG9ydCk7Ci0JZWxzZQotCQlNSVNTSU5HX0NBU0UoZW5jb2Rlci0+aHBkX3Bpbik7Ci0KLQly
ZXR1cm4gZmFsc2U7CisJcmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERFSVNSKSAmIERF
X0RQX0FfSE9UUExVR19JVkI7CiB9CiAKIC8qCkBAIC01NjExLDQ0ICs1NTE4LDE1IEBAIHN0YXRp
YyBib29sIGljcF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKQogICoKICAqIFJldHVybiAldHJ1ZSBpZiBwb3J0IGlzIGNvbm5lY3RlZCwgJWZhbHNl
IG90aGVyd2lzZS4KICAqLwotc3RhdGljIGJvb2wgX19pbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVj
dGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQotewotCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwotCi0JaWYgKEhB
U19HTUNIKGRldl9wcml2KSkgewotCQlpZiAoSVNfR000NShkZXZfcHJpdikpCi0JCQlyZXR1cm4g
Z200NV9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpOwotCQllbHNlCi0JCQlyZXR1cm4g
ZzR4X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5jb2Rlcik7Ci0JfQotCi0JaWYgKElOVEVMX1BD
SF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfSUNQKQotCQlyZXR1cm4gaWNwX2RpZ2l0YWxfcG9ydF9j
b25uZWN0ZWQoZW5jb2Rlcik7Ci0JZWxzZSBpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49
IFBDSF9TUFQpCi0JCXJldHVybiBzcHRfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsK
LQllbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSkKLQkJcmV0dXJuIGJ4dF9kaWdpdGFsX3Bv
cnRfY29ubmVjdGVkKGVuY29kZXIpOwotCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgOCkpCi0J
CXJldHVybiBiZHdfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKLQllbHNlIGlmIChJ
U19HRU4oZGV2X3ByaXYsIDcpKQotCQlyZXR1cm4gaXZiX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQo
ZW5jb2Rlcik7Ci0JZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA2KSkKLQkJcmV0dXJuIHNuYl9k
aWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpOwotCWVsc2UgaWYgKElTX0dFTihkZXZfcHJp
diwgNSkpCi0JCXJldHVybiBpbGtfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKLQot
CU1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oZGV2X3ByaXYpKTsKLQlyZXR1cm4gZmFsc2U7Ci19Ci0K
IGJvb2wgaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGVuY29kZXItPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsKIAlib29sIGlzX2Nvbm5lY3RlZCA9IGZhbHNl
OwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCiAJd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2Vy
KGRldl9wcml2LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLCB3YWtlcmVmKQotCQlpc19jb25u
ZWN0ZWQgPSBfX2ludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5jb2Rlcik7CisJCWlzX2Nv
bm5lY3RlZCA9IGRpZ19wb3J0LT5jb25uZWN0ZWQoZW5jb2Rlcik7CiAKIAlyZXR1cm4gaXNfY29u
bmVjdGVkOwogfQpAQCAtNzg1Miw2ICs3NzMwLDIzIEBAIGJvb2wgaW50ZWxfZHBfaW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlpbnRlbF9kaWdfcG9ydC0+aHBkX3B1
bHNlID0gaW50ZWxfZHBfaHBkX3B1bHNlOwogCisJaWYgKEhBU19HTUNIKGRldl9wcml2KSkgewor
CQlpZiAoSVNfR000NShkZXZfcHJpdikpCisJCQlpbnRlbF9kaWdfcG9ydC0+Y29ubmVjdGVkID0g
Z200NV9kaWdpdGFsX3BvcnRfY29ubmVjdGVkOworCQllbHNlCisJCQlpbnRlbF9kaWdfcG9ydC0+
Y29ubmVjdGVkID0gZzR4X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQ7CisJfSBlbHNlIGlmIChwb3J0
ID09IFBPUlRfQSkgeworCQlpZiAoSVNfSVZZQlJJREdFKGRldl9wcml2KSkKKwkJCWludGVsX2Rp
Z19wb3J0LT5jb25uZWN0ZWQgPSBpdmJfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZDsKKwkJZWxzZQor
CQkJaW50ZWxfZGlnX3BvcnQtPmNvbm5lY3RlZCA9IGlsa19kaWdpdGFsX3BvcnRfY29ubmVjdGVk
OworCX0gZWxzZSB7CisJCWlmIChIQVNfUENIX0NQVChkZXZfcHJpdikpCisJCQlpbnRlbF9kaWdf
cG9ydC0+Y29ubmVjdGVkID0gY3B0X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQ7CisJCWVsc2UKKwkJ
CWludGVsX2RpZ19wb3J0LT5jb25uZWN0ZWQgPSBpYnhfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZDsK
Kwl9CisKIAlpZiAocG9ydCAhPSBQT1JUX0EpCiAJCWludGVsX2luZm9mcmFtZV9pbml0KGludGVs
X2RpZ19wb3J0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCmluZGV4
IDliODUwYzExYWE3OC4uMWU2NGI0YzkyZWVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jCkBAIC00ODQsOCArNDg0LDkgQEAgc3RhdGljIGJvb2wgaW50ZWxfdGNfcG9y
dF9uZWVkc19yZXNldChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKICAqIGNv
bm5lY3RlZCBwb3J0cyBhcmUgdXNhYmxlLCBhbmQgYXZvaWRzIGV4cG9zaW5nIHRvIHRoZSB1c2Vy
cyBvYmplY3RzIHRoZXkKICAqIGNhbid0IHJlYWxseSB1c2UuCiAgKi8KLWJvb2wgaW50ZWxfdGNf
cG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCitib29s
IGludGVsX3RjX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQog
eworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0
KGVuY29kZXIpOwogCWJvb2wgaXNfY29ubmVjdGVkOwogCiAJaW50ZWxfdGNfcG9ydF9sb2NrKGRp
Z19wb3J0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAppbmRleCA0NjNm
MWIzYzgzNmYuLmI2MTllNDczNmY4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuaApAQCAtMTAsOCArMTAsOSBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAKIHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQ7CitzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKIAotYm9vbCBp
bnRlbF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCk7Citib29sIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKTsKIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21hc2soc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogdTMyIGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25t
ZW50X21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogaW50IGludGVs
X3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KTsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
