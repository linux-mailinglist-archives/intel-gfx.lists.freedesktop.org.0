Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3FA2B27C5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F268C6E86D;
	Fri, 13 Nov 2020 22:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A56196E86B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:04:52 +0000 (UTC)
IronPort-SDR: gNkMhL52NgjfZmcS/x07PsRDrcFxi3zviqyrVF+zft2Ig2x60+wnMRXOiq9/gnWy6i7kI3EqEk
 Ul8SN/7MFGXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="255248287"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="255248287"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:04:46 -0800
IronPort-SDR: DL3Ocy+bqgDYFpTd2wDqWZrMj134hiXedVQS6CeMIdDq4OVkLQP73BDtRreWhbIuyqTuoF++vk
 FKgo31WCOxkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="367073281"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 13 Nov 2020 14:04:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:04:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:50 +0200
Message-Id: <20201113220358.24794-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/23] drm/i915: Add crtcs affected by bigjoiner
 to the state
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugc3VyZSBib3RoIGNydGNzIHBhcnRpY2lwYXRpbmcgaW4gdGhlIGJpZ2pvaW5lciBzdHVmZgph
cmUgaW4gdGhlIHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDI1ICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggMDdiZWU1Y2FhY2ZlLi40NjU4NzcwOTc1ODIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTQyMiw2ICsxNTQy
MiwyNyBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19hc3luYyhzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBpbnRlbF9i
aWdqb2luZXJfYWRkX2FmZmVjdGVkX2NydGNzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQoreworCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOworCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCWludCBpOworCisJZm9yX2VhY2hfbmV3X2ludGVsX2Ny
dGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmxpbmtlZF9jcnRjX3N0YXRlOworCisJCWlmICghY3J0Y19zdGF0ZS0+Ymln
am9pbmVyKQorCQkJY29udGludWU7CisKKwkJbGlua2VkX2NydGNfc3RhdGUgPSBpbnRlbF9hdG9t
aWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5iYXNlLAorCQkJCQkJCQljcnRjX3N0YXRlLT5iaWdq
b2luZXJfbGlua2VkX2NydGMpOworCQlpZiAoSVNfRVJSKGxpbmtlZF9jcnRjX3N0YXRlKSkKKwkJ
CXJldHVybiBQVFJfRVJSKGxpbmtlZF9jcnRjX3N0YXRlKTsKKwl9CisKKwlyZXR1cm4gMDsKK30K
KwogLyoqCiAgKiBpbnRlbF9hdG9taWNfY2hlY2sgLSB2YWxpZGF0ZSBzdGF0ZSBvYmplY3QKICAq
IEBkZXY6IGRybSBkZXZpY2UKQEAgLTE1NDQ3LDYgKzE1NDY4LDEwIEBAIHN0YXRpYyBpbnQgaW50
ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJaWYgKHJldCkKIAkJZ290
byBmYWlsOwogCisJcmV0ID0gaW50ZWxfYmlnam9pbmVyX2FkZF9hZmZlY3RlZF9jcnRjcyhzdGF0
ZSk7CisJaWYgKHJldCkKKwkJZ290byBmYWlsOworCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2Ny
dGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAogCQkJCQkgICAgbmV3X2Ny
dGNfc3RhdGUsIGkpIHsKIAkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkgewot
LSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
