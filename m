Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8E6175D69
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF8E6E456;
	Mon,  2 Mar 2020 14:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E306E456
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:39:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="231890153"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 02 Mar 2020 06:39:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 16:39:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 16:39:40 +0200
Message-Id: <20200302143943.32676-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Fix cs_timestamp_frequency_hz for
 ctg/elk/ilk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IGlsayB0aGUgVURXIG9mIFRJTUVTVEFNUCBpbmNyZW1lbnRzIGV2ZXJ5IDEwMDAgbnMsCkxEVyBp
cyBtYnouIEluIG9yZGVyIHRvIHJlcHJlc2VudCBjc190aW1lc3RhbXBfZnJlcXVlbmN5X2h6CmZv
ciB0aGF0IHdlJ2QgbmVlZCA1MiBiaXRzLCBidXQgd2Ugb25seSBoYXZlIDMyIGJpdHMuCkV2ZW4g
d29yc2UgbW9zdCB0aGluZ3Mgd2FudCB0byBvbmx5IGRlYWsgd2l0aCB0aGUgbG93CjMyIGJpdHMg
b2YgdGltZXN0YW1wLiBTbyBsZXQncyBqdXN0IHNldCB1cCBjc190aW1lc3RhbXBfZnJlcXVlbmN5
X2h6CmFzIGlmIHdlIG9ubHkgaGFkIHRoZSBVRFcuCgpPbiBjdGcvZWxrIDYzOjIwIG9mIFRJTUVT
VEFNUCBpbmNyZW1lbnRzIGV2ZXJ5IDEvNCBucywgMTk6MAphcmUgbWJ6LiBUbyBtYWtlIGxpZmUg
c2ltcGxlciBsZXQncyBpZ25vcmUgdGhlIExEVyBhbmQgc2V0IHVwCmNzX3RpbWVzdGFtcF9mcmVx
dWVuY3lfaHogYmFzZWQgb24gdGhlIFVEVyBvbmx5IChpbmNyZW1lbnRzCmV2ZXJ0IDEwMjQgbnMp
LgoKQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMTkg
KysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRl
eCAzMjczMzUzNTk2NGQuLmI3NTZlOGZiNzY4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jCkBAIC03MzksNyArNzM5LDEwIEBAIHN0YXRpYyB1MzIgcmVhZF90aW1l
c3RhbXBfZnJlcXVlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1MzIg
ZjE5XzJfbWh6ID0gMTkyMDAwMDA7CiAJdTMyIGYyNF9taHogPSAyNDAwMDAwMDsKIAotCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpIDw9IDQpIHsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDQp
CisJCXJldHVybiAwOworCisJaWYgKElTX0k5NjVHKGRldl9wcml2KSB8fCBJU19JOTY1R00oZGV2
X3ByaXYpKSB7CiAJCS8qIFBSTXMgc2F5OgogCQkgKgogCQkgKiAgICAgIlRoZSB2YWx1ZSBpbiB0
aGlzIHJlZ2lzdGVyIGluY3JlbWVudHMgb25jZSBldmVyeSAxNgpAQCAtNzQ3LDYgKzc1MCwyMCBA
QCBzdGF0aWMgdTMyIHJlYWRfdGltZXN0YW1wX2ZyZXF1ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJCSAqICAgICAgKOKAnENMS0NGR+KAnSkgTUNIQkFSIHJlZ2lzdGVy
KQogCQkgKi8KIAkJcmV0dXJuIFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnJhd2Nsa19mcmVxICog
MTAwMCAvIDE2OworCX0gZWxzZSBpZiAoSVNfRzRYKGRldl9wcml2KSkgeworCQkvKgorCQkgKiA2
MzoyMCBpbmNyZW1lbnRzIGV2ZXJ5IDEvNCBucworCQkgKiAxOTowIG1iegorCQkgKgorCQkgKiAt
PiA2MzozMiBpbmNyZW1lbnRzIGV2ZXJ5IDEwMjQgbnMKKwkJICovCisJCXJldHVybiAxMDAwMDAw
MDAwIC8gMTAyNDsKKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgNSkpIHsKKwkJLyoKKwkJ
ICogNjM6MzIgaW5jcmVtZW50cyBldmVyeSAxMDAwIG5zCisJCSAqIDMxOjAgbWJ6CisJCSAqLwor
CQlyZXR1cm4gMTAwMDAwMDAwMCAvIDEwMDA7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3By
aXYpIDw9IDgpIHsKIAkJLyogUFJNcyBzYXk6CiAJCSAqCi0tIAoyLjI0LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
