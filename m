Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 712E4284FE6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 18:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7860E6E4BA;
	Tue,  6 Oct 2020 16:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5057E6E4BA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 16:32:33 +0000 (UTC)
IronPort-SDR: EDXgelwE5t6ZbrZdUkvsYy3BayIN9fBvnIRiNvJwvMkYtjF+yzMp2xKPqjzHBBSQO5/Jp/Pizq
 2jPaAq1ubvsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161948080"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161948080"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 09:25:51 -0700
IronPort-SDR: rgaMFFt4/frpIEIhEHXRJz1rvvDI45bInm4YvQYe6DhHUupT4XK92xEIX0vUHBg2Pcan0I6B09
 75y0kyoPFmJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="354440785"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 06 Oct 2020 09:25:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 19:25:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 19:25:43 +0300
Message-Id: <20201006162543.2969-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-10-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/20] drm/i915: Introduce
 GEN8_DE_PORT_HOTPLUG()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVu
aWZ5IHRoZSBCRFcvQlhUIGhvdHBsdWcgYml0cy4gQkRXIG9ubHkgaGFzIHBvcnQgQSwgYnV0IHRo
YXQKbWF0Y2hlcyBCWFQgcG9ydCBBIHNvIHdlIGNhbiBzaGFyIHRoZSBzYW1lIG1hY3JvIGZvciBi
b3RoLgoKdjI6IFJlbWVtYmVyIHRoZSBndnQKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Z0L2Rpc3BsYXkuYyB8IDE0ICsrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jICAgIHwgMTggKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgIHwgMTAgKysrKystLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAyMSBp
bnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndnQvZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2Rpc3BsYXku
YwppbmRleCBjMTI0NzM0ZTExNGMuLjViNWM3MWEwYjRhZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Z0L2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQv
ZGlzcGxheS5jCkBAIC0xNzQsMjMgKzE3NCwyMyBAQCBzdGF0aWMgdm9pZCBlbXVsYXRlX21vbml0
b3Jfc3RhdHVzX2NoYW5nZShzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSkKIAogCWlmIChJU19CUk9Y
VE9OKGRldl9wcml2KSkgewogCQl2Z3B1X3ZyZWdfdCh2Z3B1LCBHRU44X0RFX1BPUlRfSVNSKSAm
PQotCQkJfihCWFRfREVfUE9SVF9IUF9EREkoSFBEX1BPUlRfQSkgfAotCQkJICBCWFRfREVfUE9S
VF9IUF9EREkoSFBEX1BPUlRfQikgfAotCQkJICBCWFRfREVfUE9SVF9IUF9EREkoSFBEX1BPUlRf
QykpOworCQkJfihHRU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9SVF9BKSB8CisJCQkgIEdFTjhf
REVfUE9SVF9IT1RQTFVHKEhQRF9QT1JUX0IpIHwKKwkJCSAgR0VOOF9ERV9QT1JUX0hPVFBMVUco
SFBEX1BPUlRfQykpOwogCiAJCWlmIChpbnRlbF92Z3B1X2hhc19tb25pdG9yX29uX3BvcnQodmdw
dSwgUE9SVF9BKSkgewogCQkJdmdwdV92cmVnX3QodmdwdSwgR0VOOF9ERV9QT1JUX0lTUikgfD0K
LQkJCQlCWFRfREVfUE9SVF9IUF9EREkoSFBEX1BPUlRfQSk7CisJCQkJR0VOOF9ERV9QT1JUX0hP
VFBMVUcoSFBEX1BPUlRfQSk7CiAJCX0KIAogCQlpZiAoaW50ZWxfdmdwdV9oYXNfbW9uaXRvcl9v
bl9wb3J0KHZncHUsIFBPUlRfQikpIHsKIAkJCXZncHVfdnJlZ190KHZncHUsIEdFTjhfREVfUE9S
VF9JU1IpIHw9Ci0JCQkJQlhUX0RFX1BPUlRfSFBfRERJKEhQRF9QT1JUX0IpOworCQkJCUdFTjhf
REVfUE9SVF9IT1RQTFVHKEhQRF9QT1JUX0IpOwogCQl9CiAKIAkJaWYgKGludGVsX3ZncHVfaGFz
X21vbml0b3Jfb25fcG9ydCh2Z3B1LCBQT1JUX0MpKSB7CiAJCQl2Z3B1X3ZyZWdfdCh2Z3B1LCBH
RU44X0RFX1BPUlRfSVNSKSB8PQotCQkJCUJYVF9ERV9QT1JUX0hQX0RESShIUERfUE9SVF9DKTsK
KwkJCQlHRU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9SVF9DKTsKIAkJfQogCiAJCXJldHVybjsK
QEAgLTMyOCw3ICszMjgsNyBAQCBzdGF0aWMgdm9pZCBlbXVsYXRlX21vbml0b3Jfc3RhdHVzX2No
YW5nZShzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSkKIAlpZiAoaW50ZWxfdmdwdV9oYXNfbW9uaXRv
cl9vbl9wb3J0KHZncHUsIFBPUlRfQSkpIHsKIAkJaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikp
CiAJCQl2Z3B1X3ZyZWdfdCh2Z3B1LCBHRU44X0RFX1BPUlRfSVNSKSB8PQotCQkJCUdFTjhfUE9S
VF9EUF9BX0hPVFBMVUc7CisJCQkJR0VOOF9ERV9QT1JUX0hPVFBMVUcoSFBEX1BPUlRfQSk7CiAJ
CWVsc2UKIAkJCXZncHVfdnJlZ190KHZncHUsIFNERUlTUikgfD0gU0RFX1BPUlRBX0hPVFBMVUdf
U1BUOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCA5YjkyYjk1ZjdhNmYuLjZiODI0ZGIx
NDI0YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC03MSw3ICs3MSw3IEBAIHN0YXRpYyBj
b25zdCB1MzIgaHBkX2l2YltIUERfTlVNX1BJTlNdID0gewogfTsKIAogc3RhdGljIGNvbnN0IHUz
MiBocGRfYmR3W0hQRF9OVU1fUElOU10gPSB7Ci0JW0hQRF9QT1JUX0FdID0gR0VOOF9QT1JUX0RQ
X0FfSE9UUExVRywKKwlbSFBEX1BPUlRfQV0gPSBHRU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9S
VF9BKSwKIH07CiAKIHN0YXRpYyBjb25zdCB1MzIgaHBkX2lieFtIUERfTlVNX1BJTlNdID0gewpA
QCAtMTI2LDkgKzEyNiw5IEBAIHN0YXRpYyBjb25zdCB1MzIgaHBkX3N0YXR1c19pOTE1W0hQRF9O
VU1fUElOU10gPSB7CiB9OwogCiBzdGF0aWMgY29uc3QgdTMyIGhwZF9ieHRbSFBEX05VTV9QSU5T
XSA9IHsKLQlbSFBEX1BPUlRfQV0gPSBCWFRfREVfUE9SVF9IUF9EREkoSFBEX1BPUlRfQSksCi0J
W0hQRF9QT1JUX0JdID0gQlhUX0RFX1BPUlRfSFBfRERJKEhQRF9QT1JUX0IpLAotCVtIUERfUE9S
VF9DXSA9IEJYVF9ERV9QT1JUX0hQX0RESShIUERfUE9SVF9DKSwKKwlbSFBEX1BPUlRfQV0gPSBH
RU44X0RFX1BPUlRfSE9UUExVRyhIUERfUE9SVF9BKSwKKwlbSFBEX1BPUlRfQl0gPSBHRU44X0RF
X1BPUlRfSE9UUExVRyhIUERfUE9SVF9CKSwKKwlbSFBEX1BPUlRfQ10gPSBHRU44X0RFX1BPUlRf
SE9UUExVRyhIUERfUE9SVF9DKSwKIH07CiAKIHN0YXRpYyBjb25zdCB1MzIgaHBkX2dlbjExW0hQ
RF9OVU1fUElOU10gPSB7CkBAIC0yMzY3LDcgKzIzNjcsNyBAQCBnZW44X2RlX2lycV9oYW5kbGVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCiAJCQkJ
CWZvdW5kID0gdHJ1ZTsKIAkJCQl9CiAJCQl9IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJp
dikpIHsKLQkJCQl0bXBfbWFzayA9IGlpciAmIEdFTjhfUE9SVF9EUF9BX0hPVFBMVUc7CisJCQkJ
dG1wX21hc2sgPSBpaXIgJiBCRFdfREVfUE9SVF9IT1RQTFVHX01BU0s7CiAJCQkJaWYgKHRtcF9t
YXNrKSB7CiAJCQkJCWlsa19ocGRfaXJxX2hhbmRsZXIoZGV2X3ByaXYsIHRtcF9tYXNrKTsKIAkJ
CQkJZm91bmQgPSB0cnVlOwpAQCAtMzM5MSwxMyArMzM5MSwxMyBAQCBzdGF0aWMgdm9pZCBfX2J4
dF9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAkgKiBGb3IgQlhUIGludmVydCBiaXQgaGFzIHRvIGJlIHNldCBiYXNlZCBvbiBBT0IgZGVzaWdu
CiAJICogZm9yIEhQRCBkZXRlY3Rpb24gbG9naWMsIHVwZGF0ZSBpdCBiYXNlZCBvbiBWQlQgZmll
bGRzLgogCSAqLwotCWlmICgoZW5hYmxlZF9pcnFzICYgQlhUX0RFX1BPUlRfSFBfRERJKEhQRF9Q
T1JUX0EpKSAmJgorCWlmICgoZW5hYmxlZF9pcnFzICYgR0VOOF9ERV9QT1JUX0hPVFBMVUcoSFBE
X1BPUlRfQSkpICYmCiAJICAgIGludGVsX2Jpb3NfaXNfcG9ydF9ocGRfaW52ZXJ0ZWQoZGV2X3By
aXYsIFBPUlRfQSkpCiAJCWhvdHBsdWcgfD0gQlhUX0RESUFfSFBEX0lOVkVSVDsKLQlpZiAoKGVu
YWJsZWRfaXJxcyAmIEJYVF9ERV9QT1JUX0hQX0RESShIUERfUE9SVF9CKSkgJiYKKwlpZiAoKGVu
YWJsZWRfaXJxcyAmIEdFTjhfREVfUE9SVF9IT1RQTFVHKEhQRF9QT1JUX0IpKSAmJgogCSAgICBp
bnRlbF9iaW9zX2lzX3BvcnRfaHBkX2ludmVydGVkKGRldl9wcml2LCBQT1JUX0IpKQogCQlob3Rw
bHVnIHw9IEJYVF9ERElCX0hQRF9JTlZFUlQ7Ci0JaWYgKChlbmFibGVkX2lycXMgJiBCWFRfREVf
UE9SVF9IUF9EREkoSFBEX1BPUlRfQykpICYmCisJaWYgKChlbmFibGVkX2lycXMgJiBHRU44X0RF
X1BPUlRfSE9UUExVRyhIUERfUE9SVF9DKSkgJiYKIAkgICAgaW50ZWxfYmlvc19pc19wb3J0X2hw
ZF9pbnZlcnRlZChkZXZfcHJpdiwgUE9SVF9DKSkKIAkJaG90cGx1ZyB8PSBCWFRfRERJQ19IUERf
SU5WRVJUOwogCkBAIC0zNTc0LDcgKzM1NzQsNyBAQCBzdGF0aWMgdm9pZCBnZW44X2RlX2lycV9w
b3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKElTX0dF
TjlfTFAoZGV2X3ByaXYpKQogCQlkZV9wb3J0X2VuYWJsZXMgfD0gQlhUX0RFX1BPUlRfSE9UUExV
R19NQVNLOwogCWVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpCi0JCWRlX3BvcnRfZW5h
YmxlcyB8PSBHRU44X1BPUlRfRFBfQV9IT1RQTFVHOworCQlkZV9wb3J0X2VuYWJsZXMgfD0gQkRX
X0RFX1BPUlRfSE9UUExVR19NQVNLOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
IHsKIAkJZW51bSB0cmFuc2NvZGVyIHRyYW5zOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXgg
NzJmOTNlYzM4YWVhLi45NjkyNjZlNTlmNTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAt
NzgwMSwxMSArNzgwMSwxMSBAQCBlbnVtIHsKICNkZWZpbmUgIEdFTjlfQVVYX0NIQU5ORUxfQgkJ
KDEgPDwgMjUpCiAjZGVmaW5lICBEU0kxX1RFCQkJKDEgPDwgMjQpCiAjZGVmaW5lICBEU0kwX1RF
CQkJKDEgPDwgMjMpCi0jZGVmaW5lICBCWFRfREVfUE9SVF9IUF9EREkoaHBkX3BpbikJUkVHX0JJ
VCgzICsgX0hQRF9QSU5fRERJKGhwZF9waW4pKQotI2RlZmluZSAgQlhUX0RFX1BPUlRfSE9UUExV
R19NQVNLCShCWFRfREVfUE9SVF9IUF9EREkoSFBEX1BPUlRfQSkgfCBcCi0JCQkJCSBCWFRfREVf
UE9SVF9IUF9EREkoSFBEX1BPUlRfQikgfCBcCi0JCQkJCSBCWFRfREVfUE9SVF9IUF9EREkoSFBE
X1BPUlRfQykpCi0jZGVmaW5lICBHRU44X1BPUlRfRFBfQV9IT1RQTFVHCQkoMSA8PCAzKQorI2Rl
ZmluZSAgR0VOOF9ERV9QT1JUX0hPVFBMVUcoaHBkX3BpbikJUkVHX0JJVCgzICsgX0hQRF9QSU5f
RERJKGhwZF9waW4pKQorI2RlZmluZSAgQlhUX0RFX1BPUlRfSE9UUExVR19NQVNLCShHRU44X0RF
X1BPUlRfSE9UUExVRyhIUERfUE9SVF9BKSB8IFwKKwkJCQkJIEdFTjhfREVfUE9SVF9IT1RQTFVH
KEhQRF9QT1JUX0IpIHwgXAorCQkJCQkgR0VOOF9ERV9QT1JUX0hPVFBMVUcoSFBEX1BPUlRfQykp
CisjZGVmaW5lICBCRFdfREVfUE9SVF9IT1RQTFVHX01BU0sJR0VOOF9ERV9QT1JUX0hPVFBMVUco
SFBEX1BPUlRfQSkKICNkZWZpbmUgIEJYVF9ERV9QT1JUX0dNQlVTCQkoMSA8PCAxKQogI2RlZmlu
ZSAgR0VOOF9BVVhfQ0hBTk5FTF9BCQkoMSA8PCAwKQogI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVY
X1VTQkM2CQkoMSA8PCAxMykKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
