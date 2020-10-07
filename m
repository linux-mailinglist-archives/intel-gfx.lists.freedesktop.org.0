Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C84ED286577
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 19:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E7D6E94E;
	Wed,  7 Oct 2020 17:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF10E6E900
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 17:10:06 +0000 (UTC)
IronPort-SDR: Pm4Z1YXCMmIWLpHgN/uY3Hg+7UGkisbySh9MQPaLzD0eFsfQex75v2JLvkI5XmegtMuzQasXRZ
 wjVHYzxhxRUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164254666"
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="164254666"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:25 -0700
IronPort-SDR: VXuyf7Izkb70zIqoLibJHv7kxQFFWqYKCH2gZdX40hvB8AdJ7m6g7Jx5sEMX3YvroAyjNf9uE4
 fH0SjjMg+lsA==
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="528056865"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 20:09:14 +0300
Message-Id: <20201007170917.1764556-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201007170917.1764556-1-imre.deak@intel.com>
References: <20201007170917.1764556-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915: Factor out a helper to disable
 the DPCD training pattern
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

VG8gcHJlcGFyZSBmb3IgYSBmb2xsb3ctdXAgTFRUUFIgY2hhbmdlIGZhY3RvciBvdXQgYSBoZWxw
ZXIgdG8gZGlzYWJsZQp0aGUgdHJhaW5pbmcgcGF0dGVybiBpbiBEUENELiBXZSdsbCBuZWVkIHRv
IGRvIHRoaXMgZm9yIGVhY2ggTFRUUFIKKHdpdGhvdXQgcHJvZ3JhbW1pbmcgdGhlIHBvcnQgdG8g
b3V0cHV0IHRoZSBpZGxlIHBhdHRlcm4pIHdoZW4gdHJhaW5pbmcKaW4gTFRUUFIgbm9uLXRyYW5z
cGFyZW50IG1vZGUuCgpXaGlsZSBhdCBpdCBhbHNvIG1vdmUgdGhlIGRpc2FibGUtbGluay10cmFp
bmluZyBsb2dpYyBmcm9tCmludGVsX2RwX3NldF9saW5rX3RyYWluKCkgdG8gaW50ZWxfZHBfc3Rv
cF9saW5rX3RyYWluKCksIHNpbmNlIHRoZQpsYXR0ZXIgaXMgdGhlIG9ubHkgdXNlciBvZiB0aGlz
LgoKdjI6Ci0gTW92ZSB0aGUgZGlzYWJsZS1saW5rLXRyYWluaW5nIGxvZ2ljIHRvIGludGVsX2Rw
X3N0b3BfbGlua190cmFpbigpCiAgKFZpbGxlKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jIHwgMzMgKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3
IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKaW5kZXggNTFkMTMxNmMz
N2Q1Li43MWE4YzlhNTQ2YTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCkBAIC05NCwyNiArOTQsMTggQEAgaW50ZWxf
ZHBfc2V0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCXU4IGRwX3Ry
YWluX3BhdCkKIHsKIAl1OCBidWZbc2l6ZW9mKGludGVsX2RwLT50cmFpbl9zZXQpICsgMV07Ci0J
aW50IHJldCwgbGVuOworCWludCBsZW47CiAKIAlpbnRlbF9kcF9wcm9ncmFtX2xpbmtfdHJhaW5p
bmdfcGF0dGVybihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwKIAkJCQkJICAgICAgIGRwX3RyYWluX3Bh
dCk7CiAKIAlidWZbMF0gPSBkcF90cmFpbl9wYXQ7Ci0JaWYgKGludGVsX2RwX3RyYWluaW5nX3Bh
dHRlcm5fc3ltYm9sKGRwX3RyYWluX3BhdCkgPT0KLQkgICAgRFBfVFJBSU5JTkdfUEFUVEVSTl9E
SVNBQkxFKSB7Ci0JCS8qIGRvbid0IHdyaXRlIERQX1RSQUlOSU5HX0xBTkV4X1NFVCBvbiBkaXNh
YmxlICovCi0JCWxlbiA9IDE7Ci0JfSBlbHNlIHsKLQkJLyogRFBfVFJBSU5JTkdfTEFORXhfU0VU
IGZvbGxvdyBEUF9UUkFJTklOR19QQVRURVJOX1NFVCAqLwotCQltZW1jcHkoYnVmICsgMSwgaW50
ZWxfZHAtPnRyYWluX3NldCwgY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7Ci0JCWxlbiA9IGNydGNf
c3RhdGUtPmxhbmVfY291bnQgKyAxOwotCX0KKwkvKiBEUF9UUkFJTklOR19MQU5FeF9TRVQgZm9s
bG93IERQX1RSQUlOSU5HX1BBVFRFUk5fU0VUICovCisJbWVtY3B5KGJ1ZiArIDEsIGludGVsX2Rw
LT50cmFpbl9zZXQsIGNydGNfc3RhdGUtPmxhbmVfY291bnQpOworCWxlbiA9IGNydGNfc3RhdGUt
PmxhbmVfY291bnQgKyAxOwogCi0JcmV0ID0gZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5h
dXgsIERQX1RSQUlOSU5HX1BBVFRFUk5fU0VULAotCQkJCWJ1ZiwgbGVuKTsKLQotCXJldHVybiBy
ZXQgPT0gbGVuOworCXJldHVybiBkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBf
VFJBSU5JTkdfUEFUVEVSTl9TRVQsCisJCQkJIGJ1ZiwgbGVuKSA9PSBsZW47CiB9CiAKIHN0YXRp
YyBib29sCkBAIC00MDYsNiArMzk4LDEzIEBAIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2hhbm5l
bF9lcXVhbGl6YXRpb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlyZXR1cm4gY2hhbm5l
bF9lcTsKIH0KIAorc3RhdGljIGJvb2wgaW50ZWxfZHBfZGlzYWJsZV9kcGNkX3RyYWluaW5nX3Bh
dHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKK3sKKwl1OCB2YWwgPSBEUF9UUkFJTklO
R19QQVRURVJOX0RJU0FCTEU7CisKKwlyZXR1cm4gZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2Rw
LT5hdXgsIERQX1RSQUlOSU5HX1BBVFRFUk5fU0VULCAmdmFsLCAxKSA9PSAxOworfQorCiAvKioK
ICAqIGludGVsX2RwX3N0b3BfbGlua190cmFpbiAtIHN0b3AgbGluayB0cmFpbmluZwogICogQGlu
dGVsX2RwOiBEUCBzdHJ1Y3QKQEAgLTQyNyw4ICs0MjYsMTAgQEAgdm9pZCBpbnRlbF9kcF9zdG9w
X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIHsKIAlpbnRlbF9kcC0+bGlu
a190cmFpbmVkID0gdHJ1ZTsKIAotCWludGVsX2RwX3NldF9saW5rX3RyYWluKGludGVsX2RwLCBj
cnRjX3N0YXRlLAotCQkJCURQX1RSQUlOSU5HX1BBVFRFUk5fRElTQUJMRSk7CisJaW50ZWxfZHBf
cHJvZ3JhbV9saW5rX3RyYWluaW5nX3BhdHRlcm4oaW50ZWxfZHAsCisJCQkJCSAgICAgICBjcnRj
X3N0YXRlLAorCQkJCQkgICAgICAgRFBfVFJBSU5JTkdfUEFUVEVSTl9ESVNBQkxFKTsKKwlpbnRl
bF9kcF9kaXNhYmxlX2RwY2RfdHJhaW5pbmdfcGF0dGVybihpbnRlbF9kcCk7CiB9CiAKIHN0YXRp
YyBib29sCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
