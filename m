Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9098CE6C8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0181D6E11C;
	Mon,  7 Oct 2019 15:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FC66E11C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:09:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:53 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="187012696"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:27 +0300
Message-Id: <c4a72d5ea4d3701039d14befb10a3852d21ad027.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
References: <cover.1570460714.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: switch i915_driver_probe() to
 use i915 local variable
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

UHJlZmVyIGk5MTUgb3ZlciBkZXZfcHJpdiB3aGVyZSBwb3NzaWJsZS4gTm8gZnVuY3Rpb25hbCBj
aGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgNDIgKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwg
MjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggNjNkNDdkNjk5MzA1
Li4wYWJmZWNlMjBjNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMTQ2Miw2MiArMTQ2
Miw2MiBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0
IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiB7CiAJY29uc3Qgc3RydWN0IGludGVsX2Rldmlj
ZV9pbmZvICptYXRjaF9pbmZvID0KIAkJKHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyAqKWVudC0+
ZHJpdmVyX2RhdGE7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2OworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1OwogCWludCByZXQ7CiAKLQlkZXZfcHJpdiA9IGk5MTVf
ZHJpdmVyX2NyZWF0ZShwZGV2LCBlbnQpOwotCWlmIChJU19FUlIoZGV2X3ByaXYpKQotCQlyZXR1
cm4gUFRSX0VSUihkZXZfcHJpdik7CisJaTkxNSA9IGk5MTVfZHJpdmVyX2NyZWF0ZShwZGV2LCBl
bnQpOworCWlmIChJU19FUlIoaTkxNSkpCisJCXJldHVybiBQVFJfRVJSKGk5MTUpOwogCiAJLyog
RGlzYWJsZSBudWNsZWFyIHBhZ2VmbGlwIGJ5IGRlZmF1bHQgb24gcHJlLUlMSyAqLwogCWlmICgh
aTkxNV9tb2RwYXJhbXMubnVjbGVhcl9wYWdlZmxpcCAmJiBtYXRjaF9pbmZvLT5nZW4gPCA1KQot
CQlkZXZfcHJpdi0+ZHJtLmRyaXZlcl9mZWF0dXJlcyAmPSB+RFJJVkVSX0FUT01JQzsKKwkJaTkx
NS0+ZHJtLmRyaXZlcl9mZWF0dXJlcyAmPSB+RFJJVkVSX0FUT01JQzsKIAogCXJldCA9IHBjaV9l
bmFibGVfZGV2aWNlKHBkZXYpOwogCWlmIChyZXQpCiAJCWdvdG8gb3V0X2Zpbmk7CiAKLQlyZXQg
PSBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShkZXZfcHJpdik7CisJcmV0ID0gaTkxNV9kcml2ZXJf
ZWFybHlfcHJvYmUoaTkxNSk7CiAJaWYgKHJldCA8IDApCiAJCWdvdG8gb3V0X3BjaV9kaXNhYmxl
OwogCi0JZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7
CisJZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKIAotCWk5
MTVfZGV0ZWN0X3ZncHUoZGV2X3ByaXYpOworCWk5MTVfZGV0ZWN0X3ZncHUoaTkxNSk7CiAKLQly
ZXQgPSBpOTE1X2RyaXZlcl9tbWlvX3Byb2JlKGRldl9wcml2KTsKKwlyZXQgPSBpOTE1X2RyaXZl
cl9tbWlvX3Byb2JlKGk5MTUpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIG91dF9ydW50aW1lX3Bt
X3B1dDsKIAotCXJldCA9IGk5MTVfZHJpdmVyX2h3X3Byb2JlKGRldl9wcml2KTsKKwlyZXQgPSBp
OTE1X2RyaXZlcl9od19wcm9iZShpOTE1KTsKIAlpZiAocmV0IDwgMCkKIAkJZ290byBvdXRfY2xl
YW51cF9tbWlvOwogCi0JcmV0ID0gaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShkZXZfcHJpdik7
CisJcmV0ID0gaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShpOTE1KTsKIAlpZiAocmV0IDwgMCkK
IAkJZ290byBvdXRfY2xlYW51cF9odzsKIAotCWk5MTVfZHJpdmVyX3JlZ2lzdGVyKGRldl9wcml2
KTsKKwlpOTE1X2RyaXZlcl9yZWdpc3RlcihpOTE1KTsKIAotCWVuYWJsZV9ycG1fd2FrZXJlZl9h
c3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CisJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2Vy
dHMoJmk5MTUtPnJ1bnRpbWVfcG0pOwogCi0JaTkxNV93ZWxjb21lX21lc3NhZ2VzKGRldl9wcml2
KTsKKwlpOTE1X3dlbGNvbWVfbWVzc2FnZXMoaTkxNSk7CiAKIAlyZXR1cm4gMDsKIAogb3V0X2Ns
ZWFudXBfaHc6Ci0JaTkxNV9kcml2ZXJfaHdfcmVtb3ZlKGRldl9wcml2KTsKLQlpOTE1X2dndHRf
ZHJpdmVyX3JlbGVhc2UoZGV2X3ByaXYpOworCWk5MTVfZHJpdmVyX2h3X3JlbW92ZShpOTE1KTsK
KwlpOTE1X2dndHRfZHJpdmVyX3JlbGVhc2UoaTkxNSk7CiBvdXRfY2xlYW51cF9tbWlvOgotCWk5
MTVfZHJpdmVyX21taW9fcmVsZWFzZShkZXZfcHJpdik7CisJaTkxNV9kcml2ZXJfbW1pb19yZWxl
YXNlKGk5MTUpOwogb3V0X3J1bnRpbWVfcG1fcHV0OgotCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3Nl
cnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7Ci0JaTkxNV9kcml2ZXJfbGF0ZV9yZWxlYXNlKGRl
dl9wcml2KTsKKwllbmFibGVfcnBtX3dha2VyZWZfYXNzZXJ0cygmaTkxNS0+cnVudGltZV9wbSk7
CisJaTkxNV9kcml2ZXJfbGF0ZV9yZWxlYXNlKGk5MTUpOwogb3V0X3BjaV9kaXNhYmxlOgogCXBj
aV9kaXNhYmxlX2RldmljZShwZGV2KTsKIG91dF9maW5pOgotCWk5MTVfcHJvYmVfZXJyb3IoZGV2
X3ByaXYsICJEZXZpY2UgaW5pdGlhbGl6YXRpb24gZmFpbGVkICglZClcbiIsIHJldCk7Ci0JaTkx
NV9kcml2ZXJfZGVzdHJveShkZXZfcHJpdik7CisJaTkxNV9wcm9iZV9lcnJvcihpOTE1LCAiRGV2
aWNlIGluaXRpYWxpemF0aW9uIGZhaWxlZCAoJWQpXG4iLCByZXQpOworCWk5MTVfZHJpdmVyX2Rl
c3Ryb3koaTkxNSk7CiAJcmV0dXJuIHJldDsKIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
