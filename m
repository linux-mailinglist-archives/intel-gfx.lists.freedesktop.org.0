Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA16FF4DA0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 14:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F496F9A1;
	Fri,  8 Nov 2019 13:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B0E6F99F;
 Fri,  8 Nov 2019 13:56:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 05:56:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="201700045"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 08 Nov 2019 05:56:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Nov 2019 15:56:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 15:56:54 +0200
Message-Id: <20191108135654.12907-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191107151725.10507-2-ville.syrjala@linux.intel.com>
References: <20191107151725.10507-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/12] drm: Inline drm_color_lut_extract()
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
Cc: dri-devel@lists.freedesktop.org,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
aXMgdGhpbmcgY2FuIGdldCBjYWxsZWQgc2V2ZXJhbCB0aG91c2FuZCB0aW1lcyBwZXIgTFVUCnNv
IHNlZW1zIGxpa2Ugd2Ugd2FudCB0byBpbmxpbmUgaXQgdG86Ci0gYXZvaWQgdGhlIGZ1bmN0aW9u
IGNhbGwgb3ZlcmhlYWQKLSBhbGxvdyBjb25zdGFudCBmb2xkaW5nCgpBIHF1aWNrIHN5bnRoZXRp
YyB0ZXN0ICh3L28gYW55IGhhcmR3YXJlIGludGVyYWN0aW9uKSB3aXRoCmEgcmlkaWN1bG91c2x5
IGxhcmdlIExVVCBzaXplIHNob3dzIGFib3V0IDUwJSByZWR1Y3Rpb24gaW4KcnVudGltZSBvbiBt
eSBIU1cgYW5kIEJTVyBib3hlcy4gU2xpZ2h0bHkgbGVzcyB3aXRoIG1vcmUKcmVhc29uYWJsZSBM
VVQgc2l6ZSBidXQgc3RpbGwgZWFzaWx5IG1lYXN1cmFibGUgaW4gdGVucwpvZiBtaWNyb3NlY29u
ZHMuCgp2MjogSW5jbHVkZSBkcm1fY29sb3JfbWdtdC5oIGluIHRoZSAucnN0IChEYW5pZWwpCgpD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTmlj
aG9sYXMgS2F6bGF1c2thcyA8bmljaG9sYXMua2F6bGF1c2thc0BhbWQuY29tPgotLS0KIERvY3Vt
ZW50YXRpb24vZ3B1L2RybS1rbXMucnN0ICAgIHwgIDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vZHJt
X2NvbG9yX21nbXQuYyB8IDI0IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogaW5jbHVkZS9kcm0v
ZHJtX2NvbG9yX21nbXQuaCAgICAgfCAyMyArKysrKysrKysrKysrKysrKysrKysrLQogMyBmaWxl
cyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2dwdS9kcm0ta21zLnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2RybS1r
bXMucnN0CmluZGV4IDIzYTNjOTg2ZWY2ZC4uYzY4NTg4Y2U0MDkwIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2dwdS9kcm0ta21zLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9kcm0ta21z
LnJzdApAQCAtNDc5LDYgKzQ3OSw5IEBAIENvbG9yIE1hbmFnZW1lbnQgUHJvcGVydGllcwogLi4g
a2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9kcm1fY29sb3JfbWdtdC5jCiAgICA6ZXhwb3J0
OgogCisuLiBrZXJuZWwtZG9jOjogaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaAorICAgOmlu
dGVybmFsOgorCiBUaWxlIEdyb3VwIFByb3BlcnR5CiAtLS0tLS0tLS0tLS0tLS0tLS0tCiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29sb3JfbWdtdC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9jb2xvcl9tZ210LmMKaW5kZXggNGNlNWM2ZDhkZTk5Li4xOWM1ZjYzNTk5MmEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29sb3JfbWdtdC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fY29sb3JfbWdtdC5jCkBAIC0xMDgsMzAgKzEwOCw2IEBACiAgKiAJc3RhbmRh
cmQgZW51bSB2YWx1ZXMgc3VwcG9ydGVkIGJ5IHRoZSBEUk0gcGxhbmUuCiAgKi8KIAotLyoqCi0g
KiBkcm1fY29sb3JfbHV0X2V4dHJhY3QgLSBjbGFtcCBhbmQgcm91bmQgTFVUIGVudHJpZXMKLSAq
IEB1c2VyX2lucHV0OiBpbnB1dCB2YWx1ZQotICogQGJpdF9wcmVjaXNpb246IG51bWJlciBvZiBi
aXRzIHRoZSBodyBMVVQgc3VwcG9ydHMKLSAqCi0gKiBFeHRyYWN0IGEgZGVnYW1tYS9nYW1tYSBM
VVQgdmFsdWUgcHJvdmlkZWQgYnkgdXNlciAoaW4gdGhlIGZvcm0gb2YKLSAqICZkcm1fY29sb3Jf
bHV0IGVudHJpZXMpIGFuZCByb3VuZCBpdCB0byB0aGUgcHJlY2lzaW9uIHN1cHBvcnRlZCBieSB0
aGUKLSAqIGhhcmR3YXJlLgotICovCi11aW50MzJfdCBkcm1fY29sb3JfbHV0X2V4dHJhY3QodWlu
dDMyX3QgdXNlcl9pbnB1dCwgdWludDMyX3QgYml0X3ByZWNpc2lvbikKLXsKLQl1aW50MzJfdCB2
YWwgPSB1c2VyX2lucHV0OwotCXVpbnQzMl90IG1heCA9IDB4ZmZmZiA+PiAoMTYgLSBiaXRfcHJl
Y2lzaW9uKTsKLQotCS8qIFJvdW5kIG9ubHkgaWYgd2UncmUgbm90IHVzaW5nIGZ1bGwgcHJlY2lz
aW9uLiAqLwotCWlmIChiaXRfcHJlY2lzaW9uIDwgMTYpIHsKLQkJdmFsICs9IDFVTCA8PCAoMTYg
LSBiaXRfcHJlY2lzaW9uIC0gMSk7Ci0JCXZhbCA+Pj0gMTYgLSBiaXRfcHJlY2lzaW9uOwotCX0K
LQotCXJldHVybiBjbGFtcF92YWwodmFsLCAwLCBtYXgpOwotfQotRVhQT1JUX1NZTUJPTChkcm1f
Y29sb3JfbHV0X2V4dHJhY3QpOwotCiAvKioKICAqIGRybV9jcnRjX2VuYWJsZV9jb2xvcl9tZ210
IC0gZW5hYmxlIGNvbG9yIG1hbmFnZW1lbnQgcHJvcGVydGllcwogICogQGNydGM6IERSTSBDUlRD
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29sb3JfbWdtdC5oIGIvaW5jbHVkZS9kcm0v
ZHJtX2NvbG9yX21nbXQuaAppbmRleCBkMWM2NjJkOTJhYjcuLjA2OWIyMWQ2MTg3MSAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaAorKysgYi9pbmNsdWRlL2RybS9kcm1f
Y29sb3JfbWdtdC5oCkBAIC0yOSw3ICsyOSwyOCBAQAogc3RydWN0IGRybV9jcnRjOwogc3RydWN0
IGRybV9wbGFuZTsKIAotdWludDMyX3QgZHJtX2NvbG9yX2x1dF9leHRyYWN0KHVpbnQzMl90IHVz
ZXJfaW5wdXQsIHVpbnQzMl90IGJpdF9wcmVjaXNpb24pOworLyoqCisgKiBkcm1fY29sb3JfbHV0
X2V4dHJhY3QgLSBjbGFtcCBhbmQgcm91bmQgTFVUIGVudHJpZXMKKyAqIEB1c2VyX2lucHV0OiBp
bnB1dCB2YWx1ZQorICogQGJpdF9wcmVjaXNpb246IG51bWJlciBvZiBiaXRzIHRoZSBodyBMVVQg
c3VwcG9ydHMKKyAqCisgKiBFeHRyYWN0IGEgZGVnYW1tYS9nYW1tYSBMVVQgdmFsdWUgcHJvdmlk
ZWQgYnkgdXNlciAoaW4gdGhlIGZvcm0gb2YKKyAqICZkcm1fY29sb3JfbHV0IGVudHJpZXMpIGFu
ZCByb3VuZCBpdCB0byB0aGUgcHJlY2lzaW9uIHN1cHBvcnRlZCBieSB0aGUKKyAqIGhhcmR3YXJl
LgorICovCitzdGF0aWMgaW5saW5lIHUzMiBkcm1fY29sb3JfbHV0X2V4dHJhY3QodTMyIHVzZXJf
aW5wdXQsIGludCBiaXRfcHJlY2lzaW9uKQoreworCXUzMiB2YWwgPSB1c2VyX2lucHV0OworCXUz
MiBtYXggPSAweGZmZmYgPj4gKDE2IC0gYml0X3ByZWNpc2lvbik7CisKKwkvKiBSb3VuZCBvbmx5
IGlmIHdlJ3JlIG5vdCB1c2luZyBmdWxsIHByZWNpc2lvbi4gKi8KKwlpZiAoYml0X3ByZWNpc2lv
biA8IDE2KSB7CisJCXZhbCArPSAxVUwgPDwgKDE2IC0gYml0X3ByZWNpc2lvbiAtIDEpOworCQl2
YWwgPj49IDE2IC0gYml0X3ByZWNpc2lvbjsKKwl9CisKKwlyZXR1cm4gY2xhbXBfdmFsKHZhbCwg
MCwgbWF4KTsKK30KIAogdm9pZCBkcm1fY3J0Y19lbmFibGVfY29sb3JfbWdtdChzdHJ1Y3QgZHJt
X2NydGMgKmNydGMsCiAJCQkJdWludCBkZWdhbW1hX2x1dF9zaXplLAotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
