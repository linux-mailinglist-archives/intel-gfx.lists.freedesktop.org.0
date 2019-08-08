Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B02988635F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89C56E844;
	Thu,  8 Aug 2019 13:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EBF66E83D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:43:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158132"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:42 +0300
Message-Id: <8fefcf69b6dcdb7b9c920aeded35c5f8928b9602.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: move I915_STATE_WARN() and
 _ON() to intel_display.h
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

SXQncyBmb3IgZGlzcGxheS4gU2VlbXMgbGlrZSBhIGJldHRlciBmaXQuIFJlZHVjZSBjbHV0dGVy
IGluIGk5MTVfZHJ2LmguCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oIHwgMTggKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IGJmMGQ3MjI1ZTY0OS4uZTU3ZTY5Njkw
NTFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaApA
QCAtNTcxLDQgKzU3MSwyMiBAQCB2b2lkIGFzc2VydF9waXBlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUsIGJvb2wgc3RhdGUpOwogI2RlZmluZSBhc3Nl
cnRfcGlwZV9lbmFibGVkKGQsIHApIGFzc2VydF9waXBlKGQsIHAsIHRydWUpCiAjZGVmaW5lIGFz
c2VydF9waXBlX2Rpc2FibGVkKGQsIHApIGFzc2VydF9waXBlKGQsIHAsIGZhbHNlKQogCisvKiBV
c2UgSTkxNV9TVEFURV9XQVJOKHgpIGFuZCBJOTE1X1NUQVRFX1dBUk5fT04oKSAocmF0aGVyIHRo
YW4gV0FSTigpIGFuZAorICogV0FSTl9PTigpKSBmb3IgaHcgc3RhdGUgc2FuaXR5IGNoZWNrcyB0
byBjaGVjayBmb3IgdW5leHBlY3RlZCBjb25kaXRpb25zCisgKiB3aGljaCBtYXkgbm90IG5lY2Vz
c2FyaWx5IGJlIGEgdXNlciB2aXNpYmxlIHByb2JsZW0uICBUaGlzIHdpbGwgZWl0aGVyCisgKiBX
QVJOKCkgb3IgRFJNX0VSUk9SKCkgZGVwZW5kaW5nIG9uIHRoZSB2ZXJib3NlX2NoZWNrcyBtb2R1
bGVwYXJhbSwgdG8KKyAqIGVuYWJsZSBkaXN0cm9zIGFuZCB1c2VycyB0byB0YWlsb3IgdGhlaXIg
cHJlZmVycmVkIGFtb3VudCBvZiBpOTE1IGFicnQKKyAqIHNwYW0uCisgKi8KKyNkZWZpbmUgSTkx
NV9TVEFURV9XQVJOKGNvbmRpdGlvbiwgZm9ybWF0Li4uKSAoewkJCVwKKwlpbnQgX19yZXRfd2Fy
bl9vbiA9ICEhKGNvbmRpdGlvbik7CQkJCVwKKwlpZiAodW5saWtlbHkoX19yZXRfd2Fybl9vbikp
CQkJCQlcCisJCWlmICghV0FSTihpOTE1X21vZHBhcmFtcy52ZXJib3NlX3N0YXRlX2NoZWNrcywg
Zm9ybWF0KSkJXAorCQkJRFJNX0VSUk9SKGZvcm1hdCk7CQkJCVwKKwl1bmxpa2VseShfX3JldF93
YXJuX29uKTsJCQkJCVwKK30pCisKKyNkZWZpbmUgSTkxNV9TVEFURV9XQVJOX09OKHgpCQkJCQkJ
XAorCUk5MTVfU1RBVEVfV0FSTigoeCksICIlcyIsICJXQVJOX09OKCIgX19zdHJpbmdpZnkoeCkg
IikiKQorCiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDdjNGU5NTE3M2VjNC4u
MjFjODczMDljYzMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEwNCwyNCArMTA0LDYg
QEAKICNkZWZpbmUgRFJJVkVSX0RBVEUJCSIyMDE5MDczMCIKICNkZWZpbmUgRFJJVkVSX1RJTUVT
VEFNUAkxNTY0NTEyNjI0CiAKLS8qIFVzZSBJOTE1X1NUQVRFX1dBUk4oeCkgYW5kIEk5MTVfU1RB
VEVfV0FSTl9PTigpIChyYXRoZXIgdGhhbiBXQVJOKCkgYW5kCi0gKiBXQVJOX09OKCkpIGZvciBo
dyBzdGF0ZSBzYW5pdHkgY2hlY2tzIHRvIGNoZWNrIGZvciB1bmV4cGVjdGVkIGNvbmRpdGlvbnMK
LSAqIHdoaWNoIG1heSBub3QgbmVjZXNzYXJpbHkgYmUgYSB1c2VyIHZpc2libGUgcHJvYmxlbS4g
IFRoaXMgd2lsbCBlaXRoZXIKLSAqIFdBUk4oKSBvciBEUk1fRVJST1IoKSBkZXBlbmRpbmcgb24g
dGhlIHZlcmJvc2VfY2hlY2tzIG1vZHVsZXBhcmFtLCB0bwotICogZW5hYmxlIGRpc3Ryb3MgYW5k
IHVzZXJzIHRvIHRhaWxvciB0aGVpciBwcmVmZXJyZWQgYW1vdW50IG9mIGk5MTUgYWJydAotICog
c3BhbS4KLSAqLwotI2RlZmluZSBJOTE1X1NUQVRFX1dBUk4oY29uZGl0aW9uLCBmb3JtYXQuLi4p
ICh7CQkJXAotCWludCBfX3JldF93YXJuX29uID0gISEoY29uZGl0aW9uKTsJCQkJXAotCWlmICh1
bmxpa2VseShfX3JldF93YXJuX29uKSkJCQkJCVwKLQkJaWYgKCFXQVJOKGk5MTVfbW9kcGFyYW1z
LnZlcmJvc2Vfc3RhdGVfY2hlY2tzLCBmb3JtYXQpKQlcCi0JCQlEUk1fRVJST1IoZm9ybWF0KTsJ
CQkJXAotCXVubGlrZWx5KF9fcmV0X3dhcm5fb24pOwkJCQkJXAotfSkKLQotI2RlZmluZSBJOTE1
X1NUQVRFX1dBUk5fT04oeCkJCQkJCQlcCi0JSTkxNV9TVEFURV9XQVJOKCh4KSwgIiVzIiwgIldB
Uk5fT04oIiBfX3N0cmluZ2lmeSh4KSAiKSIpCi0KICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1f
STkxNV9ERUJVRykKIAogaW50IF9faTkxNV9pbmplY3RfbG9hZF9lcnJvcihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwgaW50IGVyciwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
