Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE89E27B5DD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 22:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B323C6E13A;
	Mon, 28 Sep 2020 20:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A0C6E13A
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 20:00:01 +0000 (UTC)
IronPort-SDR: KGLodqgIfgk6KyfJI/OXW/AqTYFpmlQIw61dt2Tk080e/stF0lvUVg4r1aEDs3rt3gIYgGazKv
 aZvIQdUcRf3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="159434195"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="159434195"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 13:00:01 -0700
IronPort-SDR: JA1vGfyiQmmKRBi/IkggF8TzEp7m0HmZJvpx0qDVz3PHQsxqsYcZZcR6R2IqyogrreV+81o2+t
 N0hlT48AsdbA==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="384528726"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 13:00:00 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Sep 2020 13:03:09 -0700
Message-Id: <20200928200309.88982-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
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

UmVjZW50IHVwZGF0ZSBpbiBkb2N1bWVudGF0aW9uIGRlZmVhdHVyZWQgZURQIEhCUjMgZm9yIEVI
TCBhbmQgSlNMLgoKdjI6Ci0gUmVtb3ZlIGRlYWQgY29kZSBpbiBlaGxfZ2V0X2NvbWJvX2J1Zl90
cmFucygpCgpCU3BlYzogMzIyNDcKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+CkNjOiBWaWR5YSBTcmluaXZhcyA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDkgKystLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwgMTEgKysrKysr
KysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA0ZDA2MTc4Y2Q3
NmMuLmVmMDZiN2I4MmJlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCkBAIC0xMDgyLDEzICsxMDgyLDggQEAgZWhsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAkJcmV0dXJuIGlj
bF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pOwogCWNhc2UgSU5URUxfT1VUUFVUX0VE
UDoKIAkJaWYgKGRldl9wcml2LT52YnQuZWRwLmxvd192c3dpbmcpIHsKLQkJCWlmIChyYXRlID4g
NTQwMDAwKSB7Ci0JCQkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2VkcF9oYnIzKTsKLQkJCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2VkcF9oYnIzOwotCQkJfSBlbHNlIHsKLQkJCQkqbl9lbnRyaWVzID0gQVJSQVlf
U0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjIpOwotCQkJCXJldHVy
biBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjI7Ci0JCQl9CisJCQkqbl9l
bnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjIpOworCQkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMjsK
IAkJfQogCQkvKiBmYWxsIHRocm91Z2ggKi8KIAlkZWZhdWx0OgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDU0YTRiODFlYTNmZi4uOTZkMmM3Njc3MmQ2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yNzcsMTMgKzI3NywyMCBA
QCBzdGF0aWMgaW50IGljbF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZGlnX3BvcnQt
PmJhc2UucG9ydCk7CiAKIAlpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpICYm
Ci0JICAgICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYKIAkgICAgIWludGVsX2RwX2lzX2Vk
cChpbnRlbF9kcCkpCiAJCXJldHVybiA1NDAwMDA7CiAKIAlyZXR1cm4gODEwMDAwOwogfQogCitz
dGF0aWMgaW50IGVobF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkK
K3sKKwlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKKwkJcmV0dXJuIDU0MDAwMDsKKwor
CXJldHVybiA4MTAwMDA7Cit9CisKIHN0YXRpYyB2b2lkCiBpbnRlbF9kcF9zZXRfc291cmNlX3Jh
dGVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CkBAIC0zMTgsNiArMzI1LDggQEAgaW50
ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCQlzaXpl
ID0gQVJSQVlfU0laRShjbmxfcmF0ZXMpOwogCQlpZiAoSVNfR0VOKGRldl9wcml2LCAxMCkpCiAJ
CQltYXhfcmF0ZSA9IGNubF9tYXhfc291cmNlX3JhdGUoaW50ZWxfZHApOworCQllbHNlIGlmIChJ
U19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJCQltYXhfcmF0ZSA9IGVobF9tYXhfc291cmNlX3Jh
dGUoaW50ZWxfZHApOwogCQllbHNlCiAJCQltYXhfcmF0ZSA9IGljbF9tYXhfc291cmNlX3JhdGUo
aW50ZWxfZHApOwogCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpIHsKLS0gCjIuMjgu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
