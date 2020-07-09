Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F226321A992
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 23:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1943A6EB3A;
	Thu,  9 Jul 2020 21:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EB06EB3B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 21:14:01 +0000 (UTC)
IronPort-SDR: rtGhbFM4n9bpLdRy08tMHJXd4+LWcOaswdiCWLt4wYmIccvkkDy1SqRAuzTjAMZ6neNRqytpKM
 bsJgX+xyOOfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149580927"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="149580927"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 14:14:01 -0700
IronPort-SDR: QzXMmQfz9i9dTJiDo3cgE+KaAihVXvirH+T1oT4ffhIgPCypXqbuKOnAGV51jh7Bio84UW5Ahf
 ZOC6SwHBk+IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="280429795"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 14:14:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 14:13:56 -0700
Message-Id: <20200709211357.23208-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200709211357.23208-1-lucas.demarchi@intel.com>
References: <20200709211357.23208-1-lucas.demarchi@intel.com>
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
