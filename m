Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8452D2C31B6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 21:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C076E0BA;
	Tue, 24 Nov 2020 20:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504766E23F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 20:12:02 +0000 (UTC)
IronPort-SDR: Lu6hMsKMtYN8X2Z9ElkJir9iT/jywhmBcVU/SkCl9UkMGmuhvvq2UeZpS4Ape9q7BRZVFR9KkF
 msJ2x7/MamqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256718291"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="256718291"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 12:12:01 -0800
IronPort-SDR: 2lahxxc+wTkAdvpvlBIO1nd578TpzGCQPsROhldtiTio0LEBKIUKdHN05U9FYeGdBlQpet2V8U
 zW+GcnLHENaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="343292329"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 24 Nov 2020 12:11:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Nov 2020 22:11:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 22:11:54 +0200
Message-Id: <20201124201156.17095-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Add
 intel_atomic_add_affected_planes()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmRy
bV9hdG9taWNfYWRkX2FmZmVjdGVkX3BsYW5lcygpIG9ubHkgY29uc2lkZXJzIHBsYW5lcyB3aGlj
aAphcmUgbG9naWNhbGx5IGVuYWJsZWQgaW4gdGhlIHVhcGkgc3RhdGUuIEZvciBiaWdqb2luZXIg
d2UgbmVlZAp0byBjb25zaWRlciBwbGFuZXMgbG9naWNhbGx5IGVuYWJsZWQgaW4gdGhlIGh3IHN0
YXRlLiBBZGQgYQpoZWxwZXIgZm9yIHRoYXQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyAgIHwgIDMgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEzICsrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDIgKysKIDMgZmlsZXMgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggYzQ0OWQyOGQwNTYwLi45MDM0YTIwOTNkYTAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTI0MTUs
OCArMjQxNSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfbW9kZXNldF9hbGxfcGlwZXMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCi0J
CXJldCA9IGRybV9hdG9taWNfYWRkX2FmZmVjdGVkX3BsYW5lcygmc3RhdGUtPmJhc2UsCi0JCQkJ
CQkgICAgICZjcnRjLT5iYXNlKTsKKwkJcmV0ID0gaW50ZWxfYXRvbWljX2FkZF9hZmZlY3RlZF9w
bGFuZXMoc3RhdGUsIGNydGMpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwNjg4OTJlNGQy
ZjAuLmZhNmNhNjE5MTQ4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKQEAgLTE1MTA3LDYgKzE1MTA3LDE5IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0
Y19hZGRfcGxhbmVzX3RvX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CXJldHVybiAwOwogfQogCitpbnQgaW50ZWxfYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCisJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKK3sKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKwlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQorCQlpbnRlbF9h
dG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKworCXJldHVybiBpbnRlbF9j
cnRjX2FkZF9wbGFuZXNfdG9fc3RhdGUoc3RhdGUsIGNydGMsCisJCQkJCSAgICAgIG9sZF9jcnRj
X3N0YXRlLT5lbmFibGVkX3BsYW5lcyB8CisJCQkJCSAgICAgIG5ld19jcnRjX3N0YXRlLT5lbmFi
bGVkX3BsYW5lcyk7Cit9CisKIHN0YXRpYyBib29sIGFjdGl2ZV9wbGFuZXNfYWZmZWN0c19taW5f
Y2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCS8qIFNlZSB7aHN3
LHZsdixpdmJ9X3BsYW5lX3JhdGlvKCkgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmgKaW5kZXggNWUwZDQyZDgyYzExLi5hNTc3MWJmZWNiYTYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC00OTksNiAr
NDk5LDggQEAgZW51bSBwaHlfZmlhIHsKIAkJCSAgICAgKChjb25uZWN0b3IpID0gdG9faW50ZWxf
Y29ubmVjdG9yKChfX3N0YXRlKS0+YmFzZS5jb25uZWN0b3JzW19faV0ucHRyKSwgXAogCQkJICAg
ICAobmV3X2Nvbm5lY3Rvcl9zdGF0ZSkgPSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0
ZSgoX19zdGF0ZSktPmJhc2UuY29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQogCitpbnQg
aW50ZWxfYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsCisJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CiB1OCBpbnRlbF9j
YWxjX2FjdGl2ZV9waXBlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCSAg
IHU4IGFjdGl2ZV9waXBlcyk7CiB2b2lkIGludGVsX2xpbmtfY29tcHV0ZV9tX24odTE2IGJwcCwg
aW50IG5sYW5lcywKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
