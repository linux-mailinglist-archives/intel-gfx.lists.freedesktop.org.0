Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2679916EC45
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:14:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653516EB57;
	Tue, 25 Feb 2020 17:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B476EB59
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:14:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="350185308"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 25 Feb 2020 09:12:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:12:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:19 +0200
Message-Id: <20200225171125.28885-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/20] drm/i915: Introduce
 intel_dbuf_slice_size()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1
dCB0aGUgY29kZSBpbnRvIGEgZnVuY3Rpb24gd2l0aCBhIGRlc2NyaXB0aXZlIG5hbWUuIEFsc28g
cmVsb2NhdGUKdGhlIGNvZGUgYSBiaXQgaGVscCBmdXR1cmUgd29yay4KCkNjOiBTdGFuaXNsYXYg
TGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMzQgKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMjU2NjIyYjYwM2NkLi45YmFmMzFlMDYw
MTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtMzgwOSw2ICszODA5LDI0IEBAIGJvb2wg
aW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQog
CXJldHVybiB0cnVlOwogfQogCitzdGF0aWMgaW50IGludGVsX2RidWZfc2l6ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJaW50IGRkYl9zaXplID0gSU5URUxfSU5GTyhk
ZXZfcHJpdiktPmRkYl9zaXplOworCisJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRkYl9z
aXplID09IDApOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKKwkJcmV0dXJuIGRk
Yl9zaXplIC0gNDsgLyogNCBibG9ja3MgZm9yIGJ5cGFzcyBwYXRoIGFsbG9jYXRpb24gKi8KKwor
CXJldHVybiBkZGJfc2l6ZTsKK30KKworc3RhdGljIGludCBpbnRlbF9kYnVmX3NsaWNlX3NpemUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXJldHVybiBpbnRlbF9kYnVm
X3NpemUoZGV2X3ByaXYpIC8KKwkJSU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9zdXBwb3J0ZWRf
ZGJ1Zl9zbGljZXM7Cit9CisKIC8qCiAgKiBDYWxjdWxhdGUgaW5pdGlhbCBEQnVmIHNsaWNlIG9m
ZnNldCwgYmFzZWQgb24gc2xpY2Ugc2l6ZQogICogYW5kIG1hc2soaS5lIGlmIHNsaWNlIHNpemUg
aXMgMTAyNCBhbmQgc2Vjb25kIHNsaWNlIGlzIGVuYWJsZWQKQEAgLTM4MzAsMTcgKzM4NDgsNiBA
QCBpY2xfZ2V0X2ZpcnN0X2RidWZfc2xpY2Vfb2Zmc2V0KHUzMiBkYnVmX3NsaWNlX21hc2ssCiAJ
cmV0dXJuIG9mZnNldDsKIH0KIAotc3RhdGljIHUxNiBpbnRlbF9nZXRfZGRiX3NpemUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXUxNiBkZGJfc2l6ZSA9IElOVEVMX0lO
Rk8oZGV2X3ByaXYpLT5kZGJfc2l6ZTsKLQotCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBk
ZGJfc2l6ZSA9PSAwKTsKLQotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCi0JCXJldHVy
biBkZGJfc2l6ZSAtIDQ7IC8qIDQgYmxvY2tzIGZvciBieXBhc3MgcGF0aCBhbGxvY2F0aW9uICov
Ci0KLQlyZXR1cm4gZGRiX3NpemU7Ci19CiAKIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfY3J0
Y19kZGJfd2VpZ2h0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
ewpAQCAtMzkwMCw5ICszOTA3LDggQEAgc2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9uX2xpbWl0
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXJldHVybiAwOwogCX0KIAot
CWRkYl9zaXplID0gaW50ZWxfZ2V0X2RkYl9zaXplKGRldl9wcml2KTsKLQotCXNsaWNlX3NpemUg
PSBkZGJfc2l6ZSAvIElOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fc3VwcG9ydGVkX2RidWZfc2xp
Y2VzOworCWRkYl9zaXplID0gaW50ZWxfZGJ1Zl9zaXplKGRldl9wcml2KTsKKwlzbGljZV9zaXpl
ID0gaW50ZWxfZGJ1Zl9zbGljZV9zaXplKGRldl9wcml2KTsKIAogCS8qCiAJICogSWYgdGhlIHN0
YXRlIGRvZXNuJ3QgY2hhbmdlIHRoZSBhY3RpdmUgQ1JUQydzIG9yIHRoZXJlIGlzIG5vCi0tIAoy
LjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
