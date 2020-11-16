Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E152B3D19
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 07:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D12889D4F;
	Mon, 16 Nov 2020 06:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46BA89D4F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 06:27:30 +0000 (UTC)
IronPort-SDR: uRqjgUCqxWOXQP1bq9Jjmuo6U98GWMuHSBD5529xKpiGJhIKzbuhK4+QJRCHuqidfQVOhEDxcz
 W5w5xfa9ZPgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="234860640"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="234860640"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 22:27:28 -0800
IronPort-SDR: yduT8nH5g9poZaMv0CRIDR6DGERpQ9fXK0nsMsIWrzYJU5x0HvVZJ5CYB9cuEU5JZM9P3WRj4i
 tplwg6Jy2mdA==
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="543472056"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 15 Nov 2020 22:27:27 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 22:29:48 -0800
Message-Id: <20201116062948.25052-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201116062948.25052-1-manasi.d.navare@intel.com>
References: <20201116062948.25052-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v2 3/3] drm/i915: Remove
 skl_adjusted_plane_pixel_rate()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2Ugc2tsX2FkanVzdGVkX3BsYW5lX3BpeGVsX3JhdGUoKSB3aXRoIHRoZSBnZW5lcmljCmlu
dGVsX3BsYW5lX3BpeGVsX3JhdGUoKS4gVGhlIHR3byBzaG91bGQgcHJvZHVjZSBpZGVudGljYWwK
cmVzdWx0cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNs
YXYubGlzb3Zza2l5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIHwgMjcgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRl
eCA2Y2NhY2QwN2FiOTQuLmEyMGI1MDUxZjE4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBA
IC0zMyw2ICszMyw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9wbGFuZV9oZWxwZXIuaD4KIAogI2lu
Y2x1ZGUgImRpc3BsYXkvaW50ZWxfYXRvbWljLmgiCisjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2J3LmgiCiAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9m
YmMuaCIKQEAgLTUxMDIsMzAgKzUxMDMsNiBAQCBpbnRlbF9nZXRfbGluZXRpbWVfdXMoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJcmV0dXJuIGxpbmV0aW1lX3Vz
OwogfQogCi1zdGF0aWMgdTMyCi1za2xfYWRqdXN0ZWRfcGxhbmVfcGl4ZWxfcmF0ZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKLQkJCSAgICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCi17Ci0Jc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7Ci0J
dTY0IGFkanVzdGVkX3BpeGVsX3JhdGU7Ci0JdWludF9maXhlZF8xNl8xNl90IGRvd25zY2FsZV9h
bW91bnQ7Ci0KLQkvKiBTaG91bGRuJ3QgcmVhY2ggaGVyZSBvbiBkaXNhYmxlZCBwbGFuZXMuLi4g
Ki8KLQlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sCi0JCQkhaW50ZWxfd21fcGxhbmVf
dmlzaWJsZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSkpKQotCQlyZXR1cm4gMDsKLQotCS8qCi0J
ICogQWRqdXN0ZWQgcGxhbmUgcGl4ZWwgcmF0ZSBpcyBqdXN0IHRoZSBwaXBlJ3MgYWRqdXN0ZWQg
cGl4ZWwgcmF0ZQotCSAqIHdpdGggYWRkaXRpb25hbCBhZGp1c3RtZW50cyBmb3IgcGxhbmUtc3Bl
Y2lmaWMgc2NhbGluZy4KLQkgKi8KLQlhZGp1c3RlZF9waXhlbF9yYXRlID0gY3J0Y19zdGF0ZS0+
cGl4ZWxfcmF0ZTsKLQlkb3duc2NhbGVfYW1vdW50ID0gc2tsX3BsYW5lX2Rvd25zY2FsZV9hbW91
bnQoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOwotCi0JcmV0dXJuIG11bF9yb3VuZF91cF91MzJf
Zml4ZWQxNihhZGp1c3RlZF9waXhlbF9yYXRlLAotCQkJCQkgICAgZG93bnNjYWxlX2Ftb3VudCk7
Ci19Ci0KIHN0YXRpYyBpbnQKIHNrbF9jb21wdXRlX3dtX3BhcmFtcyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJICAgICAgaW50IHdpZHRoLCBjb25zdCBzdHJ1
Y3QgZHJtX2Zvcm1hdF9pbmZvICpmb3JtYXQsCkBAIC01MjM4LDcgKzUyMTUsNyBAQCBza2xfY29t
cHV0ZV9wbGFuZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCiAJcmV0dXJuIHNrbF9jb21wdXRlX3dtX3BhcmFtcyhjcnRjX3N0YXRlLCB3aWR0aCwK
IAkJCQkgICAgIGZiLT5mb3JtYXQsIGZiLT5tb2RpZmllciwKIAkJCQkgICAgIHBsYW5lX3N0YXRl
LT5ody5yb3RhdGlvbiwKLQkJCQkgICAgIHNrbF9hZGp1c3RlZF9wbGFuZV9waXhlbF9yYXRlKGNy
dGNfc3RhdGUsIHBsYW5lX3N0YXRlKSwKKwkJCQkgICAgIGludGVsX3BsYW5lX3BpeGVsX3JhdGUo
Y3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpLAogCQkJCSAgICAgd3AsIGNvbG9yX3BsYW5lKTsKIH0K
IAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
