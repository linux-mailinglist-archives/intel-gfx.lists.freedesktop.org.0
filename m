Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD26A189A1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 14:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FF789C16;
	Thu,  9 May 2019 12:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547ED89C16
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 12:22:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 05:22:29 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 09 May 2019 05:22:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2019 15:22:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 15:21:59 +0300
Message-Id: <20190509122159.24376-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 8/8] drm/i915: Bump gen7+ fb size limits to
 16kx16k
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggZ3R0IHJlbWFwcGluZyBpbiBwbGFjZSB3ZSBjYW4gdXNlIGFyYml0cmFyaWx5IGxhcmdlCmZy
YW1lYnVmZmVycy4gTGV0J3MgYnVtcCB0aGUgbGltaXRzIHRvIDE2a3gxNmsgb24gZ2VuNysuClRo
ZSBsaW1pdCB3YXMgY2hvc2VuIHRvIG1hdGNoIHRoZSBtYXhpbXVtIDJEIHN1cmZhY2Ugc2l6ZQpv
ZiB0aGUgM0QgZW5naW5lLgoKV2l0aCB0aGUgcmVtYXBwaW5nIHdlIGNvdWxkIGVhc2lseSBnbyBo
aWdoZXIgdGhhbiB0aGF0IGZvciB0aGUKZGlzcGxheSBlbmdpbmUuIEhvd2V2ZXIgdGhlIG1vZGVz
ZXR0aW5nIGRkeCB3aWxsIGJsaW5kbHkgYXNzdW1lCml0IGNhbiBoYW5kbGUgd2hhdGV2ZXIgaXMg
cmVwb3J0ZWQgdmlhIGttcy4gVGhlIG92ZXJzaXplZApidWZmZXIgZGltZW5zaW9ucyBhcmUgbm90
IGNhdWdodCBieSBnbGFtb3Igbm9yIE1lc2EgdW50aWwKZmluYWxseSBhbiBhc3NlcnQgd2lsbCB0
cmlwIHdoZW4gZ2VueG1sIGF0dGVtcHRzIHRvIHBhY2sgdGhlClNVUkZBQ0VfU1RBVEUuIFNvIHdl
IHBpY2sgYSBzYWZlIGxpbWl0IHRvIGF2b2lkIHRoZSBYIHNlcnZlcgpmcm9tIGNyYXNoaW5nIChv
ciBwb3RlbnRpYWxseSBtaXNiZWhhdmluZyBpZiB0aGUgZ2VueG1sIGFzc2VydHMKYXJlIGNvbXBp
bGVkIG91dCkuCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDE4NwpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
YyB8IDE4ICsrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGEyZTRlZjkzOGQ1My4uYTQ5NWZkMmRjYWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlz
cGxheS5jCkBAIC0xNTc4MywxNiArMTU3ODMsMjIgQEAgaW50IGludGVsX21vZGVzZXRfaW5pdChz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCQl9CiAJfQogCi0JLyogbWF4aW11bSBmcmFtZWJ1ZmZl
ciBkaW1lbnNpb25zICovCi0JaWYgKElTX0dFTihkZXZfcHJpdiwgMikpIHsKLQkJZGV2LT5tb2Rl
X2NvbmZpZy5tYXhfd2lkdGggPSAyMDQ4OwotCQlkZXYtPm1vZGVfY29uZmlnLm1heF9oZWlnaHQg
PSAyMDQ4OworCS8qCisJICogTWF4aW11bSBmcmFtZWJ1ZmZlciBkaW1lbnNpb25zLCBjaG9zZW4g
dG8gbWF0Y2gKKwkgKiB0aGUgbWF4aW11bSByZW5kZXIgZW5naW5lIHN1cmZhY2Ugc2l6ZSBvbiBn
ZW40Ky4KKwkgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3KSB7CisJCWRldi0+bW9k
ZV9jb25maWcubWF4X3dpZHRoID0gMTYzODQ7CisJCWRldi0+bW9kZV9jb25maWcubWF4X2hlaWdo
dCA9IDE2Mzg0OworCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA0KSB7CisJCWRl
di0+bW9kZV9jb25maWcubWF4X3dpZHRoID0gODE5MjsKKwkJZGV2LT5tb2RlX2NvbmZpZy5tYXhf
aGVpZ2h0ID0gODE5MjsKIAl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMykpIHsKIAkJZGV2
LT5tb2RlX2NvbmZpZy5tYXhfd2lkdGggPSA0MDk2OwogCQlkZXYtPm1vZGVfY29uZmlnLm1heF9o
ZWlnaHQgPSA0MDk2OwogCX0gZWxzZSB7Ci0JCWRldi0+bW9kZV9jb25maWcubWF4X3dpZHRoID0g
ODE5MjsKLQkJZGV2LT5tb2RlX2NvbmZpZy5tYXhfaGVpZ2h0ID0gODE5MjsKKwkJZGV2LT5tb2Rl
X2NvbmZpZy5tYXhfd2lkdGggPSAyMDQ4OworCQlkZXYtPm1vZGVfY29uZmlnLm1heF9oZWlnaHQg
PSAyMDQ4OwogCX0KIAogCWlmIChJU19JODQ1RyhkZXZfcHJpdikgfHwgSVNfSTg2NUcoZGV2X3By
aXYpKSB7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
