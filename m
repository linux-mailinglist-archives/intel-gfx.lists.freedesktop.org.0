Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8572F21B460
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2666EBE6;
	Fri, 10 Jul 2020 11:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8498B6EBE6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:09 +0000 (UTC)
IronPort-SDR: pwHc/srJsQPG/gILL4sYgNNBtA2ePKPD7nkkv+h+8Xtyk931OfsD2iKuZYW69Xot9jmh/qdHS5
 diQZif/bAqqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653634"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653634"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:09 -0700
IronPort-SDR: 59RcHpLjrOJxgiImnz04b83405yM0nrqsgfFbHg+WupaOi3VNmHo8sXW3dRZLhnjOvL10vdFfI
 YpZaMfQsPVDA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257332"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:06 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:02 +0100
Message-Id: <20200710115757.290984-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 05/60] drm/i915/dg1: Remove SHPD_FILTER_CNT
 register programming
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
