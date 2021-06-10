Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766773A332E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60016EDD8;
	Thu, 10 Jun 2021 18:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE616EDD5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:33:01 +0000 (UTC)
IronPort-SDR: nFUblkq/t7zgr6p0Uv83HBK/zmaljXmFN1zBc6ijaonFMowSBm1ojIcO0B8lO6iGzvBdmPpQhP
 kZGjsD/S/a2w==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="290999686"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="290999686"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:33:00 -0700
IronPort-SDR: AIvmtQ6QIqyLm4PdwBvVWIuX0Fw9oLq4LrEqUXJDzhhc2ivbfs6hlrjbnTF1XPYA3D53JWy0L2
 qS2rPufPH6lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="482955241"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 10 Jun 2021 11:32:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:32:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:34 +0300
Message-Id: <20210610183237.3920-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/fbc: Introduce g4x_dpfc_ctl_limit()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
Y3RyYWN0IHRoZSBsaW1pdC0+cmVnaXN0ZXIgdmFsdWUgY29udmVyc2lvbiBpbnRvIGEgY29tbW9u
CmhlbHBlci4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyB8IDU4ICsrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGlu
c2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jCmluZGV4IDFjMjIwY2VhODk3Ny4uMzFhYzExNjNmNTViIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTE0OCwxNiArMTQ4LDM1IEBAIHN0
YXRpYyBib29sIGk4eHhfZmJjX2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJcmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEZCQ19DT05UUk9MKSAmIEZC
Q19DVExfRU47CiB9CiAKK3N0YXRpYyB1MzIgZzR4X2RwZmNfY3RsX2xpbWl0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQoreworCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFt
cyAqcGFyYW1zID0gJmk5MTUtPmZiYy5wYXJhbXM7CisJaW50IGxpbWl0ID0gaTkxNS0+ZmJjLmxp
bWl0OworCisJaWYgKHBhcmFtcy0+ZmIuZm9ybWF0LT5jcHBbMF0gPT0gMikKKwkJbGltaXQgPDw9
IDE7CisKKwlzd2l0Y2ggKGxpbWl0KSB7CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKGxpbWl0
KTsKKwkJZmFsbHRocm91Z2g7CisJY2FzZSAxOgorCQlyZXR1cm4gRFBGQ19DVExfTElNSVRfMVg7
CisJY2FzZSAyOgorCQlyZXR1cm4gRFBGQ19DVExfTElNSVRfMlg7CisJY2FzZSA0OgorCQlyZXR1
cm4gRFBGQ19DVExfTElNSVRfNFg7CisJfQorfQorCiBzdGF0aWMgdm9pZCBnNHhfZmJjX2FjdGl2
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3QgaW50ZWxf
ZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZkZXZfcHJpdi0+ZmJjLnBhcmFtczsKIAl1MzIgZHBm
Y19jdGw7CiAKIAlkcGZjX2N0bCA9IERQRkNfQ1RMX1BMQU5FKHBhcmFtcy0+Y3J0Yy5pOXh4X3Bs
YW5lKSB8IERQRkNfU1JfRU47Ci0JaWYgKHBhcmFtcy0+ZmIuZm9ybWF0LT5jcHBbMF0gPT0gMikK
LQkJZHBmY19jdGwgfD0gRFBGQ19DVExfTElNSVRfMlg7Ci0JZWxzZQotCQlkcGZjX2N0bCB8PSBE
UEZDX0NUTF9MSU1JVF8xWDsKKworCWRwZmNfY3RsIHw9IGc0eF9kcGZjX2N0bF9saW1pdChkZXZf
cHJpdik7CiAKIAlpZiAocGFyYW1zLT5mZW5jZV9pZCA+PSAwKSB7CiAJCWRwZmNfY3RsIHw9IERQ
RkNfQ1RMX0ZFTkNFX0VOIHwgcGFyYW1zLT5mZW5jZV9pZDsKQEAgLTIzNSwyMyArMjU0LDEwIEBA
IHN0YXRpYyB2b2lkIGlsa19mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogewogCXN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAqcGFyYW1zID0gJmRldl9w
cml2LT5mYmMucGFyYW1zOwogCXUzMiBkcGZjX2N0bDsKLQlpbnQgbGltaXQgPSBkZXZfcHJpdi0+
ZmJjLmxpbWl0OwogCiAJZHBmY19jdGwgPSBEUEZDX0NUTF9QTEFORShwYXJhbXMtPmNydGMuaTl4
eF9wbGFuZSk7Ci0JaWYgKHBhcmFtcy0+ZmIuZm9ybWF0LT5jcHBbMF0gPT0gMikKLQkJbGltaXQg
PDw9IDE7CiAKLQlzd2l0Y2ggKGxpbWl0KSB7Ci0JY2FzZSA0OgotCQlkcGZjX2N0bCB8PSBEUEZD
X0NUTF9MSU1JVF80WDsKLQkJYnJlYWs7Ci0JY2FzZSAyOgotCQlkcGZjX2N0bCB8PSBEUEZDX0NU
TF9MSU1JVF8yWDsKLQkJYnJlYWs7Ci0JY2FzZSAxOgotCQlkcGZjX2N0bCB8PSBEUEZDX0NUTF9M
SU1JVF8xWDsKLQkJYnJlYWs7Ci0JfQorCWRwZmNfY3RsIHw9IGc0eF9kcGZjX2N0bF9saW1pdChk
ZXZfcHJpdik7CiAKIAlpZiAocGFyYW1zLT5mZW5jZV9pZCA+PSAwKSB7CiAJCWRwZmNfY3RsIHw9
IERQRkNfQ1RMX0ZFTkNFX0VOOwpAQCAtMjk5LDcgKzMwNSw2IEBAIHN0YXRpYyB2b2lkIGdlbjdf
ZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1
Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZkZXZfcHJpdi0+ZmJjLnBhcmFtczsK
IAl1MzIgZHBmY19jdGw7Ci0JaW50IGxpbWl0ID0gZGV2X3ByaXYtPmZiYy5saW1pdDsKIAogCS8q
IERpc3BsYXkgV0EgIzA1Mjk6IHNrbCwga2JsLCBieHQuICovCiAJaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA9PSA5KSB7CkBAIC0zMTcsMjAgKzMyMiw3IEBAIHN0YXRpYyB2b2lkIGdlbjdfZmJj
X2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoSVNfSVZZ
QlJJREdFKGRldl9wcml2KSkKIAkJZHBmY19jdGwgfD0gSVZCX0RQRkNfQ1RMX1BMQU5FKHBhcmFt
cy0+Y3J0Yy5pOXh4X3BsYW5lKTsKIAotCWlmIChwYXJhbXMtPmZiLmZvcm1hdC0+Y3BwWzBdID09
IDIpCi0JCWxpbWl0IDw8PSAxOwotCi0Jc3dpdGNoIChsaW1pdCkgewotCWNhc2UgNDoKLQkJZHBm
Y19jdGwgfD0gRFBGQ19DVExfTElNSVRfNFg7Ci0JCWJyZWFrOwotCWNhc2UgMjoKLQkJZHBmY19j
dGwgfD0gRFBGQ19DVExfTElNSVRfMlg7Ci0JCWJyZWFrOwotCWNhc2UgMToKLQkJZHBmY19jdGwg
fD0gRFBGQ19DVExfTElNSVRfMVg7Ci0JCWJyZWFrOwotCX0KKwlkcGZjX2N0bCB8PSBnNHhfZHBm
Y19jdGxfbGltaXQoZGV2X3ByaXYpOwogCiAJaWYgKHBhcmFtcy0+ZmVuY2VfaWQgPj0gMCkgewog
CQlkcGZjX2N0bCB8PSBJVkJfRFBGQ19DVExfRkVOQ0VfRU47Ci0tIAoyLjMxLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
