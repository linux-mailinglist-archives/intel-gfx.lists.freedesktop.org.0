Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B31340C87
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28EF6E94A;
	Thu, 18 Mar 2021 18:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C93F16E94A
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 18:10:46 +0000 (UTC)
IronPort-SDR: Leu6/HU6njbG5SN1EBGiMHYY0kvaOZou4DAyaoqHxe8Vw5Tom4kWuiaJlb8UBKEGLAkyzm/wPL
 S48dM2RdEXcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="209748627"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="209748627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:10:46 -0700
IronPort-SDR: S6nmHpMNAL627B8feFzhJVW6Je9fHsHl8pkNLuSoP1BaUd4pY9Os5iKkqHIa6cm+7Mw/w17myc
 krf7Ni6lpuOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="411995127"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 18 Mar 2021 11:10:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Mar 2021 20:10:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Mar 2021 20:10:39 +0200
Message-Id: <20210318181039.17260-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210318181039.17260-1-ville.syrjala@linux.intel.com>
References: <20210318181039.17260-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Remove stray newlines
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
YnVuY2ggb2YgZmlsZXMgaGF2ZSBhIHN0cmF5IG5ld2xpbmUgYXQgdGhlIGVuZC4gUmVtb3ZlIGl0
LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYyAg
ICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2df
ZGVidWdmcy5jIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oICAgICAg
ICAgICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWFfdHlwZXMuaCAg
ICAgICAgICAgICAgfCAxIC0KIDUgZmlsZXMgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jCmluZGV4IDhhNTJiZWFlZDJkYS4u
NzM5MWNkMTk1ZDQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5
eHhfcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUu
YwpAQCAtMTAzOCw0ICsxMDM4LDMgQEAgaTl4eF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAKIAlwbGFuZV9jb25maWctPmZiID0gaW50ZWxfZmI7CiB9
Ci0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMKaW5kZXggMWYzMzVjYjA5MTQ5Li5hMDZjNDc0MjIzYzEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCkBAIC0yMjYzLDQg
KzIyNjMsMyBAQCBza2xfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAogZXJyb3I6CiAJa2ZyZWUoaW50ZWxfZmIpOwogfQotCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nX2RlYnVnZnMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2dfZGVidWdmcy5jCmluZGV4IDEyOWUwY2Y3
ZGZlMi4uNjRlMGI4NmJmMjU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfbG9nX2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfbG9nX2RlYnVnZnMuYwpAQCAtMTIxLDQgKzEyMSwzIEBAIHZvaWQgaW50ZWxf
Z3VjX2xvZ19kZWJ1Z2ZzX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2csCiAKIAlp
bnRlbF9ndF9kZWJ1Z2ZzX3JlZ2lzdGVyX2ZpbGVzKHJvb3QsIGZpbGVzLCBBUlJBWV9TSVpFKGZp
bGVzKSwgbG9nKTsKIH0KLQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
YXJhbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKaW5kZXggNDhmNDdl
NDRlODQ4Li4xOGJiYzkyYjY0MmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaApAQCAt
OTYsNCArOTYsMyBAQCB2b2lkIGk5MTVfcGFyYW1zX2NvcHkoc3RydWN0IGk5MTVfcGFyYW1zICpk
ZXN0LCBjb25zdCBzdHJ1Y3QgaTkxNV9wYXJhbXMgKnNyYyk7CiB2b2lkIGk5MTVfcGFyYW1zX2Zy
ZWUoc3RydWN0IGk5MTVfcGFyYW1zICpwYXJhbXMpOwogCiAjZW5kaWYKLQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWFfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdm1hX3R5cGVzLmgKaW5kZXggZjVjYjg0OGI3YTdlLi5jNzYxNGZiYWJiOWMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hX3R5cGVzLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWFfdHlwZXMuaApAQCAtMjgyLDQgKzI4MiwzIEBAIHN0
cnVjdCBpOTE1X3ZtYSB7CiB9OwogCiAjZW5kaWYKLQotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
