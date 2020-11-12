Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFB72B0DAF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C2F6E3EB;
	Thu, 12 Nov 2020 19:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8EA86E3EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:17:24 +0000 (UTC)
IronPort-SDR: YU5WoXCMlcu7TY+Azpp3vUVpjbfrCKKh5a/lMI/It44Z34H8zOjjJUaJl5wPRQrt4SEe1ZJt5e
 NyvQ8qNrZ3bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="255075806"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="255075806"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:17:24 -0800
IronPort-SDR: jfgY5wArjCAR+gRgxBruk0X/7k2yfb+XN7xjxo58v1uYrkzv7ICe3hoj+JRJ80oR3mNm29KO8o
 UvkgVEgTinRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="366463218"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Nov 2020 11:17:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Nov 2020 21:17:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 21:17:13 +0200
Message-Id: <20201112191718.16683-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Move encoder->get_config to a new
 function
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

RnJvbTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KCk5vIGZ1bmN0
aW9uYWwgY2hhbmdlcywgY3JlYXRlIGEgc2VwYXJhdGUgaW50ZWxfZW5jb2Rlcl9nZXRfY29uZmln
KCkKZnVuY3Rpb24gdGhhdCBjYWxscyBlbmNvZGVyLT5nZXRfY29uZmlnIGhvb2suClRoaXMgaXMg
bmVlZGVkIHNvIHRoYXQgbGF0ZXIgd2UgY2FuIGFkZCBiZWlnam9pZW5yIHJlbGF0ZWQKcmVhZG91
dCBoZXJlLgoKU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4KW3ZzeXJqYWxhOiBNb3ZlIHRoZSBjb2RlIGFyb3VuZCBmb3IgdGhlIGZ1dHVyZV0K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IDk1NjZhOGQxZjQ3MC4uMTEwZDA4ZjJhNWM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtODE0MSw2ICs4MTQxLDEyIEBAIHN0YXRp
YyB2b2lkIGludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQogCQkJaWxrX3BpcGVfcGl4ZWxfcmF0ZShjcnRjX3N0YXRlKTsKIH0K
IAorc3RhdGljIHZvaWQgaW50ZWxfZW5jb2Rlcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAorCQkJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCit7CisJZW5jb2Rlci0+Z2V0X2NvbmZpZyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKK30KKwog
c3RhdGljIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLAogCQkJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogewpA
QCAtMTI0MDMsNyArMTI0MDksNyBAQCBpbnRlbF9lbmNvZGVyX2N1cnJlbnRfbW9kZShzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJcmV0dXJuIE5VTEw7CiAJfQogCi0JZW5jb2Rlci0+
Z2V0X2NvbmZpZyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9lbmNvZGVyX2dldF9jb25m
aWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAKIAlpbnRlbF9tb2RlX2Zyb21fcGlwZV9jb25maWco
bW9kZSwgY3J0Y19zdGF0ZSk7CiAKQEAgLTE0NDQ4LDcgKzE0NDU0LDcgQEAgdmVyaWZ5X2NydGNf
c3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkJcGlwZV9uYW1lKHBpcGUpKTsKIAog
CQlpZiAoYWN0aXZlKQotCQkJZW5jb2Rlci0+Z2V0X2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZp
Zyk7CisJCQlpbnRlbF9lbmNvZGVyX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOwog
CX0KIAogCWludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHBpcGVfY29uZmlnKTsKQEAgLTE4
NzYxLDcgKzE4NzY3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0
YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJCQljcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0
Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKIAogCQkJZW5jb2Rlci0+YmFzZS5jcnRjID0gJmNy
dGMtPmJhc2U7Ci0JCQllbmNvZGVyLT5nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUpOwor
CQkJaW50ZWxfZW5jb2Rlcl9nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCQkJaWYg
KGVuY29kZXItPnN5bmNfc3RhdGUpCiAJCQkJZW5jb2Rlci0+c3luY19zdGF0ZShlbmNvZGVyLCBj
cnRjX3N0YXRlKTsKIAkJfSBlbHNlIHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
