Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE1528025D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 17:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBBE6E8B3;
	Thu,  1 Oct 2020 15:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4397D6E8B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 15:17:27 +0000 (UTC)
IronPort-SDR: ZJML1bmFKfqVcDQxL7PyZl9w5kCFTsYxHs83vhKcPf4MXt7aI+Vu94Bs8R9Cc2Y+Z4KegGMLXt
 bbNZZqNPPq3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162835731"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="162835731"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 08:16:54 -0700
IronPort-SDR: V+384nnS9bK8/Yb8JNUJ0cOWNoEyPFpRTY7adJFTuKTJLK/CGLmwXp/k6bgFZ1/egOyQ6Tocbf
 MsH9Hfn94LDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="313082691"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 01 Oct 2020 08:16:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 18:16:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Oct 2020 18:16:38 +0300
Message-Id: <20201001151640.14590-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Wait for eDP panel power cycle
 delay on reboot on all platforms
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dGVuZCB0aGUgZURQIHBhbmVsIHBvd2VyIGN5Y2xlIGRlbGF5IHdhaXQgb24gcmVib290IGhhbmRs
aW5nCnRvIGNvdmVyIGFsbCBwbGF0Zm9ybXMuIE5vIHJlYXNvbiB0byB0aGluayB0aGF0IFZMVi9D
SFYgYXJlCmluIGFueSB3YXkgc3BlY2lhbCBzaW5jZSB0aGUgZG9jdW1lbnRhdGlvbiBzdGF0ZXMg
dGhhdCB0aGUKaGFyZHdhcmUgcG93ZXIgY3ljbGUgZGVsYXkgZ29lcyBiYWNrIHRvIGl0cyBkZWZh
dWx0IHZhbHVlIG9uCnJlc2V0LCBhbmQgdGhhdCBtYXkgbm90IGJlIGVub3VnaCBmb3IgYWxsIHBh
bmVscy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICB8IDUgKyst
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAgfCAxICsKIDMgZmls
ZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDU3NDIzOTRjODI5Mi4uZTNmY2QyNTkx
YTZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTUxNzUs
NiArNTE3NSw3IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAllbmNvZGVyLT5nZXRfaHdfc3RhdGUgPSBpbnRl
bF9kZGlfZ2V0X2h3X3N0YXRlOwogCWVuY29kZXItPmdldF9jb25maWcgPSBpbnRlbF9kZGlfZ2V0
X2NvbmZpZzsKIAllbmNvZGVyLT5zdXNwZW5kID0gaW50ZWxfZHBfZW5jb2Rlcl9zdXNwZW5kOwor
CWVuY29kZXItPnNodXRkb3duID0gaW50ZWxfZHBfZW5jb2Rlcl9zaHV0ZG93bjsKIAllbmNvZGVy
LT5nZXRfcG93ZXJfZG9tYWlucyA9IGludGVsX2RkaV9nZXRfcG93ZXJfZG9tYWluczsKIAogCWVu
Y29kZXItPnR5cGUgPSBJTlRFTF9PVVRQVVRfRERJOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCmluZGV4IGUwZjJlOTIzNjc4NS4uM2ExNGEwMDNiNGM5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02Njg0LDcgKzY2ODQsNyBAQCB2b2lk
IGludGVsX2RwX2VuY29kZXJfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5j
b2RlcikKIAkJZWRwX3BhbmVsX3ZkZF9vZmZfc3luYyhpbnRlbF9kcCk7CiB9CiAKLXN0YXRpYyB2
b2lkIGludGVsX2RwX2VuY29kZXJfc2h1dGRvd24oc3RydWN0IGludGVsX2VuY29kZXIgKmludGVs
X2VuY29kZXIpCit2b2lkIGludGVsX2RwX2VuY29kZXJfc2h1dGRvd24oc3RydWN0IGludGVsX2Vu
Y29kZXIgKmludGVsX2VuY29kZXIpCiB7CiAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVu
Y190b19pbnRlbF9kcChpbnRlbF9lbmNvZGVyKTsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsK
QEAgLTgwMjksOCArODAyOSw3IEBAIGJvb2wgaW50ZWxfZHBfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJaW50ZWxfZW5jb2Rlci0+Z2V0X2NvbmZpZyA9IGludGVsX2Rw
X2dldF9jb25maWc7CiAJaW50ZWxfZW5jb2Rlci0+dXBkYXRlX3BpcGUgPSBpbnRlbF9wYW5lbF91
cGRhdGVfYmFja2xpZ2h0OwogCWludGVsX2VuY29kZXItPnN1c3BlbmQgPSBpbnRlbF9kcF9lbmNv
ZGVyX3N1c3BlbmQ7Ci0JaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJ
RVcoZGV2X3ByaXYpKQotCQlpbnRlbF9lbmNvZGVyLT5zaHV0ZG93biA9IGludGVsX2RwX2VuY29k
ZXJfc2h1dGRvd247CisJaW50ZWxfZW5jb2Rlci0+c2h1dGRvd24gPSBpbnRlbF9kcF9lbmNvZGVy
X3NodXRkb3duOwogCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkgewogCQlpbnRlbF9lbmNv
ZGVyLT5wcmVfcGxsX2VuYWJsZSA9IGNodl9kcF9wcmVfcGxsX2VuYWJsZTsKIAkJaW50ZWxfZW5j
b2Rlci0+cHJlX2VuYWJsZSA9IGNodl9wcmVfZW5hYmxlX2RwOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oCmluZGV4IDY2ODU0YWFiOTg4Ny4uNzQ2NjQ5OGQ0YzAxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCkBAIC01Nyw2ICs1Nyw3IEBAIHZv
aWQgaW50ZWxfZHBfc2lua19zZXRfZGVjb21wcmVzc2lvbl9zdGF0ZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAogCQkJCQkgICBib29sIGVuYWJsZSk7CiB2b2lkIGludGVsX2RwX2VuY29kZXJf
cmVzZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKTsKIHZvaWQgaW50ZWxfZHBfZW5jb2Rl
cl9zdXNwZW5kKHN0cnVjdCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyKTsKK3ZvaWQgaW50
ZWxfZHBfZW5jb2Rlcl9zaHV0ZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2Rl
cik7CiB2b2lkIGludGVsX2RwX2VuY29kZXJfZmx1c2hfd29yayhzdHJ1Y3QgZHJtX2VuY29kZXIg
KmVuY29kZXIpOwogaW50IGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZywKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
