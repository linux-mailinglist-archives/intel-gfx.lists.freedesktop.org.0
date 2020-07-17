Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A562245B5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492C16E229;
	Fri, 17 Jul 2020 21:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F051E6E221
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:19 +0000 (UTC)
IronPort-SDR: 923Ir7lScTNwhSzNlhfoy/lpsXyIgOyWySuJl+1rYVCvvZ7+jlQVi25ini5Vbk5+LAo41avWh7
 GbS5IHao61pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="129245036"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="129245036"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:17 -0700
IronPort-SDR: uD/n3zPT3S9efDDivHoKoF0w8Y4q65YS+RSu1hk1g0YmZ5xBfqx8clD5eYc/sWASMY+Y3eWEA1
 8QQ5us0LywBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="286930467"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 17 Jul 2020 14:14:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:34 +0300
Message-Id: <20200717211345.26851-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/20] drm/i915: Read out CHV CGM degamma
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIENIViBoYXMgdGhlIGRlZGljYXRlIENHTSBkZWdhbW1hIHVuaXQgcmVhZG91dCBpcyB0cml2
aWFsLgpKdXN0IGRvIGl0LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbG9yLmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYwppbmRleCA0MzdjYzU2OTI1YWIuLjY4NDJmNWMwMzU2ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpAQCAtMTAzMCw2ICsxMDMwLDEzIEBAIHN0
YXRpYyB1MzIgY2h2X2NnbV9kZWdhbW1hX3Vkdyhjb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAq
Y29sb3IpCiAJcmV0dXJuIGRybV9jb2xvcl9sdXRfZXh0cmFjdChjb2xvci0+cmVkLCAxNCk7CiB9
CiAKK3N0YXRpYyB2b2lkIGNodl9jZ21fZGVnYW1tYV9wYWNrKHN0cnVjdCBkcm1fY29sb3JfbHV0
ICplbnRyeSwgdTMyIGxkdywgdTMyIHVkdykKK3sKKwllbnRyeS0+Z3JlZW4gPSBpbnRlbF9jb2xv
cl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0RFR0FNTUFfR1JFRU5fTUFTSywgbGR3
KSwgMTQpOworCWVudHJ5LT5ibHVlID0gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dF
VChDR01fUElQRV9ERUdBTU1BX0JMVUVfTUFTSywgbGR3KSwgMTQpOworCWVudHJ5LT5yZWQgPSBp
bnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0RFR0FNTUFfUkVEX01B
U0ssIHVkdyksIDE0KTsKK30KKwogc3RhdGljIHZvaWQgY2h2X2xvYWRfY2dtX2RlZ2FtbWEoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkJIGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxv
YiAqYmxvYikKIHsKQEAgLTE4MjEsNiArMTgyOCwzMiBAQCBzdGF0aWMgdm9pZCBpOTY1X3JlYWRf
bHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+
aHcuZ2FtbWFfbHV0ID0gaTk2NV9yZWFkX2x1dF8xMHA2KGNydGMpOwogfQogCitzdGF0aWMgc3Ry
dWN0IGRybV9wcm9wZXJ0eV9ibG9iICpjaHZfcmVhZF9jZ21fZGVnYW1tYShzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKKwlpbnQgaSwgbHV0X3NpemUgPSBJTlRFTF9JTkZPKGRldl9w
cml2KS0+Y29sb3IuZGVnYW1tYV9sdXRfc2l6ZTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBp
cGU7CisJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOworCXN0cnVjdCBkcm1fY29sb3Jf
bHV0ICpsdXQ7CisKKwlibG9iID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9ibG9iKCZkZXZfcHJpdi0+
ZHJtLAorCQkJCQlzaXplb2Yoc3RydWN0IGRybV9jb2xvcl9sdXQpICogbHV0X3NpemUsCisJCQkJ
CU5VTEwpOworCWlmIChJU19FUlIoYmxvYikpCisJCXJldHVybiBOVUxMOworCisJbHV0ID0gYmxv
Yi0+ZGF0YTsKKworCWZvciAoaSA9IDA7IGkgPCBsdXRfc2l6ZTsgaSsrKSB7CisJCXUzMiBsZHcg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBDR01fUElQRV9ERUdBTU1BKHBpcGUsIGksIDApKTsK
KwkJdTMyIHVkdyA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIENHTV9QSVBFX0RFR0FNTUEocGlw
ZSwgaSwgMSkpOworCisJCWNodl9jZ21fZGVnYW1tYV9wYWNrKCZsdXRbaV0sIGxkdywgdWR3KTsK
Kwl9CisKKwlyZXR1cm4gYmxvYjsKK30KKwogc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxv
YiAqY2h2X3JlYWRfY2dtX2dhbW1hKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwpA
QCAtMTg1MSw2ICsxODg0LDkgQEAgc3RhdGljIHZvaWQgY2h2X3JlYWRfbHV0cyhzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAorCWlmIChjcnRjX3N0YXRl
LT5jZ21fbW9kZSAmIENHTV9QSVBFX01PREVfREVHQU1NQSkKKwkJY3J0Y19zdGF0ZS0+aHcuZGVn
YW1tYV9sdXQgPSBjaHZfcmVhZF9jZ21fZGVnYW1tYShjcnRjKTsKKwogCWlmIChjcnRjX3N0YXRl
LT5jZ21fbW9kZSAmIENHTV9QSVBFX01PREVfR0FNTUEpCiAJCWNydGNfc3RhdGUtPmh3LmdhbW1h
X2x1dCA9IGNodl9yZWFkX2NnbV9nYW1tYShjcnRjKTsKIAllbHNlCi0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
