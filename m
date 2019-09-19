Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CB0B7B86
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADE46F7E7;
	Thu, 19 Sep 2019 14:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1756F7E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:04:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:34 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="362527167"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 17:03:51 +0300
Message-Id: <3dfcf6edec33a4485c5d29eec39d4f58f4d829df.1568901239.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: abstract
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
ZW50IHN3aXRjaCB0byB1c2luZwplbmFibGVkZGlzYWJsZWQoKSBpbiBsb2dnaW5nLiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgMzkgKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRp
b25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCmluZGV4IGMwZmM2NjkwM2ZlYy4uZWUwZDM0ZDc2YjA4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNzUzOSw2ICs3
NTM5LDI3IEBAIGludGVsX2xpbmtfY29tcHV0ZV9tX24odTE2IGJpdHNfcGVyX3BpeGVsLCBpbnQg
bmxhbmVzLAogCQkgICAgY29uc3RhbnRfbik7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX3BhbmVs
X3Nhbml0aXplX3NzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJLyoK
KwkgKiBUaGVyZSBtYXkgYmUgbm8gVkJUOyBhbmQgaWYgdGhlIEJJT1MgZW5hYmxlZCBTU0Mgd2Ug
Y2FuCisJICoganVzdCBrZWVwIHVzaW5nIGl0IHRvIGF2b2lkIHVubmVjZXNzYXJ5IGZsaWNrZXIu
ICBXaGVyZWFzIGlmIHRoZQorCSAqIEJJT1MgaXNuJ3QgdXNpbmcgaXQsIGRvbid0IGFzc3VtZSBp
dCB3aWxsIHdvcmsgZXZlbiBpZiB0aGUgVkJUCisJICogaW5kaWNhdGVzIGFzIG11Y2guCisJICov
CisJaWYgKEhBU19QQ0hfSUJYKGRldl9wcml2KSB8fCBIQVNfUENIX0NQVChkZXZfcHJpdikpIHsK
KwkJYm9vbCBiaW9zX2x2ZHNfdXNlX3NzYyA9ICEhKEk5MTVfUkVBRChQQ0hfRFJFRl9DT05UUk9M
KSAmCisJCQkJCSAgICBEUkVGX1NTQzFfRU5BQkxFKTsKKworCQlpZiAoZGV2X3ByaXYtPnZidC5s
dmRzX3VzZV9zc2MgIT0gYmlvc19sdmRzX3VzZV9zc2MpIHsKKwkJCURSTV9ERUJVR19LTVMoIlNT
QyAlcyBieSBCSU9TLCBvdmVycmlkaW5nIFZCVCB3aGljaCBzYXlzICVzXG4iLAorCQkJCSAgICAg
IGVuYWJsZWRkaXNhYmxlZChiaW9zX2x2ZHNfdXNlX3NzYyksCisJCQkJICAgICAgZW5hYmxlZGRp
c2FibGVkKGRldl9wcml2LT52YnQubHZkc191c2Vfc3NjKSk7CisJCQlkZXZfcHJpdi0+dmJ0Lmx2
ZHNfdXNlX3NzYyA9IGJpb3NfbHZkc191c2Vfc3NjOworCQl9CisJfQorfQorCiBzdGF0aWMgaW5s
aW5lIGJvb2wgaW50ZWxfcGFuZWxfdXNlX3NzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiB7CiAJaWYgKGk5MTVfbW9kcGFyYW1zLnBhbmVsX3VzZV9zc2MgPj0gMCkKQEAgLTE2
MTE2LDIzICsxNjEzNyw3IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZp
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
