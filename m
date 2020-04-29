Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBE41BD925
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6866ECF0;
	Wed, 29 Apr 2020 10:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B2D6ECC5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:55 +0000 (UTC)
IronPort-SDR: yjvd4sd2b5xNKQI7MoPWJbL+wDBfjVjgFqDngSK0qN37ZuPXyHZoEHjWoCwYCCaCrffIPdJcnk
 olxlTGWHWf4g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:54 -0700
IronPort-SDR: BDY/PYxkT27W34G2TS6Jty7/kv17hgE+IzRk/C4RjQE/iwvWpGhl3TeyrEHet3YoVc7Fg+FePR
 fmmb+ullvGlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="293156514"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 29 Apr 2020 03:10:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:28 +0300
Message-Id: <20200429101034.8208-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/12] drm/i915/fbc: Don't clear busy_bits for
 origin==GTT
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBoYXJkd2FyZSBob3N0IHRyYWNraW5nIHdvbid0IG51a2UgdGhlIGVudGlyZSBjZmIgKHVubGVz
cyB0aGUKZW50aXJlIGZiIGlzIHdyaXR0ZW4gdGhyb3VnaCB0aGUgZ3R0KSBzbyBkb24ndCBjbGVh
ciB0aGUgYnVzeV9iaXRzCmZvciBndHQgdHJhY2tpbmcuCgpOb3QgdGhhdCBpdCByZWFsbHkgbWF0
dGVycyBhbnltb3JlIHNpbmNlIHdlJ3ZlIGxvc3QgT1JJR0lOX0dUVCB1c2FnZQpldmVyeXdoZXJl
LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwg
MTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDk4MzIy
NGUwN2VhZi4uNTZlZWFmYTY0NWRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKQEAgLTExMDcsMTEgKzExMDcsMTkgQEAgdm9pZCBpbnRlbF9mYmNfZmx1c2goc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlmICghSEFTX0ZCQyhkZXZfcHJpdikp
CiAJCXJldHVybjsKIAorCS8qCisJICogR1RUIHRyYWNraW5nIGRvZXMgbm90IG51a2UgdGhlIGVu
dGlyZSBjZmIKKwkgKiBzbyBkb24ndCBjbGVhciBidXN5X2JpdHMgc2V0IGZvciBzb21lIG90aGVy
CisJICogcmVhc29uLgorCSAqLworCWlmIChvcmlnaW4gPT0gT1JJR0lOX0dUVCkKKwkJcmV0dXJu
OworCiAJbXV0ZXhfbG9jaygmZmJjLT5sb2NrKTsKIAogCWZiYy0+YnVzeV9iaXRzICY9IH5mcm9u
dGJ1ZmZlcl9iaXRzOwogCi0JaWYgKG9yaWdpbiA9PSBPUklHSU5fR1RUIHx8IG9yaWdpbiA9PSBP
UklHSU5fRkxJUCkKKwlpZiAob3JpZ2luID09IE9SSUdJTl9GTElQKQogCQlnb3RvIG91dDsKIAog
CWlmICghZmJjLT5idXN5X2JpdHMgJiYgZmJjLT5jcnRjICYmCi0tIAoyLjI0LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
