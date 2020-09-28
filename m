Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E3A27B5BB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 21:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE823894FE;
	Mon, 28 Sep 2020 19:52:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1E7894FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 19:52:06 +0000 (UTC)
IronPort-SDR: O1DZf5sGpZ83HFKfvYbGLDBenocmOsHU5Lb0ghFK29wan+Ac89fbf2qaMu3lzozdBSJ4D7bO6w
 L9J6PeJyvamg==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="161280181"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="161280181"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 12:52:05 -0700
IronPort-SDR: pD7779nhlg8ZS3qxH9zte5fkUr+KwTUeJ81JDAZaQhXZk6MKKJqr46M6nVbltLRoNff2XQymdS
 n/+vB2tH+22Q==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="488737505"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 12:52:05 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Sep 2020 12:55:16 -0700
Message-Id: <20200928195516.78387-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/ehl: Limit eDP to HBR2
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
TCBhbmQgSlNMLgoKQlNwZWM6IDMyMjQ3CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgpDYzogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTEgKysr
KysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDU0YTRiODFlYTNm
Zi4uOTZkMmM3Njc3MmQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CkBAIC0yNzcsMTMgKzI3NywyMCBAQCBzdGF0aWMgaW50IGljbF9tYXhfc291cmNlX3JhdGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3Bo
eShkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2UucG9ydCk7CiAKIAlpZiAoaW50ZWxfcGh5X2lzX2Nv
bWJvKGRldl9wcml2LCBwaHkpICYmCi0JICAgICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYK
IAkgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCiAJCXJldHVybiA1NDAwMDA7CiAKIAly
ZXR1cm4gODEwMDAwOwogfQogCitzdGF0aWMgaW50IGVobF9tYXhfc291cmNlX3JhdGUoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkKK3sKKwlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkK
KwkJcmV0dXJuIDU0MDAwMDsKKworCXJldHVybiA4MTAwMDA7Cit9CisKIHN0YXRpYyB2b2lkCiBp
bnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CkBA
IC0zMTgsNiArMzI1LDggQEAgaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQogCQlzaXplID0gQVJSQVlfU0laRShjbmxfcmF0ZXMpOwogCQlpZiAoSVNf
R0VOKGRldl9wcml2LCAxMCkpCiAJCQltYXhfcmF0ZSA9IGNubF9tYXhfc291cmNlX3JhdGUoaW50
ZWxfZHApOworCQllbHNlIGlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJCQltYXhfcmF0
ZSA9IGVobF9tYXhfc291cmNlX3JhdGUoaW50ZWxfZHApOwogCQllbHNlCiAJCQltYXhfcmF0ZSA9
IGljbF9tYXhfc291cmNlX3JhdGUoaW50ZWxfZHApOwogCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChk
ZXZfcHJpdikpIHsKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
