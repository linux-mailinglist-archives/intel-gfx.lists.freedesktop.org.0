Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E187285EAC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 14:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC4B6E8CD;
	Wed,  7 Oct 2020 12:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8476E8CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 12:03:40 +0000 (UTC)
IronPort-SDR: fHSBeFTyT0Q89Grz3E+jkz4jiSjC8ldf7rfMUN7LHKlbZZqISIC0OTkW3fh6JSwrrys4xJDBMp
 eVVJR8jiST4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="144828959"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="144828959"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 05:03:39 -0700
IronPort-SDR: jIDruMJfvOh3jT0gyd1Y+NrymDYqF8AaDdYtZ952dfDGuNz4BxT0vM0hp6CCAmkJ/mKs6j5o/F
 FTVJoTuQ3DEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="354871789"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 07 Oct 2020 05:03:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Oct 2020 15:03:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 15:03:29 +0300
Message-Id: <20201007120329.17076-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
References: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Enable eLLC caching of display
 buffers for SKL+
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIFNLTCB0aGUgZUxMQyBoYXMgYmVlbiBzaXR0aW5nIG9uIHRoZSBmYXIgc2lkZSBvZiB0aGUg
c3lzdGVtCmFnZW50LCBtZWFuaW5nIHRoZSBkaXNwbGF5IGVuZ2luZSBjYW4gdXRpbGl6ZSBpdC4g
TGV0J3MgZW5hYmxlIHRoYXQuCgpJIGNob3NlIFdCIGZvciB0aGUgY2FjaGluZyBtb2RlLCBiZWNh
dXNlIG15IG51bWJlcnMgYXJlIGluZGljYXRpbmcKdGhhdCBXVCBtaWdodCBhY3R1YWxseSBiZSBX
QiBhbmQgV0MgbWlnaHQgYWN0dWFsbHkgYmUgVUMuIEknbSBub3QKMTAwJSBzdXJlIHRoYXQgaXMg
aW5kZWVkIHRoZSBjYXNlIGJ1dCBhdCBsZWFzdCBteSBzaW1wbGUgcmVuZGVyY29weQpiYXNlZCBi
ZW5jaG1hcmsgZGlkbid0IHNlZSBhbnkgZGlmZmVyZW5jZSBpbiBwZXJmb3JtYW5jZS4KCkFsc28g
aWYgSSBjb25maWd1cmUgdGhpbmdzIHRvIGRvIExMQ2VMTEMrV1QgSSBzdGlsbCBnZXQgY2FjaGUg
ZGlydApvbiBteSBzY3JlZW4sIHN1Z2dlc3RpbmcgdGhhdCBpcyBpbiBmYWN0IG9wZXJhdGluZyBp
biBXQiBtb2RlCmFueXdheS4gVGhpcyBpcyBhbHNvIHRoZSByZWFzb24gSSBoYWQgdG8gZml4IHRo
ZSBNT0NTIHRhcmdldCBjYWNoZQp0byByZWFsbHkgc2F5IFBURSByYXRoZXIgdGhhbiBMTEMrZUxM
Qy4KU2luY2UgU0tMIHRoZSBlTExDIGhhcyBiZWVuIHNpdHRpbmcgb24gdGhlIGZhciBzaWRlIG9m
IHRoZSBzeXN0ZW0gYWdlbnQsCm1lYW5pbmcgdGhlIGRpc3BsYXkgZW5naW5lIGNhbiB1dGlsaXpl
IGl0LiBMZXQncyBlbmFibGUgdGhhdC4KCkVlcm8ncyBlYXJsaWVyIGJlbmNobWFya3MgbnVtYmVy
czoKIiogUmVzdWx0cyBpbiBHZnhCZW5jaCBhbmQgVW5pZ2luZSAoVmFsbGV5L0hlYXZlbikgdGVz
dHMgd2VyZSB3aXRoaW4gZGFpbHkKICAgdmFyaWF0aW9uIG9uIHRoZSB0ZXN0ZWQgU0tMIG1hY2hp
bmVzCgogKiBTS0wgR1Q0ZSAoMTI4TUIgZUxMQykgLyBXYXlsYW5kIC8gV2VzdG9uOgogICArMTUt
MjAlIFN5bk1hcmsgVGV4TWVtNTEyICg1MTJNQiBvZiB0ZXh0dXJlcykKICAgKzQtNiUgU3luTWFy
ayBUZXJyYWluRmx5KiwgQ1NDbG90aCwgU2hNYXBWc20KICAgLTUtMTAlIFN5bk1hcmsgVGV4TWVt
MTI4ICgxMjhNQiBvZiB0ZXh0dXJlcykKCiAqIFNLTCBHVDNlICg2NE1CIGVMTEMpIC8gWG9yZyAv
IFVuaXR5OgogICArNC04JSBHcHVUZXN0IFRyaWFuZ2xlIGZ1bGxzY3JlZW4gKEZ1bGxIRCkKICAg
LTUtMTAlIEdwdVRlc3QgVHJpYW5nbGUgd2luZG93ZWQgKDEvMiBzY3JlZW4pCgogKiBTS0wgR1Qy
IChubyBlTExDKSAvIFhvcmcgLyBVbml0eToKICAgKiBTb21lIG9mIHRoZSBoaWdoZXIgRlBTIFN5
bk1hcmsgcGl4ZWwgYW5kIHZlcnRleCBzaGFkZXIgdGVzdHMKICAgICBhcmUgZmV3IHBlcmNlbnQg
aGlnaGVyLCBtb3JlIHRoYW4gZGFpbHkgdmFyaWFuY2UKICAgPT4gRG8geW91IHNlZSBhbnkgcmVh
c29uIHdoeSB0aGlzIG1hY2hpbmUgd291bGQgYmUgaW1wYWN0ZWQKICAgICAgYWx0aG91Z2ggaXQg
ZG9lc24ndCBlTExDPyIKCkNhdmVhdHM6Ci0gU3RpbGwgaGF2ZW4ndCB0ZXN0ZWQgd2l0aCBhIHBy
aW1lIHNldHVwCi0gU3RpbGwgbm90IGVudGlyZWx5IHN1cmUgdGhpcyBhIGdvb2QgaWRlYSwgYnV0
IEkndmUgYmVlbgogIHVzaW5nIGl0IG9uIG15IGNmbCBhbnl3YXkgOikKCnYyOiBTcGxpdCB0aGUg
TU9DUyBQVEUgY2hhbmdlIG91dAoKQ2M6IEVlcm8gVGFtbWluZW4gPGVlcm8udC50YW1taW5lbkBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYyB8IDEw
ICsrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgIHwgIDMgKy0t
CiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jCmluZGV4IDNmMTExNGI1OGIwMS4uN2JmZTkwNzJiZTlh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYwpAQCAtMzI0LDcgKzMyNCw3IEBAIHN0
YXRpYyB2b2lkIGNubF9zZXR1cF9wcml2YXRlX3BwYXQoc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlKQogCQkJICAgR0VOOF9QUEFUX1dDIHwgR0VOOF9QUEFUX0xMQ0VMTEMpOwogCWludGVsX3Vu
Y29yZV93cml0ZSh1bmNvcmUsCiAJCQkgICBHRU4xMF9QQVRfSU5ERVgoMiksCi0JCQkgICBHRU44
X1BQQVRfV1QgfCBHRU44X1BQQVRfTExDRUxMQyk7CisJCQkgICBHRU44X1BQQVRfV0IgfCBHRU44
X1BQQVRfRUxMQ19PVkVSUklERSk7CiAJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKIAkJCSAg
IEdFTjEwX1BBVF9JTkRFWCgzKSwKIAkJCSAgIEdFTjhfUFBBVF9VQyk7CkBAIC0zNDksMTcgKzM0
OSwyMyBAQCBzdGF0aWMgdm9pZCBjbmxfc2V0dXBfcHJpdmF0ZV9wcGF0KHN0cnVjdCBpbnRlbF91
bmNvcmUgKnVuY29yZSkKICAqLwogc3RhdGljIHZvaWQgYmR3X3NldHVwX3ByaXZhdGVfcHBhdChz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB1bmNvcmUtPmk5MTU7CiAJdTY0IHBhdDsKIAogCXBhdCA9IEdFTjhfUFBBVCgwLCBH
RU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDKSB8CS8qIGZvciBub3JtYWwgb2JqZWN0cywgbm8g
ZUxMQyAqLwogCSAgICAgIEdFTjhfUFBBVCgxLCBHRU44X1BQQVRfV0MgfCBHRU44X1BQQVRfTExD
RUxMQykgfAkvKiBmb3Igc29tZXRoaW5nIHBvaW50aW5nIHRvIHB0ZXM/ICovCi0JICAgICAgR0VO
OF9QUEFUKDIsIEdFTjhfUFBBVF9XVCB8IEdFTjhfUFBBVF9MTENFTExDKSB8CS8qIGZvciBzY2Fu
b3V0IHdpdGggZUxMQyAqLwogCSAgICAgIEdFTjhfUFBBVCgzLCBHRU44X1BQQVRfVUMpIHwJCQkv
KiBVbmNhY2hlZCBvYmplY3RzLCBtb3N0bHkgZm9yIHNjYW5vdXQgKi8KIAkgICAgICBHRU44X1BQ
QVQoNCwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDAp
KSB8CiAJICAgICAgR0VOOF9QUEFUKDUsIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTENFTExD
IHwgR0VOOF9QUEFUX0FHRSgxKSkgfAogCSAgICAgIEdFTjhfUFBBVCg2LCBHRU44X1BQQVRfV0Ig
fCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0UoMikpIHwKIAkgICAgICBHRU44X1BQ
QVQoNywgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDMp
KTsKIAorCS8qIGZvciBzY2Fub3V0IHdpdGggZUxMQyAqLworCWlmIChJTlRFTF9HRU4oaTkxNSkg
Pj0gOSkKKwkJcGF0IHw9IEdFTjhfUFBBVCgyLCBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfRUxM
Q19PVkVSUklERSk7CisJZWxzZQorCQlwYXQgfD0gR0VOOF9QUEFUKDIsIEdFTjhfUFBBVF9XVCB8
IEdFTjhfUFBBVF9MTENFTExDKTsKKwogCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjhf
UFJJVkFURV9QQVRfTE8sIGxvd2VyXzMyX2JpdHMocGF0KSk7CiAJaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwgR0VOOF9QUklWQVRFX1BBVF9ISSwgdXBwZXJfMzJfYml0cyhwYXQpKTsKIH0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGVlZjlhODIxYzQ5Yy4uNzZjZjAxNGVhYTZiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE2MzgsOCArMTYzOCw3IEBAIHRnbF9yZXZpZHNfZ2V0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICNkZWZpbmUgSEFTX1NOT09QKGRl
dl9wcml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmhhc19zbm9vcCkKICNkZWZpbmUgSEFTX0VE
UkFNKGRldl9wcml2KQkoKGRldl9wcml2KS0+ZWRyYW1fc2l6ZV9tYikKICNkZWZpbmUgSEFTX1NF
Q1VSRV9CQVRDSEVTKGRldl9wcml2KSAoSU5URUxfR0VOKGRldl9wcml2KSA8IDYpCi0jZGVmaW5l
IEhBU19XVChkZXZfcHJpdikJKChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBcCi0JCQkJIElTX0JS
T0FEV0VMTChkZXZfcHJpdikpICYmIEhBU19FRFJBTShkZXZfcHJpdikpCisjZGVmaW5lIEhBU19X
VChkZXZfcHJpdikJSEFTX0VEUkFNKGRldl9wcml2KQogCiAjZGVmaW5lIEhXU19ORUVEU19QSFlT
SUNBTChkZXZfcHJpdikJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5od3NfbmVlZHNfcGh5c2ljYWwp
CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
