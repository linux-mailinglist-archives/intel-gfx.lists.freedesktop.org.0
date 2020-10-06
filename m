Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2512851F8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 20:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0759F6E4F3;
	Tue,  6 Oct 2020 18:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AD66E4F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 18:58:21 +0000 (UTC)
IronPort-SDR: jpUG5BI3uctxPRTl5D9iZICWWX2f7J20+GUw+mYytd+elCFg+74NLv4moKPmym357T3dInbrW2
 L/ifrzSimxoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="182090446"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="182090446"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 11:58:17 -0700
IronPort-SDR: HyCGTdIhaEGJ3ce2MncCUiQtm/80D1cdpCQ6LXcR1zWnE7HH5QWkpl9Yq2X/rKpBlUOuJgjwN7
 vS2MeaeoNJ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="388001215"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 06 Oct 2020 11:58:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 21:58:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 21:58:09 +0300
Message-Id: <20201006185809.4655-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Refactor .hpd_irq_setup() calls a
 bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBhIHNtYWxsIHdyYXBwZXIgZm9yIC5ocGRfaXJxX3NldHVwKCkgd2hpY2ggZG9lcyB0aGUKImRv
IHdlIGV2ZW4gaGF2ZSB0aGUgaG9vaz8iIGFuZCAiYXJlIGRpc3BsYXkgaW50ZXJydXB0cyBlbmFi
bGVkPyIKY2hlY2tzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hvdHBsdWcuYyB8IDIyICsrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwppbmRleCA1YzU4YzFlZDY0OTMuLjYxMTBkNzFiNGYx
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVn
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKQEAg
LTIxMyw2ICsyMTMsMTIgQEAgaW50ZWxfaHBkX2lycV9zdG9ybV9zd2l0Y2hfdG9fcG9sbGluZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJfQogfQogCitzdGF0aWMgdm9pZCBp
bnRlbF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCWlm
IChpOTE1LT5kaXNwbGF5X2lycXNfZW5hYmxlZCAmJiBpOTE1LT5kaXNwbGF5LmhwZF9pcnFfc2V0
dXApCisJCWk5MTUtPmRpc3BsYXkuaHBkX2lycV9zZXR1cChpOTE1KTsKK30KKwogc3RhdGljIHZv
aWQgaW50ZWxfaHBkX2lycV9zdG9ybV9yZWVuYWJsZV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAq
d29yaykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQpAQCAtMjQ4LDgg
KzI1NCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2hwZF9pcnFfc3Rvcm1fcmVlbmFibGVfd29yayhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJCQlkZXZfcHJpdi0+aG90cGx1Zy5zdGF0c1twaW5d
LnN0YXRlID0gSFBEX0VOQUJMRUQ7CiAJfQogCi0JaWYgKGRldl9wcml2LT5kaXNwbGF5X2lycXNf
ZW5hYmxlZCAmJiBkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwKQotCQlkZXZfcHJpdi0+
ZGlzcGxheS5ocGRfaXJxX3NldHVwKGRldl9wcml2KTsKKwlpbnRlbF9ocGRfaXJxX3NldHVwKGRl
dl9wcml2KTsKIAogCXNwaW5fdW5sb2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsKIApAQCAt
NTU2LDggKzU2MSw4IEBAIHZvaWQgaW50ZWxfaHBkX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkgKiBEaXNhYmxlIGFueSBJUlFzIHRoYXQgc3Rvcm1zIHdl
cmUgZGV0ZWN0ZWQgb24uIFBvbGxpbmcgZW5hYmxlbWVudAogCSAqIGhhcHBlbnMgbGF0ZXIgaW4g
b3VyIGhvdHBsdWcgd29yay4KIAkgKi8KLQlpZiAoc3Rvcm1fZGV0ZWN0ZWQgJiYgZGV2X3ByaXYt
PmRpc3BsYXlfaXJxc19lbmFibGVkKQotCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVw
KGRldl9wcml2KTsKKwlpZiAoc3Rvcm1fZGV0ZWN0ZWQpCisJCWludGVsX2hwZF9pcnFfc2V0dXAo
ZGV2X3ByaXYpOwogCXNwaW5fdW5sb2NrKCZkZXZfcHJpdi0+aXJxX2xvY2spOwogCiAJLyoKQEAg
LTYwMiwxMiArNjA3LDkgQEAgdm9pZCBpbnRlbF9ocGRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJICogSW50ZXJydXB0IHNldHVwIGlzIGFscmVhZHkgZ3VhcmFudGVl
ZCB0byBiZSBzaW5nbGUtdGhyZWFkZWQsIHRoaXMgaXMKIAkgKiBqdXN0IHRvIG1ha2UgdGhlIGFz
c2VydF9zcGluX2xvY2tlZCBjaGVja3MgaGFwcHkuCiAJICovCi0JaWYgKGRldl9wcml2LT5kaXNw
bGF5X2lycXNfZW5hYmxlZCAmJiBkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwKSB7Ci0J
CXNwaW5fbG9ja19pcnEoJmRldl9wcml2LT5pcnFfbG9jayk7Ci0JCWlmIChkZXZfcHJpdi0+ZGlz
cGxheV9pcnFzX2VuYWJsZWQpCi0JCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwKGRl
dl9wcml2KTsKLQkJc3Bpbl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwotCX0KKwlz
cGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOworCWludGVsX2hwZF9pcnFfc2V0dXAo
ZGV2X3ByaXYpOworCXNwaW5fdW5sb2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsKIH0KIAog
c3RhdGljIHZvaWQgaTkxNV9ocGRfcG9sbF9pbml0X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3
b3JrKQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
