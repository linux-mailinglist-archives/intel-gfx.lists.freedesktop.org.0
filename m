Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D3B2970B4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26FC6F885;
	Fri, 23 Oct 2020 13:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14146F885
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:35:24 +0000 (UTC)
IronPort-SDR: IRyciXfxYrJXVwPj0ERNBYRF4q5hhzm6jdSLyVLdPIddetfYnKVsAhYh2+bPUU8ToJWQUFyFie
 T4FRCDIPYKoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="165083206"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="165083206"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:35:22 -0700
IronPort-SDR: datMd4AlliScTfWiU6h/ZgVwayOmyYOTXHy4+GS2zce3hPlms4MBme+Ph4Yt2tAk2aJsZQjC4v
 HGlHh2TEtH3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="360229320"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Oct 2020 06:35:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:35:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:18 +0300
Message-Id: <20201023133420.12039-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/19] drm/i915: Enable hpd logic only for
 ports that are present
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
dCdzIGVuYWJsZSB0aGUgaGFyZHdhcmUgaHBkIGxvZ2ljIG9ubHkgZm9yIHRoZSBwb3J0cyB3ZQpj
YW4gYWN0dWFsbHkgdXNlLgoKSW4gdGhlb3J5IHRoaXMgbWF5IHNhdmUgc29tZSBtaW5pc2N1bGUg
YW1vdW50cyBvZiBwb3dlciwKYW5kIG1vcmUgaW1wb3J0YW50bHkgaXQgZWxpbWluYXRlcyBhIGxv
dCBpZiBwbGF0Zm9ybSBzcGVjaWZpYwpjb2RlcGF0aHMgc2luY2UgdGhlIGdlbmVyaWMgdGhpbmcg
Y2FuIG5vdyBkZWFsIHdpdGggYW55CmNvbWJpbmF0aW9uIG9mIHBvcnRzIGJlaW5nIHByZXNlbnQg
b24gZWFjaCBTS1UuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
fCAzMDEgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggfCAgMTMgLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjA1IGluc2VydGlvbnMo
KyksIDEwOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCA0NDdhNTJm
NzcwMWQuLjA0YTZmMzIyMTEwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC02MSw2ICs2
MSw4IEBACiAgKi8KIAogdHlwZWRlZiBib29sICgqbG9uZ19wdWxzZV9kZXRlY3RfZnVuYykoZW51
bSBocGRfcGluIHBpbiwgdTMyIHZhbCk7Cit0eXBlZGVmIHUzMiAoKmhvdHBsdWdfZW5hYmxlc19m
dW5jKShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCQkgICAgZW51bSBocGRfcGlu
IHBpbik7CiAKIHN0YXRpYyBjb25zdCB1MzIgaHBkX2lsa1tIUERfTlVNX1BJTlNdID0gewogCVtI
UERfUE9SVF9BXSA9IERFX0RQX0FfSE9UUExVRywKQEAgLTEyMTgsNiArMTIyMCwxOCBAQCBzdGF0
aWMgdTMyIGludGVsX2hwZF9ob3RwbHVnX2lycXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCXJldHVybiBob3RwbHVnX2lycXM7CiB9CiAKK3N0YXRpYyB1MzIgaW50ZWxfaHBk
X2hvdHBsdWdfZW5hYmxlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCQkgICAg
IGhvdHBsdWdfZW5hYmxlc19mdW5jIGhvdHBsdWdfZW5hYmxlcykKK3sKKwlzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcjsKKwl1MzIgaG90cGx1ZyA9IDA7CisKKwlmb3JfZWFjaF9pbnRlbF9l
bmNvZGVyKCZpOTE1LT5kcm0sIGVuY29kZXIpCisJCWhvdHBsdWcgfD0gaG90cGx1Z19lbmFibGVz
KGk5MTUsIGVuY29kZXItPmhwZF9waW4pOworCisJcmV0dXJuIGhvdHBsdWc7Cit9CisKIHN0YXRp
YyB2b2lkIGdtYnVzX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKIAl3YWtlX3VwX2FsbCgmZGV2X3ByaXYtPmdtYnVzX3dhaXRfcXVldWUpOwpAQCAtMzE0
MCw2ICszMTU0LDMxIEBAIHN0YXRpYyB2b2lkIGNoZXJyeXZpZXdfaXJxX3Jlc2V0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzcGluX3VubG9ja19pcnEoJmRldl9wcml2LT5p
cnFfbG9jayk7CiB9CiAKK3N0YXRpYyB1MzIgaWJ4X2hvdHBsdWdfZW5hYmxlcyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCSAgICAgICBlbnVtIGhwZF9waW4gcGluKQoreworCXN3
aXRjaCAocGluKSB7CisJY2FzZSBIUERfUE9SVF9BOgorCQkvKgorCQkgKiBXaGVuIENQVSBhbmQg
UENIIGFyZSBvbiB0aGUgc2FtZSBwYWNrYWdlLCBwb3J0IEEKKwkJICogSFBEIG11c3QgYmUgZW5h
YmxlZCBpbiBib3RoIG5vcnRoIGFuZCBzb3V0aC4KKwkJICovCisJCXJldHVybiBIQVNfUENIX0xQ
VF9MUChpOTE1KSA/CisJCQlQT1JUQV9IT1RQTFVHX0VOQUJMRSA6IDA7CisJY2FzZSBIUERfUE9S
VF9COgorCQlyZXR1cm4gUE9SVEJfSE9UUExVR19FTkFCTEUgfAorCQkJUE9SVEJfUFVMU0VfRFVS
QVRJT05fMm1zOworCWNhc2UgSFBEX1BPUlRfQzoKKwkJcmV0dXJuIFBPUlRDX0hPVFBMVUdfRU5B
QkxFIHwKKwkJCVBPUlRDX1BVTFNFX0RVUkFUSU9OXzJtczsKKwljYXNlIEhQRF9QT1JUX0Q6CisJ
CXJldHVybiBQT1JURF9IT1RQTFVHX0VOQUJMRSB8CisJCQlQT1JURF9QVUxTRV9EVVJBVElPTl8y
bXM7CisJZGVmYXVsdDoKKwkJcmV0dXJuIDA7CisJfQorfQorCiBzdGF0aWMgdm9pZCBpYnhfaHBk
X2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
dTMyIGhvdHBsdWc7CkBAIC0zMTUwLDE4ICszMTg5LDE0IEBAIHN0YXRpYyB2b2lkIGlieF9ocGRf
ZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKiBU
aGUgcHVsc2UgZHVyYXRpb24gYml0cyBhcmUgcmVzZXJ2ZWQgb24gTFBUKy4KIAkgKi8KIAlob3Rw
bHVnID0gSTkxNV9SRUFEKFBDSF9QT1JUX0hPVFBMVUcpOwotCWhvdHBsdWcgJj0gfihQT1JUQl9Q
VUxTRV9EVVJBVElPTl9NQVNLIHwKKwlob3RwbHVnICY9IH4oUE9SVEFfSE9UUExVR19FTkFCTEUg
fAorCQkgICAgIFBPUlRCX0hPVFBMVUdfRU5BQkxFIHwKKwkJICAgICBQT1JUQ19IT1RQTFVHX0VO
QUJMRSB8CisJCSAgICAgUE9SVERfSE9UUExVR19FTkFCTEUgfAorCQkgICAgIFBPUlRCX1BVTFNF
X0RVUkFUSU9OX01BU0sgfAogCQkgICAgIFBPUlRDX1BVTFNFX0RVUkFUSU9OX01BU0sgfAogCQkg
ICAgIFBPUlREX1BVTFNFX0RVUkFUSU9OX01BU0spOwotCWhvdHBsdWcgfD0gUE9SVEJfSE9UUExV
R19FTkFCTEUgfCBQT1JUQl9QVUxTRV9EVVJBVElPTl8ybXM7Ci0JaG90cGx1ZyB8PSBQT1JUQ19I
T1RQTFVHX0VOQUJMRSB8IFBPUlRDX1BVTFNFX0RVUkFUSU9OXzJtczsKLQlob3RwbHVnIHw9IFBP
UlREX0hPVFBMVUdfRU5BQkxFIHwgUE9SVERfUFVMU0VfRFVSQVRJT05fMm1zOwotCS8qCi0JICog
V2hlbiBDUFUgYW5kIFBDSCBhcmUgb24gdGhlIHNhbWUgcGFja2FnZSwgcG9ydCBBCi0JICogSFBE
IG11c3QgYmUgZW5hYmxlZCBpbiBib3RoIG5vcnRoIGFuZCBzb3V0aC4KLQkgKi8KLQlpZiAoSEFT
X1BDSF9MUFRfTFAoZGV2X3ByaXYpKQotCQlob3RwbHVnIHw9IFBPUlRBX0hPVFBMVUdfRU5BQkxF
OworCWhvdHBsdWcgfD0gaW50ZWxfaHBkX2hvdHBsdWdfZW5hYmxlcyhkZXZfcHJpdiwgaWJ4X2hv
dHBsdWdfZW5hYmxlcyk7CiAJSTkxNV9XUklURShQQ0hfUE9SVF9IT1RQTFVHLCBob3RwbHVnKTsK
IH0KIApAQCAtMzE3NywyOCArMzIxMiw2MyBAQCBzdGF0aWMgdm9pZCBpYnhfaHBkX2lycV9zZXR1
cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWJ4X2hwZF9kZXRlY3Rpb25f
c2V0dXAoZGV2X3ByaXYpOwogfQogCi1zdGF0aWMgdm9pZCBpY3BfZGRpX2hwZF9kZXRlY3Rpb25f
c2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCQl1MzIgZW5hYmxl
X21hc2spCitzdGF0aWMgdTMyIGljcF9kZGlfaG90cGx1Z19lbmFibGVzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAorCQkJCSAgIGVudW0gaHBkX3BpbiBwaW4pCit7CisJc3dpdGNoIChw
aW4pIHsKKwljYXNlIEhQRF9QT1JUX0E6CisJY2FzZSBIUERfUE9SVF9COgorCWNhc2UgSFBEX1BP
UlRfQzoKKwkJcmV0dXJuIFNIT1RQTFVHX0NUTF9ERElfSFBEX0VOQUJMRShwaW4pOworCWRlZmF1
bHQ6CisJCXJldHVybiAwOworCX0KK30KKworc3RhdGljIHUzMiBpY3BfdGNfaG90cGx1Z19lbmFi
bGVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJCSAgZW51bSBocGRfcGluIHBp
bikKK3sKKwlzd2l0Y2ggKHBpbikgeworCWNhc2UgSFBEX1BPUlRfVEMxOgorCWNhc2UgSFBEX1BP
UlRfVEMyOgorCWNhc2UgSFBEX1BPUlRfVEMzOgorCWNhc2UgSFBEX1BPUlRfVEM0OgorCWNhc2Ug
SFBEX1BPUlRfVEM1OgorCWNhc2UgSFBEX1BPUlRfVEM2OgorCQlyZXR1cm4gSUNQX1RDX0hQRF9F
TkFCTEUocGluKTsKKwlkZWZhdWx0OgorCQlyZXR1cm4gMDsKKwl9Cit9CisKK3N0YXRpYyB2b2lk
IGljcF9kZGlfaHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiB7CiAJdTMyIGhvdHBsdWc7CiAKIAlob3RwbHVnID0gSTkxNV9SRUFEKFNIT1RQTFVH
X0NUTF9EREkpOwotCWhvdHBsdWcgfD0gZW5hYmxlX21hc2s7CisJaG90cGx1ZyAmPSB+KFNIT1RQ
TFVHX0NUTF9ERElfSFBEX0VOQUJMRShIUERfUE9SVF9BKSB8CisJCSAgICAgU0hPVFBMVUdfQ1RM
X0RESV9IUERfRU5BQkxFKEhQRF9QT1JUX0IpIHwKKwkJICAgICBTSE9UUExVR19DVExfRERJX0hQ
RF9FTkFCTEUoSFBEX1BPUlRfQykpOworCWhvdHBsdWcgfD0gaW50ZWxfaHBkX2hvdHBsdWdfZW5h
YmxlcyhkZXZfcHJpdiwgaWNwX2RkaV9ob3RwbHVnX2VuYWJsZXMpOwogCUk5MTVfV1JJVEUoU0hP
VFBMVUdfQ1RMX0RESSwgaG90cGx1Zyk7CiB9CiAKLXN0YXRpYyB2b2lkIGljcF90Y19ocGRfZGV0
ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkgICAg
ICAgdTMyIGVuYWJsZV9tYXNrKQorc3RhdGljIHZvaWQgaWNwX3RjX2hwZF9kZXRlY3Rpb25fc2V0
dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiBob3RwbHVnOwog
CiAJaG90cGx1ZyA9IEk5MTVfUkVBRChTSE9UUExVR19DVExfVEMpOwotCWhvdHBsdWcgfD0gZW5h
YmxlX21hc2s7CisJaG90cGx1ZyAmPSB+KElDUF9UQ19IUERfRU5BQkxFKEhQRF9QT1JUX1RDMSkg
fAorCQkgICAgIElDUF9UQ19IUERfRU5BQkxFKEhQRF9QT1JUX1RDMikgfAorCQkgICAgIElDUF9U
Q19IUERfRU5BQkxFKEhQRF9QT1JUX1RDMykgfAorCQkgICAgIElDUF9UQ19IUERfRU5BQkxFKEhQ
RF9QT1JUX1RDNCkgfAorCQkgICAgIElDUF9UQ19IUERfRU5BQkxFKEhQRF9QT1JUX1RDNSkgfAor
CQkgICAgIElDUF9UQ19IUERfRU5BQkxFKEhQRF9QT1JUX1RDNikpOworCWhvdHBsdWcgfD0gaW50
ZWxfaHBkX2hvdHBsdWdfZW5hYmxlcyhkZXZfcHJpdiwgaWNwX3RjX2hvdHBsdWdfZW5hYmxlcyk7
CiAJSTkxNV9XUklURShTSE9UUExVR19DVExfVEMsIGhvdHBsdWcpOwogfQogCi1zdGF0aWMgdm9p
ZCBpY3BfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0J
CQkgICAgICB1MzIgZGRpX2VuYWJsZV9tYXNrLCB1MzIgdGNfZW5hYmxlX21hc2spCitzdGF0aWMg
dm9pZCBpY3BfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiB7CiAJdTMyIGhvdHBsdWdfaXJxcywgZW5hYmxlZF9pcnFzOwogCkBAIC0zMjEwLDMwICszMjgw
LDI0IEBAIHN0YXRpYyB2b2lkIGljcF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAogCWlieF9kaXNwbGF5X2ludGVycnVwdF91cGRhdGUoZGV2X3ByaXYs
IGhvdHBsdWdfaXJxcywgZW5hYmxlZF9pcnFzKTsKIAotCWljcF9kZGlfaHBkX2RldGVjdGlvbl9z
ZXR1cChkZXZfcHJpdiwgZGRpX2VuYWJsZV9tYXNrKTsKLQlpZiAodGNfZW5hYmxlX21hc2spCi0J
CWljcF90Y19ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCB0Y19lbmFibGVfbWFzayk7CisJ
aWNwX2RkaV9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsKKwlpY3BfdGNfaHBkX2RldGVj
dGlvbl9zZXR1cChkZXZfcHJpdik7CiB9CiAKLS8qCi0gKiBFSEwgZG9lc24ndCBuZWVkIG1vc3Qg
b2YgZ2VuMTFfaHBkX2lycV9zZXR1cCwgaXQncyBoYW5kbGluZyBvbmx5IHRoZQotICogZXF1aXZh
bGVudCBvZiBTREUuCi0gKi8KLXN0YXRpYyB2b2lkIG1jY19ocGRfaXJxX3NldHVwKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB1MzIgZ2VuMTFfaG90cGx1Z19lbmFi
bGVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJCSBlbnVtIGhwZF9waW4gcGlu
KQogewotCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LAotCQkJICBJQ1BfRERJX0hQRF9FTkFC
TEVfTUFTSywgSUNQX1RDX0hQRF9FTkFCTEUoSFBEX1BPUlRfVEMxKSk7Ci19Ci0KLS8qCi0gKiBK
U1AgYmVoYXZlcyBleGFjdGx5IHRoZSBzYW1lIGFzIE1DQyBhYm92ZSBleGNlcHQgdGhhdCBwb3J0
IEMgaXMgbWFwcGVkIHRvCi0gKiB0aGUgRERJLUMgcGlucyBpbnN0ZWFkIG9mIHRoZSBUQzEgcGlu
cy4gIFRoaXMgbWVhbnMgd2Ugc2hvdWxkIGZvbGxvdyBUR1AncwotICogbWFza3MgJiB0YWJsZXMg
cmF0aGVyIHRoYW4gSUNQJ3MgbWFza3MgJiB0YWJsZXMuCi0gKi8KLXN0YXRpYyB2b2lkIGpzcF9o
cGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQlpY3Bf
aHBkX2lycV9zZXR1cChkZXZfcHJpdiwKLQkJCSAgVEdQX0RESV9IUERfRU5BQkxFX01BU0ssIDAp
OworCXN3aXRjaCAocGluKSB7CisJY2FzZSBIUERfUE9SVF9UQzE6CisJY2FzZSBIUERfUE9SVF9U
QzI6CisJY2FzZSBIUERfUE9SVF9UQzM6CisJY2FzZSBIUERfUE9SVF9UQzQ6CisJY2FzZSBIUERf
UE9SVF9UQzU6CisJY2FzZSBIUERfUE9SVF9UQzY6CisJCXJldHVybiBHRU4xMV9IT1RQTFVHX0NU
TF9FTkFCTEUocGluKTsKKwlkZWZhdWx0OgorCQlyZXR1cm4gMDsKKwl9CiB9CiAKIHN0YXRpYyB2
b2lkIGdlbjExX3RjX2hwZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQpAQCAtMzI0MSwxMiArMzMwNSwxMyBAQCBzdGF0aWMgdm9pZCBnZW4xMV90Y19o
cGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1
MzIgaG90cGx1ZzsKIAogCWhvdHBsdWcgPSBJOTE1X1JFQUQoR0VOMTFfVENfSE9UUExVR19DVEwp
OwotCWhvdHBsdWcgfD0gR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDMSkgfAot
CQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BPUlRfVEMyKSB8Ci0JCSAgIEdFTjEx
X0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzMpIHwKLQkJICAgR0VOMTFfSE9UUExVR19D
VExfRU5BQkxFKEhQRF9QT1JUX1RDNCkgfAotCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUo
SFBEX1BPUlRfVEM1KSB8Ci0JCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9U
QzYpOworCWhvdHBsdWcgJj0gfihHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BPUlRfVEMx
KSB8CisJCSAgICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDMikgfAorCQkg
ICAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzMpIHwKKwkJICAgICBHRU4x
MV9IT1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BPUlRfVEM0KSB8CisJCSAgICAgR0VOMTFfSE9UUExV
R19DVExfRU5BQkxFKEhQRF9QT1JUX1RDNSkgfAorCQkgICAgIEdFTjExX0hPVFBMVUdfQ1RMX0VO
QUJMRShIUERfUE9SVF9UQzYpKTsKKwlob3RwbHVnIHw9IGludGVsX2hwZF9ob3RwbHVnX2VuYWJs
ZXMoZGV2X3ByaXYsIGdlbjExX2hvdHBsdWdfZW5hYmxlcyk7CiAJSTkxNV9XUklURShHRU4xMV9U
Q19IT1RQTFVHX0NUTCwgaG90cGx1Zyk7CiB9CiAKQEAgLTMyNTUsMTIgKzMzMjAsMTMgQEAgc3Rh
dGljIHZvaWQgZ2VuMTFfdGJ0X2hwZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCXUzMiBob3RwbHVnOwogCiAJaG90cGx1ZyA9IEk5MTVfUkVBRChH
RU4xMV9UQlRfSE9UUExVR19DVEwpOwotCWhvdHBsdWcgfD0gR0VOMTFfSE9UUExVR19DVExfRU5B
QkxFKEhQRF9QT1JUX1RDMSkgfAotCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BP
UlRfVEMyKSB8Ci0JCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzMpIHwK
LQkJICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDNCkgfAotCQkgICBHRU4x
MV9IT1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BPUlRfVEM1KSB8Ci0JCSAgIEdFTjExX0hPVFBMVUdf
Q1RMX0VOQUJMRShIUERfUE9SVF9UQzYpOworCWhvdHBsdWcgJj0gfihHRU4xMV9IT1RQTFVHX0NU
TF9FTkFCTEUoSFBEX1BPUlRfVEMxKSB8CisJCSAgICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxF
KEhQRF9QT1JUX1RDMikgfAorCQkgICAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9S
VF9UQzMpIHwKKwkJICAgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoSFBEX1BPUlRfVEM0KSB8
CisJCSAgICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKEhQRF9QT1JUX1RDNSkgfAorCQkgICAg
IEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShIUERfUE9SVF9UQzYpKTsKKwlob3RwbHVnIHw9IGlu
dGVsX2hwZF9ob3RwbHVnX2VuYWJsZXMoZGV2X3ByaXYsIGdlbjExX2hvdHBsdWdfZW5hYmxlcyk7
CiAJSTkxNV9XUklURShHRU4xMV9UQlRfSE9UUExVR19DVEwsIGhvdHBsdWcpOwogfQogCkBAIC0z
MjgxLDEyICszMzQ3LDM2IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9pcnFfc2V0dXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWdlbjExX3RjX2hwZF9kZXRlY3Rpb25fc2V0
dXAoZGV2X3ByaXYpOwogCWdlbjExX3RidF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2KTsK
IAotCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX1RHUCkKLQkJaWNwX2hwZF9p
cnFfc2V0dXAoZGV2X3ByaXYsCi0JCQkJICBUR1BfRERJX0hQRF9FTkFCTEVfTUFTSywgVEdQX1RD
X0hQRF9FTkFCTEVfTUFTSyk7Ci0JZWxzZSBpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49
IFBDSF9JQ1ApCi0JCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LAotCQkJCSAgSUNQX0RESV9I
UERfRU5BQkxFX01BU0ssIElDUF9UQ19IUERfRU5BQkxFX01BU0spOworCWlmIChJTlRFTF9QQ0hf
VFlQRShkZXZfcHJpdikgPj0gUENIX0lDUCkKKwkJaWNwX2hwZF9pcnFfc2V0dXAoZGV2X3ByaXYp
OworfQorCitzdGF0aWMgdTMyIHNwdF9ob3RwbHVnX2VuYWJsZXMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCisJCQkgICAgICAgZW51bSBocGRfcGluIHBpbikKK3sKKwlzd2l0Y2ggKHBp
bikgeworCWNhc2UgSFBEX1BPUlRfQToKKwkJcmV0dXJuIFBPUlRBX0hPVFBMVUdfRU5BQkxFOwor
CWNhc2UgSFBEX1BPUlRfQjoKKwkJcmV0dXJuIFBPUlRCX0hPVFBMVUdfRU5BQkxFOworCWNhc2Ug
SFBEX1BPUlRfQzoKKwkJcmV0dXJuIFBPUlRDX0hPVFBMVUdfRU5BQkxFOworCWNhc2UgSFBEX1BP
UlRfRDoKKwkJcmV0dXJuIFBPUlREX0hPVFBMVUdfRU5BQkxFOworCWRlZmF1bHQ6CisJCXJldHVy
biAwOworCX0KK30KKworc3RhdGljIHUzMiBzcHRfaG90cGx1ZzJfZW5hYmxlcyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCQllbnVtIGhwZF9waW4gcGluKQoreworCXN3aXRjaCAo
cGluKSB7CisJY2FzZSBIUERfUE9SVF9FOgorCQlyZXR1cm4gUE9SVEVfSE9UUExVR19FTkFCTEU7
CisJZGVmYXVsdDoKKwkJcmV0dXJuIDA7CisJfQogfQogCiBzdGF0aWMgdm9pZCBzcHRfaHBkX2Rl
dGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0zMzAz
LDE0ICszMzkzLDE2IEBAIHN0YXRpYyB2b2lkIHNwdF9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCS8qIEVuYWJsZSBkaWdpdGFsIGhvdHBs
dWcgb24gdGhlIFBDSCAqLwogCWhvdHBsdWcgPSBJOTE1X1JFQUQoUENIX1BPUlRfSE9UUExVRyk7
Ci0JaG90cGx1ZyB8PSBQT1JUQV9IT1RQTFVHX0VOQUJMRSB8Ci0JCSAgIFBPUlRCX0hPVFBMVUdf
RU5BQkxFIHwKLQkJICAgUE9SVENfSE9UUExVR19FTkFCTEUgfAotCQkgICBQT1JURF9IT1RQTFVH
X0VOQUJMRTsKKwlob3RwbHVnICY9IH4oUE9SVEFfSE9UUExVR19FTkFCTEUgfAorCQkgICAgIFBP
UlRCX0hPVFBMVUdfRU5BQkxFIHwKKwkJICAgICBQT1JUQ19IT1RQTFVHX0VOQUJMRSB8CisJCSAg
ICAgUE9SVERfSE9UUExVR19FTkFCTEUpOworCWhvdHBsdWcgfD0gaW50ZWxfaHBkX2hvdHBsdWdf
ZW5hYmxlcyhkZXZfcHJpdiwgc3B0X2hvdHBsdWdfZW5hYmxlcyk7CiAJSTkxNV9XUklURShQQ0hf
UE9SVF9IT1RQTFVHLCBob3RwbHVnKTsKIAogCWhvdHBsdWcgPSBJOTE1X1JFQUQoUENIX1BPUlRf
SE9UUExVRzIpOwotCWhvdHBsdWcgfD0gUE9SVEVfSE9UUExVR19FTkFCTEU7CisJaG90cGx1ZyAm
PSB+UE9SVEVfSE9UUExVR19FTkFCTEU7CisJaG90cGx1ZyB8PSBpbnRlbF9ocGRfaG90cGx1Z19l
bmFibGVzKGRldl9wcml2LCBzcHRfaG90cGx1ZzJfZW5hYmxlcyk7CiAJSTkxNV9XUklURShQQ0hf
UE9SVF9IT1RQTFVHMiwgaG90cGx1Zyk7CiB9CiAKQEAgLTMzMjksNiArMzQyMSwxOCBAQCBzdGF0
aWMgdm9pZCBzcHRfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJc3B0X2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYpOwogfQogCitzdGF0aWMgdTMy
IGlsa19ob3RwbHVnX2VuYWJsZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJCQkg
ICAgICAgZW51bSBocGRfcGluIHBpbikKK3sKKwlzd2l0Y2ggKHBpbikgeworCWNhc2UgSFBEX1BP
UlRfQToKKwkJcmV0dXJuIERJR0lUQUxfUE9SVEFfSE9UUExVR19FTkFCTEUgfAorCQkJRElHSVRB
TF9QT1JUQV9QVUxTRV9EVVJBVElPTl8ybXM7CisJZGVmYXVsdDoKKwkJcmV0dXJuIDA7CisJfQor
fQorCiBzdGF0aWMgdm9pZCBpbGtfaHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJdTMyIGhvdHBsdWc7CkBAIC0zMzM5LDkgKzM0NDMsOSBA
QCBzdGF0aWMgdm9pZCBpbGtfaHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJICogVGhlIHB1bHNlIGR1cmF0aW9uIGJpdHMgYXJlIHJlc2VydmVk
IG9uIEhTVysuCiAJICovCiAJaG90cGx1ZyA9IEk5MTVfUkVBRChESUdJVEFMX1BPUlRfSE9UUExV
R19DTlRSTCk7Ci0JaG90cGx1ZyAmPSB+RElHSVRBTF9QT1JUQV9QVUxTRV9EVVJBVElPTl9NQVNL
OwotCWhvdHBsdWcgfD0gRElHSVRBTF9QT1JUQV9IT1RQTFVHX0VOQUJMRSB8Ci0JCSAgIERJR0lU
QUxfUE9SVEFfUFVMU0VfRFVSQVRJT05fMm1zOworCWhvdHBsdWcgJj0gfihESUdJVEFMX1BPUlRB
X0hPVFBMVUdfRU5BQkxFIHwKKwkJICAgICBESUdJVEFMX1BPUlRBX1BVTFNFX0RVUkFUSU9OX01B
U0spOworCWhvdHBsdWcgfD0gaW50ZWxfaHBkX2hvdHBsdWdfZW5hYmxlcyhkZXZfcHJpdiwgaWxr
X2hvdHBsdWdfZW5hYmxlcyk7CiAJSTkxNV9XUklURShESUdJVEFMX1BPUlRfSE9UUExVR19DTlRS
TCwgaG90cGx1Zyk7CiB9CiAKQEAgLTMzNjIsMzUgKzM0NjYsNDQgQEAgc3RhdGljIHZvaWQgaWxr
X2hwZF9pcnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlieF9o
cGRfaXJxX3NldHVwKGRldl9wcml2KTsKIH0KIAotc3RhdGljIHZvaWQgYnh0X2hwZF9kZXRlY3Rp
b25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCSAgICB1MzIg
ZW5hYmxlZF9pcnFzKQorc3RhdGljIHUzMiBieHRfaG90cGx1Z19lbmFibGVzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAorCQkJICAgICAgIGVudW0gaHBkX3BpbiBwaW4pCit7CisJdTMy
IGhvdHBsdWc7CisKKwlzd2l0Y2ggKHBpbikgeworCWNhc2UgSFBEX1BPUlRfQToKKwkJaG90cGx1
ZyA9IFBPUlRBX0hPVFBMVUdfRU5BQkxFOworCQlpZiAoaW50ZWxfYmlvc19pc19wb3J0X2hwZF9p
bnZlcnRlZChpOTE1LCBQT1JUX0EpKQorCQkJaG90cGx1ZyB8PSBCWFRfRERJQV9IUERfSU5WRVJU
OworCQlyZXR1cm4gaG90cGx1ZzsKKwljYXNlIEhQRF9QT1JUX0I6CisJCWhvdHBsdWcgPSBQT1JU
Ql9IT1RQTFVHX0VOQUJMRTsKKwkJaWYgKGludGVsX2Jpb3NfaXNfcG9ydF9ocGRfaW52ZXJ0ZWQo
aTkxNSwgUE9SVF9CKSkKKwkJCWhvdHBsdWcgfD0gQlhUX0RESUJfSFBEX0lOVkVSVDsKKwkJcmV0
dXJuIGhvdHBsdWc7CisJY2FzZSBIUERfUE9SVF9DOgorCQlob3RwbHVnID0gUE9SVENfSE9UUExV
R19FTkFCTEU7CisJCWlmIChpbnRlbF9iaW9zX2lzX3BvcnRfaHBkX2ludmVydGVkKGk5MTUsIFBP
UlRfQykpCisJCQlob3RwbHVnIHw9IEJYVF9ERElDX0hQRF9JTlZFUlQ7CisJCXJldHVybiBob3Rw
bHVnOworCWRlZmF1bHQ6CisJCXJldHVybiAwOworCX0KK30KKworc3RhdGljIHZvaWQgYnh0X2hw
ZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewog
CXUzMiBob3RwbHVnOwogCiAJaG90cGx1ZyA9IEk5MTVfUkVBRChQQ0hfUE9SVF9IT1RQTFVHKTsK
LQlob3RwbHVnIHw9IFBPUlRBX0hPVFBMVUdfRU5BQkxFIHwKLQkJICAgUE9SVEJfSE9UUExVR19F
TkFCTEUgfAotCQkgICBQT1JUQ19IT1RQTFVHX0VOQUJMRTsKLQotCWRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLAotCQkgICAgIkludmVydCBiaXQgc2V0dGluZzogaHBfY3RsOiV4IGhwX3BvcnQ6
JXhcbiIsCi0JCSAgICBob3RwbHVnLCBlbmFibGVkX2lycXMpOwotCWhvdHBsdWcgJj0gfkJYVF9E
RElfSFBEX0lOVkVSVF9NQVNLOwotCi0JLyoKLQkgKiBGb3IgQlhUIGludmVydCBiaXQgaGFzIHRv
IGJlIHNldCBiYXNlZCBvbiBBT0IgZGVzaWduCi0JICogZm9yIEhQRCBkZXRlY3Rpb24gbG9naWMs
IHVwZGF0ZSBpdCBiYXNlZCBvbiBWQlQgZmllbGRzLgotCSAqLwotCWlmICgoZW5hYmxlZF9pcnFz
ICYgR0VOOF9ERV9QT1JUX0hPVFBMVUcoSFBEX1BPUlRfQSkpICYmCi0JICAgIGludGVsX2Jpb3Nf
aXNfcG9ydF9ocGRfaW52ZXJ0ZWQoZGV2X3ByaXYsIFBPUlRfQSkpCi0JCWhvdHBsdWcgfD0gQlhU
X0RESUFfSFBEX0lOVkVSVDsKLQlpZiAoKGVuYWJsZWRfaXJxcyAmIEdFTjhfREVfUE9SVF9IT1RQ
TFVHKEhQRF9QT1JUX0IpKSAmJgotCSAgICBpbnRlbF9iaW9zX2lzX3BvcnRfaHBkX2ludmVydGVk
KGRldl9wcml2LCBQT1JUX0IpKQotCQlob3RwbHVnIHw9IEJYVF9ERElCX0hQRF9JTlZFUlQ7Ci0J
aWYgKChlbmFibGVkX2lycXMgJiBHRU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9SVF9DKSkgJiYK
LQkgICAgaW50ZWxfYmlvc19pc19wb3J0X2hwZF9pbnZlcnRlZChkZXZfcHJpdiwgUE9SVF9DKSkK
LQkJaG90cGx1ZyB8PSBCWFRfRERJQ19IUERfSU5WRVJUOwotCisJaG90cGx1ZyAmPSB+KFBPUlRB
X0hPVFBMVUdfRU5BQkxFIHwKKwkJICAgICBQT1JUQl9IT1RQTFVHX0VOQUJMRSB8CisJCSAgICAg
UE9SVENfSE9UUExVR19FTkFCTEUgfAorCQkgICAgIEJYVF9ERElBX0hQRF9JTlZFUlQgfAorCQkg
ICAgIEJYVF9ERElCX0hQRF9JTlZFUlQgfAorCQkgICAgIEJYVF9ERElDX0hQRF9JTlZFUlQpOwor
CWhvdHBsdWcgfD0gaW50ZWxfaHBkX2hvdHBsdWdfZW5hYmxlcyhkZXZfcHJpdiwgYnh0X2hvdHBs
dWdfZW5hYmxlcyk7CiAJSTkxNV9XUklURShQQ0hfUE9SVF9IT1RQTFVHLCBob3RwbHVnKTsKIH0K
IApAQCAtMzQwMyw3ICszNTE2LDcgQEAgc3RhdGljIHZvaWQgYnh0X2hwZF9pcnFfc2V0dXAoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJYmR3X3VwZGF0ZV9wb3J0X2lycShk
ZXZfcHJpdiwgaG90cGx1Z19pcnFzLCBlbmFibGVkX2lycXMpOwogCi0JYnh0X2hwZF9kZXRlY3Rp
b25fc2V0dXAoZGV2X3ByaXYsIGVuYWJsZWRfaXJxcyk7CisJYnh0X2hwZF9kZXRlY3Rpb25fc2V0
dXAoZGV2X3ByaXYpOwogfQogCiBzdGF0aWMgdm9pZCBpYnhfaXJxX3Bvc3RpbnN0YWxsKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKQEAgLTQxMTYsMTEgKzQyMjksNyBAQCB2b2lk
IGludGVsX2lycV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJaWYg
KEk5MTVfSEFTX0hPVFBMVUcoZGV2X3ByaXYpKQogCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2ly
cV9zZXR1cCA9IGk5MTVfaHBkX2lycV9zZXR1cDsKIAl9IGVsc2UgewotCQlpZiAoSEFTX1BDSF9K
U1AoZGV2X3ByaXYpKQotCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGpzcF9o
cGRfaXJxX3NldHVwOwotCQllbHNlIGlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpCi0JCQlkZXZf
cHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gbWNjX2hwZF9pcnFfc2V0dXA7Ci0JCWVsc2Ug
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQogCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGdlbjExX2hwZF9p
cnFfc2V0dXA7CiAJCWVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQogCQkJZGV2X3ByaXYt
PmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGJ4dF9ocGRfaXJxX3NldHVwOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKaW5kZXggZjE1OTE0ZmJlN2MzLi45ZjQ1ZThiMWE0M2QgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaApAQCAtODQ0MiwxOSArODQ0Miw2IEBAIGVudW0gewogI2RlZmluZSBTSFBEX0ZJ
TFRFUl9DTlQJCQkJX01NSU8oMHhjNDAzOCkKICNkZWZpbmUgICBTSFBEX0ZJTFRFUl9DTlRfNTAw
X0FESgkJMHgwMDFEOQogCi0jZGVmaW5lIElDUF9ERElfSFBEX0VOQUJMRV9NQVNLCQkoU0hPVFBM
VUdfQ1RMX0RESV9IUERfRU5BQkxFKEhQRF9QT1JUX0IpIHwgXAotCQkJCQkgU0hPVFBMVUdfQ1RM
X0RESV9IUERfRU5BQkxFKEhQRF9QT1JUX0EpKQotI2RlZmluZSBJQ1BfVENfSFBEX0VOQUJMRV9N
QVNLCQkoSUNQX1RDX0hQRF9FTkFCTEUoSFBEX1BPUlRfVEM0KSB8IFwKLQkJCQkJIElDUF9UQ19I
UERfRU5BQkxFKEhQRF9QT1JUX1RDMykgfCBcCi0JCQkJCSBJQ1BfVENfSFBEX0VOQUJMRShIUERf
UE9SVF9UQzIpIHwgXAotCQkJCQkgSUNQX1RDX0hQRF9FTkFCTEUoSFBEX1BPUlRfVEMxKSkKLSNk
ZWZpbmUgVEdQX0RESV9IUERfRU5BQkxFX01BU0sJCShTSE9UUExVR19DVExfRERJX0hQRF9FTkFC
TEUoSFBEX1BPUlRfQykgfCBcCi0JCQkJCSBTSE9UUExVR19DVExfRERJX0hQRF9FTkFCTEUoSFBE
X1BPUlRfQikgfCBcCi0JCQkJCSBTSE9UUExVR19DVExfRERJX0hQRF9FTkFCTEUoSFBEX1BPUlRf
QSkpCi0jZGVmaW5lIFRHUF9UQ19IUERfRU5BQkxFX01BU0sJCShJQ1BfVENfSFBEX0VOQUJMRShI
UERfUE9SVF9UQzYpIHwgXAotCQkJCQkgSUNQX1RDX0hQRF9FTkFCTEUoSFBEX1BPUlRfVEM1KSB8
IFwKLQkJCQkJIElDUF9UQ19IUERfRU5BQkxFX01BU0spCi0KICNkZWZpbmUgX1BDSF9EUExMX0Eg
ICAgICAgICAgICAgIDB4YzYwMTQKICNkZWZpbmUgX1BDSF9EUExMX0IgICAgICAgICAgICAgIDB4
YzYwMTgKICNkZWZpbmUgUENIX0RQTEwocGxsKSBfTU1JTygocGxsKSA9PSAwID8gX1BDSF9EUExM
X0EgOiBfUENIX0RQTExfQikKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
