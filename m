Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CD321DF85
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 20:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B406E179;
	Mon, 13 Jul 2020 18:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848A26E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 18:23:41 +0000 (UTC)
IronPort-SDR: hn27XGryBYV8dn0DzS8Dxwb5eM3NpwgLk3275mswYKn/xlvabM48WegXY5Lo1rLBT1i/YazS5h
 c+nrwoqEH+Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="128267373"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="128267373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 11:23:40 -0700
IronPort-SDR: SjW58c9LhZkhYQ/+CPWyUD1frOa/9ja6452gsDN3LQvVQcGYMshO4tWA067WoyaOtg6iN7wwss
 V4eQG3W2yZsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="269792943"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2020 11:23:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 11:23:20 -0700
Message-Id: <20200713182321.12390-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200713182321.12390-1-lucas.demarchi@intel.com>
References: <20200713182321.12390-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915/dg1: Remove SHPD_FILTER_CNT register
 programming
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQnNwZWMg
YXNrcyB1cyB0byByZW1vdmUgdGhlIHNwZWNpYWwgcHJvZ3JhbW1pbmcgb2YgdGhlClNIUERfRklM
VEVSX0NOVCByZWdpc3RlciB3aGljaCB3ZSBoYXZlIGJlZW4gZG9pbmcgc2luY2UgQ05QKy4KCkJz
cGVjOiA0OTMwNQoKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwppbmRleCA0YzlkMGE0YTI0NzYuLjFmYTY3NzAwZDhmNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCkBAIC0zMTE0LDcgKzMxMTQsOCBAQCBzdGF0aWMgdm9pZCBpY3BfaHBkX2lycV9zZXR1
cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaG90cGx1Z19pcnFzID0gc2Rl
X2RkaV9tYXNrIHwgc2RlX3RjX21hc2s7CiAJZW5hYmxlZF9pcnFzID0gaW50ZWxfaHBkX2VuYWJs
ZWRfaXJxcyhkZXZfcHJpdiwgZGV2X3ByaXYtPmhvdHBsdWcucGNoX2hwZCk7CiAKLQlJOTE1X1dS
SVRFKFNIUERfRklMVEVSX0NOVCwgU0hQRF9GSUxURVJfQ05UXzUwMF9BREopOworCWlmIChJTlRF
TF9QQ0hfVFlQRShkZXZfcHJpdikgPD0gUENIX1RHUCkKKwkJSTkxNV9XUklURShTSFBEX0ZJTFRF
Ul9DTlQsIFNIUERfRklMVEVSX0NOVF81MDBfQURKKTsKIAogCWlieF9kaXNwbGF5X2ludGVycnVw
dF91cGRhdGUoZGV2X3ByaXYsIGhvdHBsdWdfaXJxcywgZW5hYmxlZF9pcnFzKTsKIAotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
