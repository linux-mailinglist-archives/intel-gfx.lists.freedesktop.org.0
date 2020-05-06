Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1C71C6F38
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 13:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2096E85C;
	Wed,  6 May 2020 11:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1EA76E85C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 11:23:36 +0000 (UTC)
IronPort-SDR: Vx+s86q0xFsSnCsl3OS8/V2toQGGm9dut+SRdlQ66BbyTzkSeKoDrzx2UP2t9dnfGbUK1lNTqj
 00U3F3K7hp9w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:23:36 -0700
IronPort-SDR: 0Xj736Jd/DkAgcchoD/RUYihQoYTqO24FRm3EB6JwPioQQ6h5VNYQOmiR2mijhyc2b7ixA8XnP
 aLg5J0axGdLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="251177246"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 06 May 2020 04:23:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 14:23:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 14:23:21 +0300
Message-Id: <20200506112328.16562-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
References: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Fix ibx max vswing/preemph
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklC
WCBzdXBwb3J0cyB2c3dpbmcgbGV2ZWwgMyBhbmQgcHJlLWVtcGhhc2lzIGxldmVsIDMuIERvbid0
CmxpbWl0IGl0IHRvIGxldmVsIDIgZm9yIHRob3NlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCmluZGV4IDg2ODAxMzNlZjYwNy4uOTFmMjZmN2I3NThiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0zOTU4LDcgKzM5NTgsNyBAQCBpbnRlbF9k
cF92b2x0YWdlX21heChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWlmIChIQVNfRERJKGRl
dl9wcml2KSkKIAkJcmV0dXJuIGludGVsX2RkaV9kcF92b2x0YWdlX21heChlbmNvZGVyKTsKIAll
bHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2
KSB8fAotCQkgKEhBU19QQ0hfQ1BUKGRldl9wcml2KSAmJiBwb3J0ICE9IFBPUlRfQSkpCisJCSAo
SEFTX1BDSF9TUExJVChkZXZfcHJpdikgJiYgcG9ydCAhPSBQT1JUX0EpKQogCQlyZXR1cm4gRFBf
VFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8zOwogCWVsc2UgaWYgKElTX0lWWUJSSURHRShkZXZf
cHJpdikgJiYgcG9ydCA9PSBQT1JUX0EpCiAJCXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5H
X0xFVkVMXzI7CkBAIC0zOTc2LDcgKzM5NzYsNyBAQCBpbnRlbF9kcF9wcmVfZW1waGFzaXNfbWF4
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHU4IHZvbHRhZ2Vfc3dpbmcpCiAJaWYgKEhBU19E
REkoZGV2X3ByaXYpKSB7CiAJCXJldHVybiBpbnRlbF9kZGlfZHBfcHJlX2VtcGhhc2lzX21heChl
bmNvZGVyLCB2b2x0YWdlX3N3aW5nKTsKIAl9IGVsc2UgaWYgKElTX1ZBTExFWVZJRVcoZGV2X3By
aXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpIHx8Ci0JCSAgIChIQVNfUENIX0NQVChkZXZf
cHJpdikgJiYgcG9ydCAhPSBQT1JUX0EpKSB7CisJCSAgIChIQVNfUENIX1NQTElUKGRldl9wcml2
KSAmJiBwb3J0ICE9IFBPUlRfQSkpIHsKIAkJc3dpdGNoICh2b2x0YWdlX3N3aW5nICYgRFBfVFJB
SU5fVk9MVEFHRV9TV0lOR19NQVNLKSB7CiAJCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19M
RVZFTF8wOgogCQkJcmV0dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzM7Ci0tIAoyLjI0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
