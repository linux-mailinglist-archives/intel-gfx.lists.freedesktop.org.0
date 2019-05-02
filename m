Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B9F11C08
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281BD896BF;
	Thu,  2 May 2019 15:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743AF89711
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:01:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963752"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:01:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:44 +0300
Message-Id: <d30a79d008b875f708f5acf7924f9ca8ab06b575.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: move i915_vgacntrl_reg() where
 needed
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVkdWNlIGNsdXR0ZXIgZnJvbSBpOTE1X2Rydi5oLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgfCAxMCAtLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMgfCAxMCArKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGE0YWU2ZS4u
NWY2NWM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTMzNTcsMTYgKzMzNTcsNiBAQCBl
eHRlcm4gdm9pZCBpbnRlbF9kaXNwbGF5X3ByaW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkx
NV9lcnJvcl9zdGF0ZV9idWYgKmUsCiAjZGVmaW5lIElOVEVMX0JST0FEQ0FTVF9SR0JfRlVMTCAx
CiAjZGVmaW5lIElOVEVMX0JST0FEQ0FTVF9SR0JfTElNSVRFRCAyCiAKLXN0YXRpYyBpbmxpbmUg
aTkxNV9yZWdfdCBpOTE1X3ZnYWNudHJsX3JlZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCi17Ci0JaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpKQotCQlyZXR1cm4gVkxWX1ZHQUNOVFJMOwotCWVsc2UgaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gNSkKLQkJcmV0dXJuIENQVV9WR0FDTlRSTDsKLQllbHNlCi0JCXJldHVybiBW
R0FDTlRSTDsKLX0KLQogc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIG1zZWNzX3RvX2ppZmZp
ZXNfdGltZW91dChjb25zdCB1bnNpZ25lZCBpbnQgbSkKIHsKIAl1bnNpZ25lZCBsb25nIGogPSBt
c2Vjc190b19qaWZmaWVzKG0pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDAxOWVjY2YuLmI1NDIzNzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTE1NDg1LDYgKzE1NDg1LDE2IEBAIHZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5X2hvb2tzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZGV2X3ByaXYtPmRpc3BsYXkudXBkYXRl
X2NydGNzID0gaW50ZWxfdXBkYXRlX2NydGNzOwogfQogCitzdGF0aWMgaTkxNV9yZWdfdCBpOTE1
X3ZnYWNudHJsX3JlZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJaWYg
KElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQorCQly
ZXR1cm4gVkxWX1ZHQUNOVFJMOworCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNSkK
KwkJcmV0dXJuIENQVV9WR0FDTlRSTDsKKwllbHNlCisJCXJldHVybiBWR0FDTlRSTDsKK30KKwog
LyogRGlzYWJsZSB0aGUgVkdBIHBsYW5lIHRoYXQgd2UgbmV2ZXIgdXNlICovCiBzdGF0aWMgdm9p
ZCBpOTE1X2Rpc2FibGVfdmdhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
