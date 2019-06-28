Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5263F59DFD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167936E944;
	Fri, 28 Jun 2019 14:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CAAF6E940
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 14:37:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 07:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165079554"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 07:37:16 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:36:30 +0300
Message-Id: <20190628143635.22066-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628143635.22066-1-imre.deak@intel.com>
References: <20190628143635.22066-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 18/23] drm/i915/icl: Split getting the DPLLs
 to port type specific functions
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGNsYXJpdHkgZmFjdG9yIG91dCB0aGUgY29tYm8gUEhZIGFuZCBUeXBlQyBQSFkgc3BlY2lm
aWMgY29kZSBmcm9tCmljbF9nZXRfZHBsbHMoKSBpbnRvIHRoZWlyIG93biBmdW5jdGlvbnMuCgpO
byBmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDEwMCAr
KysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCAzNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMKaW5kZXggMTRiYmFiNDU4MzZkLi44NWMzOGVlZDkzYTggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTI4NTYsNTEgKzI4NTYsNjYg
QEAgc3RhdGljIGJvb2wgaWNsX2NhbGNfbWdfcGxsX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAogCXJldHVybiB0cnVlOwogfQogCi1zdGF0aWMgYm9vbCBpY2xfZ2V0
X2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotCQkJICBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKLQkJCSAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCitzdGF0
aWMgYm9vbCBpY2xfZ2V0X2NvbWJvX3BoeV9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAorCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAorCQkJCSAgIHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlID0KKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7
CisJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGw7CisKKwlpZiAoIWljbF9jYWxjX2RwbGxf
c3RhdGUoY3J0Y19zdGF0ZSwgZW5jb2RlciwKKwkJCQkgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3Rh
dGUpKSB7CisJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBjYWxjdWxhdGUgY29tYm8gUEhZIFBM
TCBzdGF0ZS5cbiIpOworCisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlwbGwgPSBpbnRlbF9maW5k
X3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRjLCAmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZSwKKwkJ
CQkgICAgIERQTExfSURfSUNMX0RQTEwwLAorCQkJCSAgICAgRFBMTF9JRF9JQ0xfRFBMTDEpOwor
CWlmICghcGxsKSB7CisJCURSTV9ERUJVR19LTVMoIk5vIGNvbWJvIFBIWSBQTEwgZm91bmQgZm9y
IHBvcnQgJWNcbiIsCisJCQkgICAgICBwb3J0X25hbWUoZW5jb2Rlci0+cG9ydCkpOworCQlyZXR1
cm4gZmFsc2U7CisJfQorCisJaW50ZWxfcmVmZXJlbmNlX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRj
LAorCQkJCSAgICBwbGwsICZjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlKTsKKworCWNydGNfc3Rh
dGUtPnNoYXJlZF9kcGxsID0gcGxsOworCisJcmV0dXJuIHRydWU7Cit9CisKK3N0YXRpYyBib29s
IGljbF9nZXRfdGNfcGh5X2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAor
CQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCQkgc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShzdGF0ZS0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0KIAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Ci0Jc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQ7CisJZW51bSB0Y19wb3J0IHRj
X3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKKwlzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydDsKIAlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2Rw
bGwgKnBsbDsKLQllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7CiAJZW51bSBpbnRlbF9k
cGxsX2lkIG1pbiwgbWF4OwogCWJvb2wgcmV0OwogCi0JaWYgKGludGVsX3BvcnRfaXNfY29tYm9w
aHkoZGV2X3ByaXYsIHBvcnQpKSB7Ci0JCW1pbiA9IERQTExfSURfSUNMX0RQTEwwOwotCQltYXgg
PSBEUExMX0lEX0lDTF9EUExMMTsKKwlpZiAoZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRf
RFBfTVNUKQorCQlkaWdfcG9ydCA9IGVuY190b19tc3QoJmVuY29kZXItPmJhc2UpLT5wcmltYXJ5
OworCWVsc2UKKwkJZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoJmVuY29kZXItPmJhc2UpOwor
CisJaWYgKGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkgeworCQltaW4gPSBE
UExMX0lEX0lDTF9UQlRQTEw7CisJCW1heCA9IG1pbjsKIAkJcmV0ID0gaWNsX2NhbGNfZHBsbF9z
dGF0ZShjcnRjX3N0YXRlLCBlbmNvZGVyLAogCQkJCQkgICZjcnRjX3N0YXRlLT5kcGxsX2h3X3N0
YXRlKTsKLQl9IGVsc2UgaWYgKGludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpKSB7Ci0J
CWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9EUF9NU1QpIHsKLQkJCXN0cnVjdCBp
bnRlbF9kcF9tc3RfZW5jb2RlciAqbXN0X2VuY29kZXI7Ci0KLQkJCW1zdF9lbmNvZGVyID0gZW5j
X3RvX21zdCgmZW5jb2Rlci0+YmFzZSk7Ci0JCQlpbnRlbF9kaWdfcG9ydCA9IG1zdF9lbmNvZGVy
LT5wcmltYXJ5OwotCQl9IGVsc2UgewotCQkJaW50ZWxfZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3Bv
cnQoJmVuY29kZXItPmJhc2UpOwotCQl9Ci0KLQkJaWYgKGludGVsX2RpZ19wb3J0LT50Y19tb2Rl
ID09IFRDX1BPUlRfVEJUX0FMVCkgewotCQkJbWluID0gRFBMTF9JRF9JQ0xfVEJUUExMOwotCQkJ
bWF4ID0gbWluOwotCQkJcmV0ID0gaWNsX2NhbGNfZHBsbF9zdGF0ZShjcnRjX3N0YXRlLCBlbmNv
ZGVyLAotCQkJCQkJICAmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZSk7Ci0JCX0gZWxzZSB7Ci0J
CQllbnVtIHRjX3BvcnQgdGNfcG9ydDsKLQotCQkJdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMo
ZGV2X3ByaXYsIHBvcnQpOwotCQkJbWluID0gaWNsX3RjX3BvcnRfdG9fcGxsX2lkKHRjX3BvcnQp
OwotCQkJbWF4ID0gbWluOwotCQkJcmV0ID0gaWNsX2NhbGNfbWdfcGxsX3N0YXRlKGNydGNfc3Rh
dGUsCi0JCQkJCQkgICAgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUpOwotCQl9CiAJfSBlbHNl
IHsKLQkJTUlTU0lOR19DQVNFKHBvcnQpOwotCQlyZXR1cm4gZmFsc2U7CisJCW1pbiA9IGljbF90
Y19wb3J0X3RvX3BsbF9pZCh0Y19wb3J0KTsKKwkJbWF4ID0gbWluOworCQlyZXQgPSBpY2xfY2Fs
Y19tZ19wbGxfc3RhdGUoY3J0Y19zdGF0ZSwKKwkJCQkJICAgICZjcnRjX3N0YXRlLT5kcGxsX2h3
X3N0YXRlKTsKIAl9CiAKIAlpZiAoIXJldCkgewpAQCAtMjkyNSw2ICsyOTQwLDIzIEBAIHN0YXRp
YyBib29sIGljbF9nZXRfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJ
cmV0dXJuIHRydWU7CiB9CiAKK3N0YXRpYyBib29sIGljbF9nZXRfZHBsbHMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCisJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAorCQkJ
ICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CisJZW51bSBwb3J0IHBv
cnQgPSBlbmNvZGVyLT5wb3J0OworCisJaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3By
aXYsIHBvcnQpKQorCQlyZXR1cm4gaWNsX2dldF9jb21ib19waHlfZHBsbChzdGF0ZSwgY3J0Yywg
ZW5jb2Rlcik7CisJZWxzZSBpZiAoaW50ZWxfcG9ydF9pc190YyhkZXZfcHJpdiwgcG9ydCkpCisJ
CXJldHVybiBpY2xfZ2V0X3RjX3BoeV9kcGxscyhzdGF0ZSwgY3J0YywgZW5jb2Rlcik7CisKKwlN
SVNTSU5HX0NBU0UocG9ydCk7CisKKwlyZXR1cm4gZmFsc2U7Cit9CisKIHN0YXRpYyBib29sIG1n
X3BsbF9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJ
CXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsLAogCQkJCXN0cnVjdCBpbnRlbF9kcGxsX2h3
X3N0YXRlICpod19zdGF0ZSkKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
