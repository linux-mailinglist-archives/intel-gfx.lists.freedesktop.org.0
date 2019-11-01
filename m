Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCBBEC486
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 15:20:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F228489D2E;
	Fri,  1 Nov 2019 14:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E299589D2E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 14:20:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 07:20:33 -0700
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="194673881"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 07:20:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 16:20:24 +0200
Message-Id: <20191101142024.13877-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2] drm/i915: update rawclk also on resume
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgQ05QIGl0J3MgcG9zc2libGUgZm9yIHJhd2NsayB0byBoYXZlIHR3byBkaWZmZXJlbnQg
dmFsdWVzLCAxOS4yCmFuZCAyNCBNSHouIElmIHRoZSB2YWx1ZSBpbmRpY2F0ZWQgYnkgU0ZVU0Vf
U1RSQVAgcmVnaXN0ZXIgaXMgZGlmZmVyZW50CmZyb20gdGhlIHBvd2VyIG9uIGRlZmF1bHQgZm9y
IFBDSF9SQVdDTEtfRlJFUSwgd2UnbGwgZW5kIHVwIGhhdmluZyBhCm1pc21hdGNoIGJldHdlZW4g
dGhlIHJhd2NsayBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGVzIGFmdGVyCnN1c3BlbmQvcmVz
dW1lLiBPbiBwcmV2aW91cyBwbGF0Zm9ybXMgdGhpcyB1c2VkIHRvIHdvcmsgYnkgYWNjaWRlbnQs
CmJlY2F1c2UgdGhlIHBvd2VyIG9uIGRlZmF1bHRzIHdvcmtlZCBqdXN0IGZpbmUuCgpVcGRhdGUg
dGhlIHJhd2NsayBhbHNvIG9uIHJlc3VtZS4gVGhlIG5hdHVyYWwgcGxhY2UgdG8gZG8gdGhpcyB3
b3VsZCBiZQppbnRlbF9tb2Rlc2V0X2luaXRfaHcoKSwgaG93ZXZlciBWTFYvQ0hWIG5lZWQgaXQg
ZG9uZSBiZWZvcmUKaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCkuIFRodXMgcHV0IGl0IHRo
ZXJlIGV2ZW4gaWYgaXQgZmVlbHMKc2xpZ2h0bHkgb3V0IG9mIHBsYWNlLgoKdjI6IENhbGwgaW50
ZWxfdXBkYXRlX3Jhd2NsY2soKSBpbiBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBmb3Ig
YWxsCiAgICBwbGF0Zm9ybXMgKFZpbGxlKS4KClJlcG9ydGVkLWJ5OiBTaGF3biBMZWUgPHNoYXdu
LmMubGVlQGludGVsLmNvbT4KQ2M6IFNoYXduIExlZSA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgpD
YzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAzICsrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgICAgICAgfCAzIC0tLQogMiBm
aWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA3
MDdhYzExMGUyNzEuLmNlMWI2NGY0ZGQ0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTUwMTUsNiArNTAxNSw5IEBAIHZv
aWQgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBib29sIHJlc3VtZSkKIAogCXBvd2VyX2RvbWFpbnMtPmluaXRpYWxpemluZyA9IHRydWU7
CiAKKwkvKiBNdXN0IGhhcHBlbiBiZWZvcmUgcG93ZXIgZG9tYWluIGluaXQgb24gVkxWL0NIViAq
LworCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkxNSk7CisKIAlpZiAoSU5URUxfR0VOKGk5MTUpID49
IDExKSB7CiAJCWljbF9kaXNwbGF5X2NvcmVfaW5pdChpOTE1LCByZXN1bWUpOwogCX0gZWxzZSBp
ZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMzM0
MDQ4NWMxMmUzLi43MTk0NDM5OWRjZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMjk2
LDkgKzI5Niw2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAocmV0KQogCQlnb3RvIGNsZWFudXBfdmdhX2Ns
aWVudDsKIAotCS8qIG11c3QgaGFwcGVuIGJlZm9yZSBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRf
aHcoKSBvbiBWTFYvQ0hWICovCi0JaW50ZWxfdXBkYXRlX3Jhd2NsayhpOTE1KTsKLQogCWludGVs
X3Bvd2VyX2RvbWFpbnNfaW5pdF9odyhpOTE1LCBmYWxzZSk7CiAKIAlpbnRlbF9jc3JfdWNvZGVf
aW5pdChpOTE1KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
