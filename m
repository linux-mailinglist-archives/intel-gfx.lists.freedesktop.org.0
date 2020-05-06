Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7C81C6F3B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 13:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50846E85E;
	Wed,  6 May 2020 11:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEE16E85D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 11:23:41 +0000 (UTC)
IronPort-SDR: OGc70uGbeDZ++1/iFRdrRC23Y2V69WGJdHaVbjsrNpoPWf+FVkhbXFq+Ookg5VNm7XnU07u0py
 OPBJVxmgGdAg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:23:34 -0700
IronPort-SDR: F2CXaYqvw9D+LM2k5xyVOMs39Fo3r+WpyjFwMbGCc1MGDcjtdH9tT0Awgdm/wCIZeMMzK6Y5N8
 dVGhwFRkV/RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="369767771"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 06 May 2020 04:23:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 14:23:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 14:23:20 +0300
Message-Id: <20200506112328.16562-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
References: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Fix cpt/ppt max pre-emphasis
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNw
dC9wcHQgc3VwcG9ydCBwcmUtZW1waGFzaXMgbGV2ZWwgMy4gTGV0J3MgYWN0dWFsbHkgZGVjbGFy
ZQpzdXBwb3J0IGZvciBpdCwgaW5zdGVhZCBvZiBjbGFtcGluZyB0aGluZ3MgdG8gbGV2ZWwgMi4K
CkFsc28gdHdlYWsgdGhlIGlmLWxhZGRlciBpbiBpbnRlbF9kcF92b2x0YWdlX21heCgpIHRvIG1h
dGNoCmludGVsX2RwX3ByZV9lbXBoYXNpc19tYXgoKSB0byBtYWtlIGl0IGVhc2llciB0byBjb21w
YXJlIHRoZW0uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDY5
NTJiMDI5NTA5Ni4uODY4MDEzM2VmNjA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCkBAIC0zOTU3LDEyICszOTU3LDExIEBAIGludGVsX2RwX3ZvbHRhZ2VfbWF4KHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAKIAlpZiAoSEFTX0RESShkZXZfcHJpdikpCiAJCXJl
dHVybiBpbnRlbF9kZGlfZHBfdm9sdGFnZV9tYXgoZW5jb2Rlcik7Ci0JZWxzZSBpZiAoSVNfVkFM
TEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCisJZWxzZSBpZiAo
SVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgfHwKKwkJ
IChIQVNfUENIX0NQVChkZXZfcHJpdikgJiYgcG9ydCAhPSBQT1JUX0EpKQogCQlyZXR1cm4gRFBf
VFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8zOwogCWVsc2UgaWYgKElTX0lWWUJSSURHRShkZXZf
cHJpdikgJiYgcG9ydCA9PSBQT1JUX0EpCiAJCXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5H
X0xFVkVMXzI7Ci0JZWxzZSBpZiAoSEFTX1BDSF9DUFQoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9S
VF9BKQotCQlyZXR1cm4gRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8zOwogCWVsc2UKIAkJ
cmV0dXJuIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMjsKIH0KQEAgLTM5NzYsNyArMzk3
NSw4IEBAIGludGVsX2RwX3ByZV9lbXBoYXNpc19tYXgoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwgdTggdm9sdGFnZV9zd2luZykKIAogCWlmIChIQVNfRERJKGRldl9wcml2KSkgewogCQlyZXR1
cm4gaW50ZWxfZGRpX2RwX3ByZV9lbXBoYXNpc19tYXgoZW5jb2Rlciwgdm9sdGFnZV9zd2luZyk7
Ci0JfSBlbHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRl
dl9wcml2KSkgeworCX0gZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hF
UlJZVklFVyhkZXZfcHJpdikgfHwKKwkJICAgKEhBU19QQ0hfQ1BUKGRldl9wcml2KSAmJiBwb3J0
ICE9IFBPUlRfQSkpIHsKIAkJc3dpdGNoICh2b2x0YWdlX3N3aW5nICYgRFBfVFJBSU5fVk9MVEFH
RV9TV0lOR19NQVNLKSB7CiAJCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8wOgog
CQkJcmV0dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzM7Ci0tIAoyLjI0LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
