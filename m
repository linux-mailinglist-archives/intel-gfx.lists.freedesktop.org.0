Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C31323F34
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 15:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F3F6EAD3;
	Wed, 24 Feb 2021 14:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761C46EAD3
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 14:42:35 +0000 (UTC)
IronPort-SDR: XkdwRBREoijOIaXRakDvjRhtImPaOYmZVpSiMN3kcjgl0sTnCxhvxyJ31j7nsBjrej02TPfbMZ
 OOOI8N+toa0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="164408261"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="164408261"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 06:42:34 -0800
IronPort-SDR: l4yall8DV4UuyfJvQ5klzHQy4uFUvUnjN1uZbgbupfusaoDZPZitgqcRANWdQdC6xXafwPdLfA
 NoY/aH5H+msQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="367007181"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 24 Feb 2021 06:42:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Feb 2021 16:42:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Feb 2021 16:42:14 +0200
Message-Id: <20210224144214.24803-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
References: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Extend
 icl_sanitize_encoder_pll_mapping() to all DDI platforms
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
dyB0aGF0IGFsbCB0aGUgZW5jb2RlciBjbG9jayBzdHVmZiBpcyB1bmlmb3JtbHkgYWJzdHJhY3Rl
ZApmb3IgYWxsIGhzdysgcGxhdGZvcm1zLCBsZXQncyBleHRlbmQgaWNsX3Nhbml0aXplX2VuY29k
ZXJfcGxsX21hcHBpbmcoKQp0byBjb3ZlciBhbGwgb2YgdGhlbS4KCk5vdCBzdXJlIHRoZXJlIGlz
IGEgcGFydGljdWxhciBiZW5lZml0IGluIGRvaW5nIHNvLCBidXQgbGVzcyBzcGVjaWFsCmNhc2Vz
IGFsd2F5cyBtYWtlcyBtZSBoYXBweS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5oICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgNCArKy0tCiAzIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YwppbmRleCA3ZDQ3N2M0MDA3YzcuLmRkMjIwM2Y4NzA3OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0yMTM0LDcgKzIxMzQsNyBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJ
ZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsKIH0KIAotdm9pZCBpY2xfc2FuaXRpemVf
ZW5jb2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3ZvaWQg
aW50ZWxfZGRpX3Nhbml0aXplX2VuY29kZXJfcGxsX21hcHBpbmcoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1
KGVuY29kZXItPmJhc2UuZGV2KTsKIAl1MzIgcG9ydF9tYXNrOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmgKaW5kZXggOTljZWJiZTZiNTg2Li41OWM2YjAxZDQxOTkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaApAQCAtNjYsNiArNjYsNiBA
QCB1MzIgZGRpX3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIGludCBp
bnRlbF9kZGlfdG9nZ2xlX2hkY3BfYml0cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5j
b2RlciwKIAkJCSAgICAgICBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIsCiAJCQkgICAg
ICAgYm9vbCBlbmFibGUsIHUzMiBoZGNwX21hc2spOwotdm9pZCBpY2xfc2FuaXRpemVfZW5jb2Rl
cl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7Cit2b2lkIGludGVs
X2RkaV9zYW5pdGl6ZV9lbmNvZGVyX3BsbF9tYXBwaW5nKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfRERJX0hfXyAqLwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA4YjVjYjgxNGI2NzkuLjg3ZGI1
MzMxMTc2YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTEzMTQ0LDggKzEzMTQ0LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfc2FuaXRpemVfZW5j
b2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkvKiBub3RpZnkgb3ByZWdpb24g
b2YgdGhlIHNhbml0aXplZCBlbmNvZGVyIHN0YXRlICovCiAJaW50ZWxfb3ByZWdpb25fbm90aWZ5
X2VuY29kZXIoZW5jb2RlciwgY29ubmVjdG9yICYmIGhhc19hY3RpdmVfY3J0Yyk7CiAKLQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKLQkJaWNsX3Nhbml0aXplX2VuY29kZXJfcGxsX21h
cHBpbmcoZW5jb2Rlcik7CisJaWYgKEhBU19EREkoZGV2X3ByaXYpKQorCQlpbnRlbF9kZGlfc2Fu
aXRpemVfZW5jb2Rlcl9wbGxfbWFwcGluZyhlbmNvZGVyKTsKIH0KIAogLyogRklYTUUgcmVhZCBv
dXQgZnVsbCBwbGFuZSBzdGF0ZSBmb3IgYWxsIHBsYW5lcyAqLwotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
