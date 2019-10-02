Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8967BC8E3D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF346E885;
	Wed,  2 Oct 2019 16:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE2A6E886
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:25:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 09:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="221455853"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 02 Oct 2019 09:25:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 19:25:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 19:25:03 +0300
Message-Id: <20191002162505.30716-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Allow ICL+ DSI on any pipe
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZXJlIGFyZSBubyBsb25nZXIgYW55IHBpcGU8LT5EU0kgcG9ydCBsaW1pdGF0aW9ucyBvbiBpY2wr
LgpQb3B1bGF0ZSB0aGUgcGlwZV9tYXNrIGFjY29yZGluZ2x5LgoKQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4
IDRjZWE4ZWQyYmQzMS4uOTlhNzVjNjExMzg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYwpAQCAtMTU1Miw2ICsxNTUyLDcgQEAgdm9pZCBpY2xfZHNpX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3I7CiAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGU7CiAJZW51bSBwb3J0
IHBvcnQ7CisJZW51bSBwaXBlIHBpcGU7CiAKIAlpZiAoIWludGVsX2Jpb3NfaXNfZHNpX3ByZXNl
bnQoZGV2X3ByaXYsICZwb3J0KSkKIAkJcmV0dXJuOwpAQCAtMTU4NCw3ICsxNTg1LDggQEAgdm9p
ZCBpY2xfZHNpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWVuY29k
ZXItPmdldF9od19zdGF0ZSA9IGdlbjExX2RzaV9nZXRfaHdfc3RhdGU7CiAJZW5jb2Rlci0+dHlw
ZSA9IElOVEVMX09VVFBVVF9EU0k7CiAJZW5jb2Rlci0+Y2xvbmVhYmxlID0gMDsKLQllbmNvZGVy
LT5waXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQyk7CisJ
Zm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkKKwkJZW5jb2Rlci0+cGlwZV9tYXNrIHw9IEJJ
VChwaXBlKTsKIAllbmNvZGVyLT5wb3dlcl9kb21haW4gPSBQT1dFUl9ET01BSU5fUE9SVF9EU0k7
CiAJZW5jb2Rlci0+Z2V0X3Bvd2VyX2RvbWFpbnMgPSBnZW4xMV9kc2lfZ2V0X3Bvd2VyX2RvbWFp
bnM7CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
