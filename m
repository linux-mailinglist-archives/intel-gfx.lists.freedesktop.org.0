Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 428D412514
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 01:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E7E89458;
	Thu,  2 May 2019 23:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B802C893EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 23:27:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 16:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="147715171"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 16:27:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 02:26:44 +0300
Message-Id: <20190502232648.4450-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Remove the unneeded AUX power
 ref from intel_dp_detect()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZG9uJ3QgbmVlZCB0aGUgQVVYIHBvd2VyIGZvciB0aGUgd2hvbGUgZHVyYXRpb24gb2YgdGhl
IGRldGVjdCwgb25seQp3aGVuIHdlJ3JlIGRvaW5nIEFVWCB0cmFuc2ZlcnMuIFRoZSBBVVggdHJh
bnNmZXIgZnVuY3Rpb24gdGFrZXMgaXRzIG93bgpyZWZlcmVuY2Ugb24gdGhlIEFVWCBwb3dlciBk
b21haW4gYWxyZWFkeS4gVGhlIHR3byBwbGFjZXMgZHVyaW5nIGRldGVjdAp3aGljaCBhY2Nlc3Mg
ZGlzcGxheSBjb3JlIHJlZ2lzdGVycyAobm90IHNwZWNpZmljIHRvIGEKcGlwZS9wb3J0L3RyYW5z
Y29kZXIpIG9ubHkgbmVlZCB0aGUgcG93ZXIgZG9tYWluIHRoYXQgaXMgcmVxdWlyZWQgZm9yCnRo
YXQgYWNjZXNzLiBUaGF0IHBvd2VyIGRvbWFpbiBpcyBlcXVpdmFsZW50IHRvIHRoZSBkZXZpY2Ug
Z2xvYmFsIHBvd2VyCmRvbWFpbiBvbiBtb3N0IHBsYXRmb3JtcyAoZW5hYmxlZCB3aGVuZXZlciB3
ZSBob2xkIGEgcnVudGltZSBQTQpyZWZlcmVuY2UpIGV4Y2VwdCBvbiBDSFYvVkxWIHdoZXJlIGl0
J3MgZXF1aXZhbGVudCB0byB0aGUgZGlzcGxheSBwb3dlcgp3ZWxsLgoKQWRkIGEgbmV3IHBvd2Vy
IGRvbWFpbiB0aGF0IHJlZmxlY3RzIHRoZSBhYm92ZSwgYW5kIHVzZSB0aGlzIGF0IHRoZSB0d28K
c3BvdHMgYWNjZXNzaW5nIHJlZ2lzdGVycy4gV2l0aCB0aGF0IHdlIGNhbiBhdm9pZCB0YWtpbmcg
dGhlIEFVWApyZWZlcmVuY2UgZm9yIHRoZSB3aG9sZSBkdXJhdGlvbiBvZiB0aGUgZGV0ZWN0IGZ1
bmN0aW9uLgoKUHV0IHRoZSBkb21haW5zIGFzeW5jaHJvbm91c2x5IHRvIGF2b2lkIHRoZSB1bm5l
ZWRlZCBvbi1vZmYtb24gdG9nZ2xpbmcuCgpDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmggICAgfCAg
MSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jICAgICAgICAgfCAzMiArKysrKysr
KysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3Bt
LmMgfCAgNCArKysrCiAzIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaAppbmRleCAyMjIwNTg4ZTg2
YWMuLmZkNjJhNmY0MGQyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaApAQCAt
MjE4LDYgKzIxOCw3IEBAIGVudW0gYXV4X2NoIHsKICNkZWZpbmUgYXV4X2NoX25hbWUoYSkgKChh
KSArICdBJykKIAogZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiB7CisJUE9XRVJfRE9N
QUlOX0RJU1BMQVlfQ09SRSwKIAlQT1dFUl9ET01BSU5fUElQRV9BLAogCVBPV0VSX0RPTUFJTl9Q
SVBFX0IsCiAJUE9XRVJfRE9NQUlOX1BJUEVfQywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCmluZGV4
IDE4NjUyODZlYWNhZS4uZmVlMWYyOTFhYmE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKQEAg
LTIxNCwxNSArMjE0LDIxIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X2ZpYV9zdXBwb3J0ZWRf
bGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5k
ZXYpOwogCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwg
ZGlnX3BvcnQtPmJhc2UucG9ydCk7CisJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJdTMyIGxh
bmVfaW5mbzsKIAogCWlmICh0Y19wb3J0ID09IFBPUlRfVENfTk9ORSB8fCBkaWdfcG9ydC0+dGNf
dHlwZSAhPSBUQ19QT1JUX1RZUEVDKQogCQlyZXR1cm4gNDsKIAorCXdha2VyZWYgPSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSk7CisK
IAlsYW5lX2luZm8gPSAoSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFNQKSAmCiAJCSAgICAgRFBf
TEFORV9BU1NJR05NRU5UX01BU0sodGNfcG9ydCkpID4+CiAJCSAgICBEUF9MQU5FX0FTU0lHTk1F
TlRfU0hJRlQodGNfcG9ydCk7CiAKKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYyhkZXZf
cHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwKKwkJCQkgICAgICB3YWtlcmVmKTsKKwog
CXN3aXRjaCAobGFuZV9pbmZvKSB7CiAJZGVmYXVsdDoKIAkJTUlTU0lOR19DQVNFKGxhbmVfaW5m
byk7CkBAIC01MjkyLDcgKzUyOTgsNyBAQCBzdGF0aWMgYm9vbCBpY2xfZGlnaXRhbF9wb3J0X2Nv
bm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKICAqCiAgKiBSZXR1cm4gJXRy
dWUgaWYgcG9ydCBpcyBjb25uZWN0ZWQsICVmYWxzZSBvdGhlcndpc2UuCiAgKi8KLWJvb2wgaW50
ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikK
K3N0YXRpYyBib29sIF9faW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIApAQCAtNTMyMiw2ICs1MzI4LDIwIEBAIGJv
b2wgaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlcikKIAlyZXR1cm4gZmFsc2U7CiB9CiAKK2Jvb2wgaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5l
Y3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwlpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKKwlib29sIHJlczsKKworCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5
X3Bvd2VyX2dldChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSk7CisJcmVzID0g
X19pbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpOworCWludGVsX2Rpc3BsYXlf
cG93ZXJfcHV0X2FzeW5jKGRldl9wcml2LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLAorCQkJ
CSAgICAgIHdha2VyZWYpOworCisJcmV0dXJuIHJlczsKK30KKwogc3RhdGljIHN0cnVjdCBlZGlk
ICoKIGludGVsX2RwX2dldF9lZGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CkBAIC01
Mzc1LDE2ICs1Mzk1LDExIEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9f
ZGlnX3BvcnQoaW50ZWxfZHApOwogCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRp
Z19wb3J0LT5iYXNlOwogCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgc3RhdHVzOwotCWVudW0g
aW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gYXV4X2RvbWFpbiA9Ci0JCWludGVsX2F1eF9wb3dl
cl9kb21haW4oZGlnX3BvcnQpOwotCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCiAJRFJNX0RF
QlVHX0tNUygiW0NPTk5FQ1RPUjolZDolc11cbiIsCiAJCSAgICAgIGNvbm5lY3Rvci0+YmFzZS5p
ZCwgY29ubmVjdG9yLT5uYW1lKTsKIAlXQVJOX09OKCFkcm1fbW9kZXNldF9pc19sb2NrZWQoJmRl
dl9wcml2LT5kcm0ubW9kZV9jb25maWcuY29ubmVjdGlvbl9tdXRleCkpOwogCi0Jd2FrZXJlZiA9
IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9wcml2LCBhdXhfZG9tYWluKTsKLQogCS8qIENh
bid0IGRpc2Nvbm5lY3QgZURQICovCiAJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCiAJ
CXN0YXR1cyA9IGVkcF9kZXRlY3QoaW50ZWxfZHApOwpAQCAtNTQ0OCwxMCArNTQ2Myw4IEBAIGlu
dGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQlpbnQgcmV0
OwogCiAJCXJldCA9IGludGVsX2RwX3JldHJhaW5fbGluayhlbmNvZGVyLCBjdHgpOwotCQlpZiAo
cmV0KSB7Ci0JCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChkZXZfcHJpdiwgYXV4X2RvbWFpbiwg
d2FrZXJlZik7CisJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwotCQl9CiAJfQogCiAJLyoKQEAg
LTU0NzMsNyArNTQ4Niw2IEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAogCWlmIChzdGF0dXMgIT0gY29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQgJiYg
IWludGVsX2RwLT5pc19tc3QpCiAJCWludGVsX2RwX3Vuc2V0X2VkaWQoaW50ZWxfZHApOwogCi0J
aW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3ByaXYsIGF1eF9kb21haW4sIHdha2VyZWYpOwog
CXJldHVybiBzdGF0dXM7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3J1bnRpbWVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0u
YwppbmRleCBiYzA2OTNlMzYxNGUuLjMxYWM1ZWJiMzJkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3J1bnRpbWVfcG0uYwpAQCAtMzczLDYgKzM3Myw4IEBAIGNvbnN0IGNoYXIgKgogaW50
ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21h
aW4gZG9tYWluKQogewogCXN3aXRjaCAoZG9tYWluKSB7CisJY2FzZSBQT1dFUl9ET01BSU5fRElT
UExBWV9DT1JFOgorCQlyZXR1cm4gIkRJU1BMQVlfQ09SRSI7CiAJY2FzZSBQT1dFUl9ET01BSU5f
UElQRV9BOgogCQlyZXR1cm4gIlBJUEVfQSI7CiAJY2FzZSBQT1dFUl9ET01BSU5fUElQRV9COgpA
QCAtMjMxMyw2ICsyMzE1LDcgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJQklUX1VMTChQT1dFUl9ET01BSU5fSU5JVCkp
CiAKICNkZWZpbmUgVkxWX0RJU1BMQVlfUE9XRVJfRE9NQUlOUyAoCQlcCisJQklUX1VMTChQT1dF
Ul9ET01BSU5fRElTUExBWV9DT1JFKSB8CVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0Ep
IHwJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0IpIHwJCVwKIAlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9QSVBFX0FfUEFORUxfRklUVEVSKSB8CVwKQEAgLTIzNTksNiArMjM2Miw3IEBAIHZv
aWQgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQogCiAjZGVmaW5lIENIVl9ESVNQTEFZ
X1BPV0VSX0RPTUFJTlMgKAkJXAorCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSkg
fAlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9BKSB8CQlcCiAJQklUX1VMTChQT1dFUl9E
T01BSU5fUElQRV9CKSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9DKSB8CQlcCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
