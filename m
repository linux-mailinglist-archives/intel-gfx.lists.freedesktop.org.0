Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 303D22C31B7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 21:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B25C6E177;
	Tue, 24 Nov 2020 20:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF686E0B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 20:12:05 +0000 (UTC)
IronPort-SDR: 2Hsvs3RTqcQ6ven9xvG1n052RmJsebYqqyE2ka4Ta3y7fY+ODvvg73JP7Ho8tTIrtJ1+24Cyev
 ppvpsIPOtBeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="236148268"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="236148268"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 12:12:04 -0800
IronPort-SDR: ktH1HEIOaAe8HAVMfb/LNRCEho05P8TwQdzJu09xMu8E6g6sXaeJIJoU9ozExkL78DAR+ZQCSs
 JKRMuh/WgtkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="313364920"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 24 Nov 2020 12:12:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Nov 2020 22:12:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 22:11:55 +0200
Message-Id: <20201124201156.17095-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Properly flag modesets for all
 bigjoiner pipes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IGVpdGhlciBvZiB0aGUgYmlnam9pbmVyIHBpcGVzIG5lZWRzIGEgbW9kZXNldCB0aGVuIHdlIG5l
ZWQKYSBtb2Rlc2V0IG9uIGJvdGggcGlwZXMuIE1ha2UgaXQgc28uCgp2MjogU3BsaXQgb3V0IHRo
ZSBraWxsX2JpZ2pvaW5lcl9zbGF2ZSgpIGNoYW5nZSAoTWFuYXNpKQogICAgQWRkIGFmZmVjdGVk
IGNvbm5lY3RvcnMvcGxhbmVzCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMzIgKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZmE2Y2E2MTkxNDgwLi4wNGRhZDNi
YWY4YTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CkBAIC0xNTUyNSwyMCArMTU1MjUsMzYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tf
YXN5bmMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAKIHN0YXRpYyBpbnQgaW50
ZWxfYmlnam9pbmVyX2FkZF9hZmZlY3RlZF9jcnRjcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIHsKLQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsK
KwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKIAlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YzsKIAlpbnQgaTsKIAogCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0
YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKSB7CiAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICps
aW5rZWRfY3J0Y19zdGF0ZTsKKwkJc3RydWN0IGludGVsX2NydGMgKmxpbmtlZF9jcnRjOworCQlp
bnQgcmV0OwogCiAJCWlmICghY3J0Y19zdGF0ZS0+Ymlnam9pbmVyKQogCQkJY29udGludWU7CiAK
LQkJbGlua2VkX2NydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRl
LT5iYXNlLAotCQkJCQkJCQljcnRjX3N0YXRlLT5iaWdqb2luZXJfbGlua2VkX2NydGMpOworCQls
aW5rZWRfY3J0YyA9IGNydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0YzsKKwkJbGlua2Vk
X2NydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5iYXNlLCBs
aW5rZWRfY3J0Yyk7CiAJCWlmIChJU19FUlIobGlua2VkX2NydGNfc3RhdGUpKQogCQkJcmV0dXJu
IFBUUl9FUlIobGlua2VkX2NydGNfc3RhdGUpOworCisJCWlmICghbmVlZHNfbW9kZXNldChjcnRj
X3N0YXRlKSkKKwkJCWNvbnRpbnVlOworCisJCWxpbmtlZF9jcnRjX3N0YXRlLT51YXBpLm1vZGVf
Y2hhbmdlZCA9IHRydWU7CisKKwkJcmV0ID0gZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfY29ubmVj
dG9ycygmc3RhdGUtPmJhc2UsCisJCQkJCQkJICZsaW5rZWRfY3J0Yy0+YmFzZSk7CisJCWlmIChy
ZXQpCisJCQlyZXR1cm4gcmV0OworCisJCXJldCA9IGludGVsX2F0b21pY19hZGRfYWZmZWN0ZWRf
cGxhbmVzKHN0YXRlLCBsaW5rZWRfY3J0Yyk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0Owog
CX0KIAogCXJldHVybiAwOwpAQCAtMTU2NTgsNiArMTU2NzQsMTYgQEAgc3RhdGljIGludCBpbnRl
bF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCQluZXdfY3J0Y19zdGF0
ZS0+dXBkYXRlX3BpcGUgPSBmYWxzZTsKIAkJCX0KIAkJfQorCisJCWlmIChuZXdfY3J0Y19zdGF0
ZS0+Ymlnam9pbmVyKSB7CisJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbGlua2VkX2NydGNf
c3RhdGUgPQorCQkJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIG5ld19j
cnRjX3N0YXRlLT5iaWdqb2luZXJfbGlua2VkX2NydGMpOworCisJCQlpZiAobmVlZHNfbW9kZXNl
dChsaW5rZWRfY3J0Y19zdGF0ZSkpIHsKKwkJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2No
YW5nZWQgPSB0cnVlOworCQkJCW5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSA9IGZhbHNlOwor
CQkJfQorCQl9CiAJfQogCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3Rh
dGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
