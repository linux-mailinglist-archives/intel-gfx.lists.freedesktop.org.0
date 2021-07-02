Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FC3BA4CC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A396E20E;
	Fri,  2 Jul 2021 20:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3636E20E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:46:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="196069618"
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="196069618"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 13:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="456040765"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 02 Jul 2021 13:46:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Jul 2021 23:46:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jul 2021 23:46:01 +0300
Message-Id: <20210702204603.596-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210702204603.596-1-ville.syrjala@linux.intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/fbc: Align FBC segments to 512B on
 glk+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFw
cGx5IHRoZSBzYW1lIDUxMiBieXRlIEZCQyBzZWdtZW50IGFsaWdubWVudCB0byBnbGsrIGFzIHdl
IHVzZQpvbiBza2wrLiBUaGUgb25seSByZWFsIGRpZmZlcmVuY2UgaXMgdGhhdCB3ZSBub3cgaGF2
ZSBhIGRlZGljYXRlZApyZWdpc3RlciBmb3IgdGhlIEZCQyBvdmVycmlkZSBzdHJpZGUuIE5vdCAx
MDAlIHN1cmUgd2hpY2gKcGxhdGZvcm1zIHJlYWxseSBuZWVkIHRoZSA1MTJCIGFsaWdubWVudCwg
YnV0IGl0J3MgZWFzaWVlc3QKdG8ganVzdCBkbyBpdCBvbiBldmVyeXRoaW5nLgoKQWxzbyB0aGUg
aGFyZHdhcmUgbm8gbG9uZ2VyIHNlZW1zIHRvIG1pc2NsYWN1bGF0ZSB0aGUgQ0ZCIHN0cmlkZQpm
b3IgbGluZWFyLCBzbyB3ZSBjYW4gb21pdCB0aGUgdXNlIG9mIHRoZSBvdmVycmlkZSBzdHJpZGUg
Zm9yCmxpbmVhciB1bmxlc3MgdGhlIHN0cmlkZSBpcyBtaXNhbGlnbmVkLgoKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTQgKysrKysrKysrKyst
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgNCArKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggMmJhZjU4YWYwMTZjLi4yZGE1
Mjk1MDkyZTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAt
OTMsNyArOTMsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2ZiY19jZmJfc3RyaWRlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCSAqIGJlIDUxMiBieXRlIGFsaWduZWQuIEFs
aWduaW5nIGVhY2ggbGluZSB0byA1MTIgYnl0ZXMgZ3VhcmFudGVlcwogCSAqIHRoYXQgcmVnYXJk
bGVzcyBvZiB0aGUgY29tcHJlc3Npb24gbGltaXQgd2UgY2hvb3NlIGxhdGVyLgogCSAqLwotCWlm
IChESVNQTEFZX1ZFUihpOTE1KSA9PSA5KQorCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSA5KQog
CQlyZXR1cm4gQUxJR04oc3RyaWRlLCA1MTIpOwogCWVsc2UKIAkJcmV0dXJuIHN0cmlkZTsKQEAg
LTMzNCwxMCArMzM0LDE4IEBAIHN0YXRpYyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19w
YXJhbXMgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsKIAl1MzIgZHBmY19jdGw7CiAKLQkvKiBEaXNw
bGF5IFdBICMwNTI5OiBza2wsIGtibCwgYnh0LiAqLwotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPT0gOSkgeworCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApIHsKIAkJdTMyIHZh
bCA9IDA7CiAKKwkJaWYgKHBhcmFtcy0+b3ZlcnJpZGVfY2ZiX3N0cmlkZSkKKwkJCXZhbCB8PSBG
QkNfU1RSSURFX09WRVJSSURFIHwKKwkJCQlGQkNfU1RSSURFKHBhcmFtcy0+b3ZlcnJpZGVfY2Zi
X3N0cmlkZSAvIGZiYy0+bGltaXQpOworCisJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBHTEtf
RkJDX1NUUklERSwgdmFsKTsKKwl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSA5
KSB7CisJCXUzMiB2YWwgPSAwOworCisJCS8qIERpc3BsYXkgV0EgIzA1Mjk6IHNrbCwga2JsLCBi
eHQuICovCiAJCWlmIChwYXJhbXMtPm92ZXJyaWRlX2NmYl9zdHJpZGUpCiAJCQl2YWwgfD0gQ0hJ
Q0tFTl9GQkNfU1RSSURFX09WRVJSSURFIHwKIAkJCQlDSElDS0VOX0ZCQ19TVFJJREUocGFyYW1z
LT5vdmVycmlkZV9jZmJfc3RyaWRlIC8gZmJjLT5saW1pdCk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAppbmRleCBhYjJiZDQ4MzdlZmQuLjdjZjMxOGQ4NGQ4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCkBAIC0zMzM0LDYgKzMzMzQsMTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19y
ZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCiAjZGVmaW5lICAgSUxLX0RQRkNfRElTQUJMRV9EVU1N
WTAgKDEgPDwgOCkKICNkZWZpbmUgICBJTEtfRFBGQ19DSElDS0VOX0NPTVBfRFVNTVlfUElYRUwJ
KDEgPDwgMTQpCiAjZGVmaW5lICAgSUxLX0RQRkNfTlVLRV9PTl9BTllfTU9ESUZJQ0FUSU9OCSgx
IDw8IDIzKQorI2RlZmluZSBHTEtfRkJDX1NUUklERQkJX01NSU8oMHg0MzIyOCkKKyNkZWZpbmUg
ICBGQkNfU1RSSURFX09WRVJSSURFCVJFR19CSVQoMTUpCisjZGVmaW5lICAgRkJDX1NUUklERV9N
QVNLCVJFR19HRU5NQVNLKDE0LCAwKQorI2RlZmluZSAgIEZCQ19TVFJJREUoeCkJCVJFR19GSUVM
RF9QUkVQKEZCQ19TVFJJREVfTUFTSywgKHgpKQogI2RlZmluZSBJTEtfRkJDX1JUX0JBU0UJCV9N
TUlPKDB4MjEyOCkKICNkZWZpbmUgICBJTEtfRkJDX1JUX1ZBTElECSgxIDw8IDApCiAjZGVmaW5l
ICAgU05CX0ZCQ19GUk9OVF9CVUZGRVIJKDEgPDwgMSkKLS0gCjIuMzEuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
