Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FF52F54C9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84256EC79;
	Wed, 13 Jan 2021 22:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF62A6EC7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:33 +0000 (UTC)
IronPort-SDR: LNPdAaDGfTAuje6eVpXWZQyOp0UUfptEjDfRq8xKKpNDn/Zyiqt0doPjZ3ceYoBNEi5dWAmWe/
 j/JjjKPUPYrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="165950106"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="165950106"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:32 -0800
IronPort-SDR: Y/D/ICoBmR1nhyt9i0Wzc502jaj+9MFkNSw4FJ7sIWAxMgiywJTLbmSEoCKaheZwQc2NNSBgo1
 hRSvkxfPwZlQ==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696577"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:30 -0800
Message-Id: <20210113220935.4151-14-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13/18] drm/i915/display/vrr: Set
 IGNORE_MSA_PAR state in DP Sink
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

SWYgVlJSIGlzIGVuYWJsZWQsIHRoZSBzaW5rIHNob3VsZCBpZ25vcmUgTVNBIHBhcmFtZXRlcnMK
YW5kIHJlZ2VuZXJhdGUgaW5jb21pbmcgdmlkZW8gc3RyZWFtIHdpdGhvdXQgZGVwZW5kaW5nCm9u
IHRoZXNlIHBhcmFtZXRlcnMuIEhlbmNlIHNldCB0aGUgTVNBX1RJTUlOR19QQVJfSUdOT1JFX0VO
CmJpdCBpZiBWUlIgaXMgZW5hYmxlZC4KUmVzZXQgdGhpcyBiaXQgb24gVlJSIGRpc2FibGUuCgp2
MjoKKiBBQ3R1YWxseSBzZXQgdGhlIGRwY2QgbXNhIGlnbm9yZSBiaXQgKFZpbGxlKQoKQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kg
TmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8IDE5ICsrKysrKysrKysrKysrKysrKysKIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8ICAyICstCiAyIGZp
bGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAxNmI1NWY0OWFhNTQuLmUyOTYxZDhm
YWM5OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNTU2
LDYgKzM1NTYsMjIgQEAgaTkxNV9yZWdfdCBkcF90cF9zdGF0dXNfcmVnKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCQlyZXR1cm4gRFBfVFBfU1RBVFVTKGVuY29kZXItPnBvcnQpOwog
fQogCitzdGF0aWMgdm9pZCBpbnRlbF9kcF9zaW5rX3NldF9tc2FfdGltaW5nX3Bhcl9pZ25vcmVf
c3RhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkJCQkgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCQkJCSAgYm9vbCBlbmFibGUpCit7CisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsKKwor
CWlmICghY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkKKwkJcmV0dXJuOworCisJaWYgKGRybV9kcF9k
cGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfRE9XTlNQUkVBRF9DVFJMLAorCQkJICAgICAg
IGVuYWJsZSA/IERQX01TQV9USU1JTkdfUEFSX0lHTk9SRV9FTiA6IDApIDw9IDApCisJCWRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sCisJCQkgICAgIkZhaWxlZCB0byBzZXQgTVNBX1RJTUlOR19QQVJf
SUdOT1JFICVzIGluIHRoZSBzaW5rXG4iLAorCQkJICAgIGVuYWJsZSA/ICJlbmFibGUiIDogImRp
c2FibGUiKTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfZHBfc2lua19zZXRfZmVjX3JlYWR5KHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQogewpAQCAtNDM1NCw2ICs0MzcwLDkgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZGlzYWJsZV9kZGlfZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJLyog
RGlzYWJsZSB0aGUgZGVjb21wcmVzc2lvbiBpbiBEUCBTaW5rICovCiAJaW50ZWxfZHBfc2lua19z
ZXRfZGVjb21wcmVzc2lvbl9zdGF0ZShpbnRlbF9kcCwgb2xkX2NydGNfc3RhdGUsCiAJCQkJCSAg
ICAgIGZhbHNlKTsKKwkvKiBEaXNhYmxlIElnbm9yZV9NU0EgYml0IGluIERQIFNpbmsgKi8KKwlp
bnRlbF9kcF9zaW5rX3NldF9tc2FfdGltaW5nX3Bhcl9pZ25vcmVfc3RhdGUoaW50ZWxfZHAsIG9s
ZF9jcnRjX3N0YXRlLAorCQkJCQkJICAgICAgZmFsc2UpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRl
bF9kaXNhYmxlX2RkaV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWlu
aW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYwppbmRleCBkOGM2ZDcwNTRkMTEuLmU0ZTZkMThlZjBhMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKQEAgLTQz
NCw3ICs0MzQsNyBAQCBpbnRlbF9kcF9wcmVwYXJlX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKIAkJZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIERQX0xJTktf
UkFURV9TRVQsCiAJCQkJICAmcmF0ZV9zZWxlY3QsIDEpOwogCi0JbGlua19jb25maWdbMF0gPSAw
OworCWxpbmtfY29uZmlnWzBdID0gY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSA/IERQX01TQV9USU1J
TkdfUEFSX0lHTk9SRV9FTiA6IDA7CiAJbGlua19jb25maWdbMV0gPSBEUF9TRVRfQU5TSV84QjEw
QjsKIAlkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfRE9XTlNQUkVBRF9DVFJM
LCBsaW5rX2NvbmZpZywgMik7CiAKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
