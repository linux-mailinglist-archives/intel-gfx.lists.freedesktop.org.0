Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB19EFEE2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 19:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54135891D9;
	Tue, 30 Apr 2019 17:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68860891D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 17:33:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 10:33:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="169364530"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 30 Apr 2019 10:33:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2019 20:33:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 20:33:31 +0300
Message-Id: <20190430173331.22821-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190425203759.16342-1-ville.syrjala@linux.intel.com>
References: <20190425203759.16342-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix 90/270 degree rotated RGB565
 src coord checks
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN1
cHBvc2VkbHkgYm90aCBzcmMgY29vcmRpbmF0ZXMgaGF2ZSB0byBldmVuIHdoZW4gZG9pbmcgOTAv
MjcwCmRlZ3JlZSByb3RhdGlvbiB3aXRoIFJHQjU2NS4gVGhpcyBpcyBkZWZpbml0ZWx5IHRydWUg
Zm9yIHRoZQpYIGNvb3JkaW5hdGUgKHdlIGp1c3QgZ2V0IGEgYmxhY2sgc2NyZWVuIHdoZW4gaXQg
aXMgb2RkKS4gTXkKZXhwZXJpbWVudHMgZGlkbid0IHNob3cgYW55IG1pc2JlaGF2aW91ciB3aXRo
IGFuIG9kZApZIGNvb3JkaW5hdGUsIGJ1dCBsZXQncyB0cnVzdCB0aGUgc3BlYyBhbmQgcmVqZWN0
IHRoYXQgb25lCmFzIHdlbGwuCgp2MjogSWdub3JlIGNjcyBoc3ViL3ZzdWIKClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgfCAyOCArKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwppbmRleCAyOTEzZTg5MjgwZDcu
LmIxMzNmMjU0ZTI2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3By
aXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKQEAgLTI5NCwy
NiArMjk0LDMyIEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAlzcmMtPnkxID0gc3JjX3kgPDwgMTY7
CiAJc3JjLT55MiA9IChzcmNfeSArIHNyY19oKSA8PCAxNjsKIAotCWlmICghZmItPmZvcm1hdC0+
aXNfeXV2KQotCQlyZXR1cm4gMDsKLQotCS8qIFlVViBzcGVjaWZpYyBjaGVja3MgKi8KLQlpZiAo
IXJvdGF0ZWQpIHsKKwlpZiAoZmItPmZvcm1hdC0+Zm9ybWF0ID09IERSTV9GT1JNQVRfUkdCNTY1
ICYmIHJvdGF0ZWQpIHsKKwkJaHN1YiA9IDI7CisJCXZzdWIgPSAyOworCX0gZWxzZSBpZiAoaXNf
Y2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikpIHsKKwkJaHN1YiA9IDE7CisJCXZzdWIgPSAxOwor
CX0gZWxzZSB7CiAJCWhzdWIgPSBmYi0+Zm9ybWF0LT5oc3ViOwogCQl2c3ViID0gZmItPmZvcm1h
dC0+dnN1YjsKLQl9IGVsc2UgewotCQloc3ViID0gdnN1YiA9IG1heChmYi0+Zm9ybWF0LT5oc3Vi
LCBmYi0+Zm9ybWF0LT52c3ViKTsKIAl9CiAKKwlpZiAocm90YXRlZCkKKwkJaHN1YiA9IHZzdWIg
PSBtYXgoaHN1YiwgdnN1Yik7CisKKwlpZiAoaHN1YiA9PSAxICYmIHZzdWIgPT0gMSkKKwkJcmV0
dXJuIDA7CisKIAlpZiAoc3JjX3ggJSBoc3ViIHx8IHNyY193ICUgaHN1YikgewotCQlEUk1fREVC
VUdfS01TKCJzcmMgeC93ICgldSwgJXUpIG11c3QgYmUgYSBtdWx0aXBsZSBvZiAldSBmb3IgJXNZ
VVYgcGxhbmVzXG4iLAotCQkJICAgICAgc3JjX3gsIHNyY193LCBoc3ViLCByb3RhdGVkID8gInJv
dGF0ZWQgIiA6ICIiKTsKKwkJRFJNX0RFQlVHX0tNUygic3JjIHgvdyAoJXUsICV1KSBtdXN0IGJl
IGEgbXVsdGlwbGUgb2YgJXUgKHJvdGF0ZWQ6ICVzKVxuIiwKKwkJCSAgICAgIHNyY194LCBzcmNf
dywgaHN1YiwgeWVzbm8ocm90YXRlZCkpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKIAlpZiAo
c3JjX3kgJSB2c3ViIHx8IHNyY19oICUgdnN1YikgewotCQlEUk1fREVCVUdfS01TKCJzcmMgeS9o
ICgldSwgJXUpIG11c3QgYmUgYSBtdWx0aXBsZSBvZiAldSBmb3IgJXNZVVYgcGxhbmVzXG4iLAot
CQkJICAgICAgc3JjX3ksIHNyY19oLCB2c3ViLCByb3RhdGVkID8gInJvdGF0ZWQgIiA6ICIiKTsK
KwkJRFJNX0RFQlVHX0tNUygic3JjIHkvaCAoJXUsICV1KSBtdXN0IGJlIGEgbXVsdGlwbGUgb2Yg
JXUgKHJvdGF0ZWQ6ICVzKVxuIiwKKwkJCSAgICAgIHNyY195LCBzcmNfaCwgdnN1YiwgeWVzbm8o
cm90YXRlZCkpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
