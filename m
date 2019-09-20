Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B46B976C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 20:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6D26FD9C;
	Fri, 20 Sep 2019 18:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C6B6FD9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 18:54:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 11:54:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="202555005"
Received: from ericferx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.24])
 by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2019 11:54:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 21:54:19 +0300
Message-Id: <20190920185421.17822-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190920185421.17822-1-jani.nikula@intel.com>
References: <20190920185421.17822-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: abstract
 intel_panel_sanitize_ssc() from intel_modeset_init()
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

VGhlIGNvZGUgaXMgdG9vIHNwZWNpZmljIGFuZCBkZXRhaWxlZCB0byBoYXZlIG9wZW4gaW4gYSBo
aWdoIGxldmVsCmZ1bmN0aW9uLiBBYnN0cmFjdCBhd2F5LiBBcyBhIGRyaXZlLWJ5IGltcHJvdmVt
ZW50IHN3aXRjaCB0byB1c2luZwplbmFibGVkZGlzYWJsZWQoKSBpbiBsb2dnaW5nIGFuZCBnaXQg
cmlkIG9mIGEgcmVkdW5kYW50ICEhLiBObwpmdW5jdGlvbmFsIGNoYW5nZXMuCgp2MjogZHJvcCB0
aGUgISEgd2hpbGUgYXQgaXQgdG9vIChDaHJpcykKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDM5ICsrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1MzhhMzNhZGJjMGUuLjllNjhkZjhhOTk0
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTc1NTIsNiArNzU1MiwyNyBAQCBpbnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBiaXRzX3Blcl9w
aXhlbCwgaW50IG5sYW5lcywKIAkJICAgIGNvbnN0YW50X24pOwogfQogCitzdGF0aWMgdm9pZCBp
bnRlbF9wYW5lbF9zYW5pdGl6ZV9zc2Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQoreworCS8qCisJICogVGhlcmUgbWF5IGJlIG5vIFZCVDsgYW5kIGlmIHRoZSBCSU9TIGVuYWJs
ZWQgU1NDIHdlIGNhbgorCSAqIGp1c3Qga2VlcCB1c2luZyBpdCB0byBhdm9pZCB1bm5lY2Vzc2Fy
eSBmbGlja2VyLiAgV2hlcmVhcyBpZiB0aGUKKwkgKiBCSU9TIGlzbid0IHVzaW5nIGl0LCBkb24n
dCBhc3N1bWUgaXQgd2lsbCB3b3JrIGV2ZW4gaWYgdGhlIFZCVAorCSAqIGluZGljYXRlcyBhcyBt
dWNoLgorCSAqLworCWlmIChIQVNfUENIX0lCWChkZXZfcHJpdikgfHwgSEFTX1BDSF9DUFQoZGV2
X3ByaXYpKSB7CisJCWJvb2wgYmlvc19sdmRzX3VzZV9zc2MgPSBJOTE1X1JFQUQoUENIX0RSRUZf
Q09OVFJPTCkgJgorCQkJRFJFRl9TU0MxX0VOQUJMRTsKKworCQlpZiAoZGV2X3ByaXYtPnZidC5s
dmRzX3VzZV9zc2MgIT0gYmlvc19sdmRzX3VzZV9zc2MpIHsKKwkJCURSTV9ERUJVR19LTVMoIlNT
QyAlcyBieSBCSU9TLCBvdmVycmlkaW5nIFZCVCB3aGljaCBzYXlzICVzXG4iLAorCQkJCSAgICAg
IGVuYWJsZWRkaXNhYmxlZChiaW9zX2x2ZHNfdXNlX3NzYyksCisJCQkJICAgICAgZW5hYmxlZGRp
c2FibGVkKGRldl9wcml2LT52YnQubHZkc191c2Vfc3NjKSk7CisJCQlkZXZfcHJpdi0+dmJ0Lmx2
ZHNfdXNlX3NzYyA9IGJpb3NfbHZkc191c2Vfc3NjOworCQl9CisJfQorfQorCiBzdGF0aWMgaW5s
aW5lIGJvb2wgaW50ZWxfcGFuZWxfdXNlX3NzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiB7CiAJaWYgKGk5MTVfbW9kcGFyYW1zLnBhbmVsX3VzZV9zc2MgPj0gMCkKQEAgLTE2
MTY1LDIzICsxNjE4Niw3IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZp
Y2UgKmRldikKIAogCWludGVsX2luaXRfcG0oZGV2X3ByaXYpOwogCi0JLyoKLQkgKiBUaGVyZSBt
YXkgYmUgbm8gVkJUOyBhbmQgaWYgdGhlIEJJT1MgZW5hYmxlZCBTU0Mgd2UgY2FuCi0JICoganVz
dCBrZWVwIHVzaW5nIGl0IHRvIGF2b2lkIHVubmVjZXNzYXJ5IGZsaWNrZXIuICBXaGVyZWFzIGlm
IHRoZQotCSAqIEJJT1MgaXNuJ3QgdXNpbmcgaXQsIGRvbid0IGFzc3VtZSBpdCB3aWxsIHdvcmsg
ZXZlbiBpZiB0aGUgVkJUCi0JICogaW5kaWNhdGVzIGFzIG11Y2guCi0JICovCi0JaWYgKEhBU19Q
Q0hfSUJYKGRldl9wcml2KSB8fCBIQVNfUENIX0NQVChkZXZfcHJpdikpIHsKLQkJYm9vbCBiaW9z
X2x2ZHNfdXNlX3NzYyA9ICEhKEk5MTVfUkVBRChQQ0hfRFJFRl9DT05UUk9MKSAmCi0JCQkJCSAg
ICBEUkVGX1NTQzFfRU5BQkxFKTsKLQotCQlpZiAoZGV2X3ByaXYtPnZidC5sdmRzX3VzZV9zc2Mg
IT0gYmlvc19sdmRzX3VzZV9zc2MpIHsKLQkJCURSTV9ERUJVR19LTVMoIlNTQyAlc2FibGVkIGJ5
IEJJT1MsIG92ZXJyaWRpbmcgVkJUIHdoaWNoIHNheXMgJXNhYmxlZFxuIiwKLQkJCQkgICAgIGJp
b3NfbHZkc191c2Vfc3NjID8gImVuIiA6ICJkaXMiLAotCQkJCSAgICAgZGV2X3ByaXYtPnZidC5s
dmRzX3VzZV9zc2MgPyAiZW4iIDogImRpcyIpOwotCQkJZGV2X3ByaXYtPnZidC5sdmRzX3VzZV9z
c2MgPSBiaW9zX2x2ZHNfdXNlX3NzYzsKLQkJfQotCX0KKwlpbnRlbF9wYW5lbF9zYW5pdGl6ZV9z
c2MoZGV2X3ByaXYpOwogCiAJLyoKIAkgKiBNYXhpbXVtIGZyYW1lYnVmZmVyIGRpbWVuc2lvbnMs
IGNob3NlbiB0byBtYXRjaAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
