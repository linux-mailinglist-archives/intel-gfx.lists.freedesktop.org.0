Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CC827DCBB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36B46E408;
	Tue, 29 Sep 2020 23:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40D66E408
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:35:03 +0000 (UTC)
IronPort-SDR: FMRQX5ANnzLccMLXPnxcX4bUc1MTE5clsE4ZAi9utlpYUFHZB6xUW8bt6dog/e3I7LDy7NaE+u
 g6qZo7RXRvsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="226466120"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="226466120"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:35:03 -0700
IronPort-SDR: VtypFeLtKZNJKIkaWVBbT57ypTSyBCfbULBnwL5uAmGnj4hqiDj8Y1IfXuW163ebj/z70CGk/i
 RFJnFaIuCOmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="293846970"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 29 Sep 2020 16:35:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:35:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:42 +0300
Message-Id: <20200929233449.32323-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915: Shove the PHY test into the
 hotplug work
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
aW5nIG5heSBraW5kIG1vZGVzZXQgc3R1ZmYgZnJvbSB0aGUgc2hvcnQgaHBkIGhhbmRsZXIgaXMK
dmVyYm90ZW4uIFRoZSBhZC1ob2MgUEhZIHRlc3QgbW9kZXNldCBjb2RlIHZpb2xhdGVzIHRoaXMu
IEFuZApieSBjYWxsaW5nIHZhcmlvdXMgbGluayB0cmFpbmluZyByZWxhdGVkIGZ1bmN0aW9ucyBp
dCdzIG5vdwpibG9ja2luZyBmdXJ0aGVyIHdvcmsgdG8gcGx1bWIgdGhlIGNydGMgc3RhdGUgZG93
biBpbnRvIHRoZQpsaW5rIHRyYWluaW5nIGNvZGUuCgpMZXQncyBoYWNrIGFyb3VuZCB0aGF0IGJ5
IHB1c2hpbmcgdGhlIFBIWSB0ZXN0IHN0dWZmIGludG8gdGhlCmhvdHBsdWcgd29yayB3aGVyZSBp
dCdzIGxlc3Mgb2YgYSBwcm9ibGVtLiBTdGlsbCBub3QgZ3JlYXQgYnV0CmF0IGxlYXN0IGFjY2Vw
dGFibGUuIFdlIHRha2UgYSBmZXcgcGFnZXMgZnJvbSB0aGUgbGluayByZXRyYWluaW5nCmhhbmRi
b29rIHRvIGhhbmRsZSB0aGUgbG9ja2luZyBhbmQgd2hhdG5vdC4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTU0ICsrKysrKysrKysrKysrKysr
KysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyOCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNWM2NzMwODBl
Y2IxLi42NzE4ZTAxOTA5Y2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKQEAgLTU0MjQsMjUgKzU0MjQsNiBAQCBzdGF0aWMgdTggaW50ZWxfZHBfYXV0b3Rlc3RfZWRp
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXJldHVybiB0ZXN0X3Jlc3VsdDsKIH0KIAot
c3RhdGljIHU4IGludGVsX2RwX3ByZXBhcmVfcGh5dGVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQotewotCXN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zICpkYXRhID0KLQkJJmludGVs
X2RwLT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0OwotCi0JaWYgKGRybV9kcF9nZXRfcGh5
X3Rlc3RfcGF0dGVybigmaW50ZWxfZHAtPmF1eCwgZGF0YSkpIHsKLQkJRFJNX0RFQlVHX0tNUygi
RFAgUGh5IFRlc3QgcGF0dGVybiBBVVggcmVhZCBmYWlsdXJlXG4iKTsKLQkJcmV0dXJuIERQX1RF
U1RfTkFLOwotCX0KLQotCS8qCi0JICogbGlua19tc3QgaXMgc2V0IHRvIGZhbHNlIHRvIGF2b2lk
IGV4ZWN1dGluZyBtc3QgcmVsYXRlZCBjb2RlCi0JICogZHVyaW5nIGNvbXBsaWFuY2UgdGVzdGlu
Zy4KLQkgKi8KLQlpbnRlbF9kcC0+bGlua19tc3QgPSBmYWxzZTsKLQotCXJldHVybiBEUF9URVNU
X0FDSzsKLX0KLQogc3RhdGljIHZvaWQgaW50ZWxfZHBfcGh5X3BhdHRlcm5fdXBkYXRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0KQEAgLTU1OTAsMTUgKzU1NzEsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfcHJvY2Vz
c19waHlfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCiBzdGF0aWMgdTggaW50
ZWxfZHBfYXV0b3Rlc3RfcGh5X3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIHsK
LQl1OCB0ZXN0X3Jlc3VsdDsKKwlzdHJ1Y3QgZHJtX2RwX3BoeV90ZXN0X3BhcmFtcyAqZGF0YSA9
CisJCSZpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEucGh5dGVzdDsKIAotCXRlc3RfcmVz
dWx0ID0gaW50ZWxfZHBfcHJlcGFyZV9waHl0ZXN0KGludGVsX2RwKTsKLQlpZiAodGVzdF9yZXN1
bHQgIT0gRFBfVEVTVF9BQ0spCi0JCURSTV9FUlJPUigiUGh5IHRlc3QgcHJlcGFyYXRpb24gZmFp
bGVkXG4iKTsKKwlpZiAoZHJtX2RwX2dldF9waHlfdGVzdF9wYXR0ZXJuKCZpbnRlbF9kcC0+YXV4
LCBkYXRhKSkgeworCQlEUk1fREVCVUdfS01TKCJEUCBQaHkgVGVzdCBwYXR0ZXJuIEFVWCByZWFk
IGZhaWx1cmVcbiIpOworCQlyZXR1cm4gRFBfVEVTVF9OQUs7CisJfQogCi0JaW50ZWxfZHBfcHJv
Y2Vzc19waHlfcmVxdWVzdChpbnRlbF9kcCk7CisJLyogU2V0IHRlc3QgYWN0aXZlIGZsYWcgaGVy
ZSBzbyB1c2Vyc3BhY2UgZG9lc24ndCBpbnRlcnJ1cHQgdGhpbmdzICovCisJaW50ZWxfZHAtPmNv
bXBsaWFuY2UudGVzdF9hY3RpdmUgPSB0cnVlOwogCi0JcmV0dXJuIHRlc3RfcmVzdWx0OworCXJl
dHVybiBEUF9URVNUX0FDSzsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfZHBfaGFuZGxlX3Rlc3Rf
cmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQpAQCAtNTg4Nyw2ICs1ODcxLDEwNCBA
QCBpbnQgaW50ZWxfZHBfcmV0cmFpbl9saW5rKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCXJldHVybiAwOwogfQogCitzdGF0aWMgaW50IGludGVsX2RwX3ByZXBfcGh5X3Rlc3Qoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgIHN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJl
X2N0eCAqY3R4LAorCQkJCSAgdTMyICpjcnRjX21hc2spCit7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9saXN0X2l0ZXIgY29ubl9pdGVyOworCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
cjsKKwlpbnQgcmV0ID0gMDsKKworCSpjcnRjX21hc2sgPSAwOworCisJZHJtX2Nvbm5lY3Rvcl9s
aXN0X2l0ZXJfYmVnaW4oJmk5MTUtPmRybSwgJmNvbm5faXRlcik7CisJZm9yX2VhY2hfaW50ZWxf
Y29ubmVjdG9yX2l0ZXIoY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7CisJCXN0cnVjdCBkcm1fY29u
bmVjdG9yX3N0YXRlICpjb25uX3N0YXRlID0KKwkJCWNvbm5lY3Rvci0+YmFzZS5zdGF0ZTsKKwkJ
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjOworCisJCWlmICghaW50ZWxfZHBfaGFzX2Nvbm5lY3RvcihpbnRlbF9kcCwgY29ubl9z
dGF0ZSkpCisJCQljb250aW51ZTsKKworCQljcnRjID0gdG9faW50ZWxfY3J0Yyhjb25uX3N0YXRl
LT5jcnRjKTsKKwkJaWYgKCFjcnRjKQorCQkJY29udGludWU7CisKKwkJcmV0ID0gZHJtX21vZGVz
ZXRfbG9jaygmY3J0Yy0+YmFzZS5tdXRleCwgY3R4KTsKKwkJaWYgKHJldCkKKwkJCWJyZWFrOwor
CisJCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwor
CisJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sICFpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKGNy
dGNfc3RhdGUpKTsKKworCQlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSkKKwkJCWNvbnRpbnVl
OworCisJCWlmIChjb25uX3N0YXRlLT5jb21taXQgJiYKKwkJICAgICF0cnlfd2FpdF9mb3JfY29t
cGxldGlvbigmY29ubl9zdGF0ZS0+Y29tbWl0LT5od19kb25lKSkKKwkJCWNvbnRpbnVlOworCisJ
CSpjcnRjX21hc2sgfD0gZHJtX2NydGNfbWFzaygmY3J0Yy0+YmFzZSk7CisJfQorCWRybV9jb25u
ZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0
YXRpYyBpbnQgaW50ZWxfZHBfZG9fcGh5X3Rlc3Qoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCisJCQkJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
CisJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsK
Kwl1MzIgY3J0Y19tYXNrOworCWludCByZXQ7CisKKwlyZXQgPSBkcm1fbW9kZXNldF9sb2NrKCZk
ZXZfcHJpdi0+ZHJtLm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgsCisJCQkgICAgICAgY3R4
KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJcmV0ID0gaW50ZWxfZHBfcHJlcF9waHlf
dGVzdChpbnRlbF9kcCwgY3R4LCAmY3J0Y19tYXNrKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0
OworCisJaWYgKGNydGNfbWFzayA9PSAwKQorCQlyZXR1cm4gMDsKKworCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLCAiW0VOQ09ERVI6JWQ6JXNdIFBIWSB0ZXN0XG4iLAorCQkgICAgZW5jb2Rl
ci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUpOworCWludGVsX2RwX3Byb2Nlc3Nf
cGh5X3JlcXVlc3QoaW50ZWxfZHApOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIGlu
dGVsX2RwX3BoeV90ZXN0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVj
dCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBjdHg7CisJaW50IHJldDsKKworCWRybV9tb2Rlc2V0
X2FjcXVpcmVfaW5pdCgmY3R4LCAwKTsKKworCWZvciAoOzspIHsKKwkJcmV0ID0gaW50ZWxfZHBf
ZG9fcGh5X3Rlc3QoZW5jb2RlciwgJmN0eCk7CisKKwkJaWYgKHJldCA9PSAtRURFQURMSykgewor
CQkJZHJtX21vZGVzZXRfYmFja29mZigmY3R4KTsKKwkJCWNvbnRpbnVlOworCQl9CisKKwkJYnJl
YWs7CisJfQorCisJZHJtX21vZGVzZXRfZHJvcF9sb2NrcygmY3R4KTsKKwlkcm1fbW9kZXNldF9h
Y3F1aXJlX2ZpbmkoJmN0eCk7CisJZHJtX1dBUk4oZW5jb2Rlci0+YmFzZS5kZXYsIHJldCwKKwkJ
ICJBY3F1aXJpbmcgbW9kZXNldCBsb2NrcyBmYWlsZWQgd2l0aCAlaVxuIiwgcmV0KTsKK30KKwog
LyoKICAqIElmIGRpc3BsYXkgaXMgbm93IGNvbm5lY3RlZCBjaGVjayBsaW5rcyBzdGF0dXMsCiAg
KiB0aGVyZSBoYXMgYmVlbiBrbm93biBpc3N1ZXMgb2YgbGluayBsb3NzIHRyaWdnZXJpbmcKQEAg
LTU5MDMsMTAgKzU5ODUsMTggQEAgc3RhdGljIGVudW0gaW50ZWxfaG90cGx1Z19zdGF0ZQogaW50
ZWxfZHBfaG90cGx1ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJIHN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIHsKKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
ID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwogCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJl
X2N0eCBjdHg7CiAJZW51bSBpbnRlbF9ob3RwbHVnX3N0YXRlIHN0YXRlOwogCWludCByZXQ7CiAK
KwlpZiAoaW50ZWxfZHAtPmNvbXBsaWFuY2UudGVzdF9hY3RpdmUgJiYKKwkgICAgaW50ZWxfZHAt
PmNvbXBsaWFuY2UudGVzdF90eXBlID09IERQX1RFU1RfTElOS19QSFlfVEVTVF9QQVRURVJOKSB7
CisJCWludGVsX2RwX3BoeV90ZXN0KGVuY29kZXIpOworCQkvKiBqdXN0IGRvIHRoZSBQSFkgdGVz
dCBhbmQgbm90aGluZyBlbHNlICovCisJCXJldHVybiBjb25uZWN0b3ItPmJhc2Uuc3RhdHVzOwor
CX0KKwogCXN0YXRlID0gaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKGVuY29kZXIsIGNvbm5lY3Rvcik7
CiAKIAlkcm1fbW9kZXNldF9hY3F1aXJlX2luaXQoJmN0eCwgMCk7CkBAIC02MDExLDExICs2MTAx
LDIzIEBAIGludGVsX2RwX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAK
IAlpbnRlbF9wc3Jfc2hvcnRfcHVsc2UoaW50ZWxfZHApOwogCi0JaWYgKGludGVsX2RwLT5jb21w
bGlhbmNlLnRlc3RfdHlwZSA9PSBEUF9URVNUX0xJTktfVFJBSU5JTkcpIHsKKwlzd2l0Y2ggKGlu
dGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfdHlwZSkgeworCWNhc2UgRFBfVEVTVF9MSU5LX1RSQUlO
SU5HOgogCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKIAkJCSAgICAiTGluayBUcmFpbmlu
ZyBDb21wbGlhbmNlIFRlc3QgcmVxdWVzdGVkXG4iKTsKIAkJLyogU2VuZCBhIEhvdHBsdWcgVWV2
ZW50IHRvIHVzZXJzcGFjZSB0byBzdGFydCBtb2Rlc2V0ICovCiAJCWRybV9rbXNfaGVscGVyX2hv
dHBsdWdfZXZlbnQoJmRldl9wcml2LT5kcm0pOworCQlicmVhazsKKwljYXNlIERQX1RFU1RfTElO
S19QSFlfVEVTVF9QQVRURVJOOgorCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKKwkJCSAg
ICAiUEhZIHRlc3QgcGF0dGVybiBDb21wbGlhbmNlIFRlc3QgcmVxdWVzdGVkXG4iKTsKKwkJLyoK
KwkJICogU2NoZWR1bGUgbG9uZyBocGQgdG8gZG8gdGhlIHRlc3QKKwkJICoKKwkJICogRklYTUUg
Z2V0IHJpZCBvZiB0aGUgYWQtaG9jIHBoeSB0ZXN0IG1vZGVzZXQgY29kZQorCQkgKiBhbmQgcHJv
cGVybHkgaW5jb3Jwb3JhdGUgaXQgaW50byB0aGUgbm9ybWFsIG1vZGVzZXQuCisJCSAqLworCQly
ZXR1cm4gZmFsc2U7CiAJfQogCiAJcmV0dXJuIHRydWU7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
