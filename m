Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1389666AE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 07:57:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB016E2CD;
	Fri, 12 Jul 2019 05:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABC696E2CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 05:57:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 22:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="189740600"
Received: from kdedow-mobl1.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.255.80.125])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2019 22:57:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 22:57:05 -0700
Message-Id: <20190712055706.12143-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190712055706.12143-1-lucas.demarchi@intel.com>
References: <20190712055706.12143-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915: Add modular FIA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKU29tZSBw
bGF0Zm9ybXMgbWF5IGhhdmUgTW9kdWxhciBGSUEuIElmIE1vZHVsYXIgRklBIGlzIHVzZWQgaW4g
dGhlIFNPQywKdGhlbiBEaXNwbGF5IERyaXZlciB3aWxsIGFjY2VzcyB0aGUgYWRkaXRpb25hbCBp
bnN0YW5jZXMgb2YKRklBIGJhc2VkIG9uIHByZS1hc3NpZ25lZCBvZmZzZXQgaW4gR1RUTUFERFIg
c3BhY2UuCgpFYWNoIE1vZHVsYXIgRklBIGluc3RhbmNlIGhhcyBpdHMgb3duIElPU0YgU2lkZWJh
bmQgUG9ydCBJRAphbmQgaXQgaG91c2VzIG9ubHkgMiBUeXBlLUMgUG9ydC4gSW4gU09DIHRoYXQg
aGFzIG1vcmUgdGhhbgp0d28gVHlwZS1DIFBvcnRzLCB0aGVyZSBhcmUgbXVsdGlwbGUgaW5zdGFu
Y2VzIG9mIE1vZHVsYXIgRklBLgpHdW5pdCB3aWxsIG5lZWQgdG8gdXNlIGRpZmZlcmVudCBkZXN0
aW5hdGlvbiBJRCB3aGVuIGl0IGFjY2VzcwpkaWZmZXJlbnQgcGFpciBvZiBUeXBlLUMgUG9ydC4K
ClRoZSBERkxFWERQU1AgcmVnaXN0ZXIgaGFzIE1vZHVsYXIgRklBIGJpdCBzdGFydGluZyBvbiBU
aWdlciBMYWtlLiAgSWYKTW9kdWxhciBGSUEgaXMgdXNlZCBpbiB0aGUgU09DLCB0aGlzIHJlZ2lz
dGVyIGJpdCBleGlzdHMgaW4gYWxsIHRoZQppbnN0YW5jZXMgb2YgTW9kdWxhciBGSUEuIElPTSBG
VyBpcyByZXF1aXJlZCB0byBwcm9ncmFtIG9ubHkgdGhlIE1GIGJpdAppbiBmaXJzdCBGSUEgaW5z
dGFuY2UgdGhhdCBob3VzZXMgdGhlIFR5cGUtQyBQb3J0IDAgYW5kIFBvcnQgMSwgZm9yCkRpc3Bs
YXkgRHJpdmVyIHRvIHJlYWQgZnJvbS4KCnYyIChMdWNhcyk6CiAgLSBNb3ZlIGFsbCBhY2Nlc3Nl
cyB0byBGSUEgdG8gYmUgY29udGFpbmVkIGluIGludGVsX3RjLmMsIGFsb25nIHdpdGgKICAgIGRp
c3BsYXlfZmlhIHRoYXQgaXMgbm93IGNhbGxlZCB0Y19waHlfZmlhCiAgLSBTYXZlIHRoZSBmaWEg
aW5zdGFuY2UgbnVtYmVyIG9uIGludGVsX2RpZ2l0YWxfcG9ydCwgc28gd2UgZG9uJ3QgaGF2ZQog
ICAgdG8gcXVlcnkgaWYgbW9kdWxhciBGSUEgaXMgdXNlZCBvbiBldmVyeSBhY2Nlc3MKdjMgKEx1
Y2FzKTogTWFrZSBmdW5jdGlvbiBzdGF0aWMKdjQgKEx1Y2FzKTogTW92ZSBlbnVtIHBoeV9maWEg
dG8gdGhlIGhlYWRlciBhbmQgdXNlIGl0IGluCiAgIGludGVsX2RpZ2l0YWxfcG9ydCAoc3VnZ2Vz
dGVkIGJ5IFZpbGxlKQp2NSAoTHVjYXMpOiBBZGQgY29tbWVudCBhYm91dCB0aGUgbWFwcGluZyBi
ZXR3ZWVuIEZJQSBhbmQgVEMgcG9ydAogICAoc3VnZ2VzdGVkIGJ5IFN0dWFydCkKCkNjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3Jp
dmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpBY2tlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFN0dWFydCBT
dW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgNiArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYyAgICAgIHwgNDcgKysrKysrKysrKysrKysrKy0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgMTMgKysrKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICB8ICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgICAgIHwgIDEgKwogNSBmaWxlcyBjaGFu
Z2VkLCA1NiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IDY3NzQzZWVhNGE1MC4uZDJjNzE4
ZjI1NDc4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
aApAQCAtMjYwLDYgKzI2MCwxMiBAQCBlbnVtIHBoeSB7CiAKICNkZWZpbmUgcGh5X25hbWUoYSkg
KChhKSArICdBJykKIAorZW51bSBwaHlfZmlhIHsKKwlGSUExLAorCUZJQTIsCisJRklBMywKK307
CisKICNkZWZpbmUgZm9yX2VhY2hfcGlwZShfX2Rldl9wcml2LCBfX3ApIFwKIAlmb3IgKChfX3Ap
ID0gMDsgKF9fcCkgPCBJTlRFTF9JTkZPKF9fZGV2X3ByaXYpLT5udW1fcGlwZXM7IChfX3ApKysp
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwppbmRleCBmNDRlZTRiZmU3
YzguLmM5NmE4MWMyNDE2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
YwpAQCAtMjIsNiArMjIsMjggQEAgc3RhdGljIGNvbnN0IGNoYXIgKnRjX3BvcnRfbW9kZV9uYW1l
KGVudW0gdGNfcG9ydF9tb2RlIG1vZGUpCiAJcmV0dXJuIG5hbWVzW21vZGVdOwogfQogCitzdGF0
aWMgYm9vbCBoYXNfbW9kdWxhcl9maWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7
CisJaWYgKCFJTlRFTF9JTkZPKGk5MTUpLT5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSkKKwkJcmV0
dXJuIGZhbHNlOworCisJcmV0dXJuIGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsCisJ
CQkJIFBPUlRfVFhfREZMRVhEUFNQKEZJQTEpKSAmIE1PRFVMQVJfRklBX01BU0s7Cit9CisKK3N0
YXRpYyBlbnVtIHBoeV9maWEgdGNfcG9ydF90b19maWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCisJCQkJICAgZW51bSB0Y19wb3J0IHRjX3BvcnQpCit7CisJaWYgKCFoYXNfbW9kdWxh
cl9maWEoaTkxNSkpCisJCXJldHVybiBGSUExOworCisJLyoKKwkgKiBFYWNoIE1vZHVsYXIgRklB
IGluc3RhbmNlIGhvdXNlcyAyIFRDIHBvcnRzLiBJbiBTT0MgdGhhdCBoYXMgbW9yZQorCSAqIHRo
YW4gdHdvIFRDIHBvcnRzLCB0aGVyZSBhcmUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIE1vZHVsYXIg
RklBLgorCSAqLworCXJldHVybiB0Y19wb3J0IC8gMjsKK30KKwogdTMyIGludGVsX3RjX3BvcnRf
Z2V0X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFz
ZS5kZXYpOwpAQCAtMjksNyArNTEsOCBAQCB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNr
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCXN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CiAJdTMyIGxhbmVfbWFzazsKIAotCWxhbmVfbWFz
ayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUE9SVF9UWF9ERkxFWERQU1ApOworCWxhbmVf
bWFzayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwKKwkJCQkgICAgICBQT1JUX1RYX0RGTEVY
RFBTUChkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCiAJV0FSTl9PTihsYW5lX21hc2sgPT0gMHhm
ZmZmZmZmZik7CiAKQEAgLTc4LDcgKzEwMSw4IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9zZXRfZmlh
X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAKIAlXQVJO
X09OKGxhbmVfcmV2ZXJzYWwgJiYgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9MRUdBQ1kp
OwogCi0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBQT1JUX1RYX0RGTEVYRFBNTEUx
KTsKKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsCisJCQkJUE9SVF9UWF9ERkxFWERQ
TUxFMShkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCXZhbCAmPSB+REZMRVhEUE1MRTFfRFBNTEVU
Q19NQVNLKHRjX3BvcnQpOwogCiAJc3dpdGNoIChyZXF1aXJlZF9sYW5lcykgewpAQCAtOTcsNyAr
MTIxLDggQEAgdm9pZCBpbnRlbF90Y19wb3J0X3NldF9maWFfbGFuZV9jb3VudChzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJTUlTU0lOR19DQVNFKHJlcXVpcmVkX2xhbmVz
KTsKIAl9CiAKLQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBQT1JUX1RYX0RGTEVYRFBNTEUx
LCB2YWwpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBQT1JUX1RYX0RGTEVY
RFBNTEUxKGRpZ19wb3J0LT50Y19waHlfZmlhKSwgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQgdGNf
cG9ydF9maXh1cF9sZWdhY3lfZmxhZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCwKQEAgLTEyOSw3ICsxNTQsOCBAQCBzdGF0aWMgdTMyIHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFz
ayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAl1MzIgbWFzayA9IDA7CiAJ
dTMyIHZhbDsKIAotCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUE9SVF9UWF9ERkxF
WERQU1ApOworCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwKKwkJCQlQT1JUX1RYX0RG
TEVYRFBTUChkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCiAJaWYgKHZhbCA9PSAweGZmZmZmZmZm
KSB7CiAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIG5vdGhpbmcgY29u
bmVjdGVkXG4iLApAQCAtMTU5LDcgKzE4NSw4IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfc3Rh
dHVzX2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CiAJdTMyIHZhbDsKIAotCXZh
bCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUE9SVF9UWF9ERkxFWERQUE1TKTsKKwl2YWwg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsCisJCQkJUE9SVF9UWF9ERkxFWERQUE1TKGRpZ19w
b3J0LT50Y19waHlfZmlhKSk7CiAJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7CiAJCURSTV9ERUJV
R19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGFzc3VtaW5nIG5vdCBjb21wbGV0ZVxuIiwK
IAkJCSAgICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUpOwpAQCAtMTc3LDcgKzIwNCw4IEBAIHN0
YXRpYyBib29sIGljbF90Y19waHlfc2V0X3NhZmVfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCwKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5j
b3JlOwogCXUzMiB2YWw7CiAKLQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFBPUlRf
VFhfREZMRVhEUENTU1MpOworCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwKKwkJCQlQ
T1JUX1RYX0RGTEVYRFBDU1NTKGRpZ19wb3J0LT50Y19waHlfZmlhKSk7CiAJaWYgKHZhbCA9PSAw
eGZmZmZmZmZmKSB7CiAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGNh
bid0IHNldCBzYWZlLW1vZGUgdG8gJXNcbiIsCiAJCQkgICAgICBkaWdfcG9ydC0+dGNfcG9ydF9u
YW1lLApAQCAtMTkwLDcgKzIxOCw4IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfc2V0X3NhZmVf
bW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAlpZiAoIWVuYWJsZSkK
IAkJdmFsIHw9IERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsKIAotCWludGVs
X3VuY29yZV93cml0ZSh1bmNvcmUsIFBPUlRfVFhfREZMRVhEUENTU1MsIHZhbCk7CisJaW50ZWxf
dW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCSAgIFBPUlRfVFhfREZMRVhEUENTU1MoZGlnX3BvcnQt
PnRjX3BoeV9maWEpLCB2YWwpOwogCiAJaWYgKGVuYWJsZSAmJiB3YWl0X2ZvcighaWNsX3RjX3Bo
eV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpLCAxMCkpCiAJCURSTV9ERUJVR19LTVMoIlBvcnQg
JXM6IFBIWSBjb21wbGV0ZSBjbGVhciB0aW1lZCBvdXRcbiIsCkBAIC0yMDYsNyArMjM1LDggQEAg
c3RhdGljIGJvb2wgaWNsX3RjX3BoeV9pc19pbl9zYWZlX21vZGUoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpCiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUt
PnVuY29yZTsKIAl1MzIgdmFsOwogCi0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBQ
T1JUX1RYX0RGTEVYRFBDU1NTKTsKKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsCisJ
CQkJUE9SVF9UWF9ERkxFWERQQ1NTUyhkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCWlmICh2YWwg
PT0gMHhmZmZmZmZmZikgewogCQlEUk1fREVCVUdfS01TKCJQb3J0ICVzOiBQSFkgaW4gVENDT0xE
LCBhc3N1bWUgc2FmZSBtb2RlXG4iLAogCQkJICAgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSk7
CkBAIC01MDMsNCArNTMzLDUgQEAgdm9pZCBpbnRlbF90Y19wb3J0X2luaXQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgaXNfbGVnYWN5KQogCW11dGV4X2luaXQoJmRp
Z19wb3J0LT50Y19sb2NrKTsKIAlkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgPSBpc19sZWdhY3k7
CiAJZGlnX3BvcnQtPnRjX2xpbmtfcmVmY291bnQgPSAwOworCWRpZ19wb3J0LT50Y19waHlfZmlh
ID0gdGNfcG9ydF90b19maWEoaTkxNSwgdGNfcG9ydCk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAppbmRleCAzZmY2NTlhMTgwZTYuLmU0ODIxZmM0MGRkZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCkBAIC0yMjA0LDkgKzIyMDQsMTMgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogI2Rl
ZmluZSAgIERXNl9PTERPX0RZTl9QV1JfRE9XTl9FTgkoMSA8PCAyOCkKIAogI2RlZmluZSBGSUEx
X0JBU0UJCQkweDE2MzAwMAorI2RlZmluZSBGSUEyX0JBU0UJCQkweDE2RTAwMAorI2RlZmluZSBG
SUEzX0JBU0UJCQkweDE2RjAwMAorI2RlZmluZSBfRklBKGZpYSkJCQlfUElDSygoZmlhKSwgRklB
MV9CQVNFLCBGSUEyX0JBU0UsIEZJQTNfQkFTRSkKKyNkZWZpbmUgX01NSU9fRklBKGZpYSwgb2Zm
KQkJX01NSU8oX0ZJQShmaWEpICsgKG9mZikpCiAKIC8qIElDTCBQSFkgREZMRVggcmVnaXN0ZXJz
ICovCi0jZGVmaW5lIFBPUlRfVFhfREZMRVhEUE1MRTEJCV9NTUlPKEZJQTFfQkFTRSArIDB4MDA4
QzApCisjZGVmaW5lIFBPUlRfVFhfREZMRVhEUE1MRTEoZmlhKQlfTU1JT19GSUEoKGZpYSksICAw
eDAwOEMwKQogI2RlZmluZSAgIERGTEVYRFBNTEUxX0RQTUxFVENfTUFTSyh0Y19wb3J0KQkoMHhm
IDw8ICg0ICogKHRjX3BvcnQpKSkKICNkZWZpbmUgICBERkxFWERQTUxFMV9EUE1MRVRDX01MMCh0
Y19wb3J0KQkoMSA8PCAoNCAqICh0Y19wb3J0KSkpCiAjZGVmaW5lICAgREZMRVhEUE1MRTFfRFBN
TEVUQ19NTDFfMCh0Y19wb3J0KQkoMyA8PCAoNCAqICh0Y19wb3J0KSkpCkBAIC0xMTUyOSwxNyAr
MTE1MzMsMTggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAJCQkJCQlfSUNMX0RTQzFfUkNfQlVG
X1RIUkVTSF8xX1VEV19QQiwgXAogCQkJCQkJX0lDTF9EU0MxX1JDX0JVRl9USFJFU0hfMV9VRFdf
UEMpCiAKLSNkZWZpbmUgUE9SVF9UWF9ERkxFWERQU1AJCQlfTU1JTyhGSUExX0JBU0UgKyAweDAw
OEEwKQorI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBTUChmaWEpCQkJX01NSU9fRklBKChmaWEpLCAw
eDAwOEEwKQorI2RlZmluZSAgIE1PRFVMQVJfRklBX01BU0sJCQkoMSA8PCA0KQogI2RlZmluZSAg
IFRDX0xJVkVfU1RBVEVfVEJUKHRjX3BvcnQpCQkoMSA8PCAoKHRjX3BvcnQpICogOCArIDYpKQog
I2RlZmluZSAgIFRDX0xJVkVfU1RBVEVfVEModGNfcG9ydCkJCSgxIDw8ICgodGNfcG9ydCkgKiA4
ICsgNSkpCiAjZGVmaW5lICAgRFBfTEFORV9BU1NJR05NRU5UX1NISUZUKHRjX3BvcnQpCSgodGNf
cG9ydCkgKiA4KQogI2RlZmluZSAgIERQX0xBTkVfQVNTSUdOTUVOVF9NQVNLKHRjX3BvcnQpCSgw
eGYgPDwgKCh0Y19wb3J0KSAqIDgpKQogI2RlZmluZSAgIERQX0xBTkVfQVNTSUdOTUVOVCh0Y19w
b3J0LCB4KQkoKHgpIDw8ICgodGNfcG9ydCkgKiA4KSkKIAotI2RlZmluZSBQT1JUX1RYX0RGTEVY
RFBQTVMJCQkJX01NSU8oRklBMV9CQVNFICsgMHgwMDg5MCkKKyNkZWZpbmUgUE9SVF9UWF9ERkxF
WERQUE1TKGZpYSkJCQlfTU1JT19GSUEoKGZpYSksIDB4MDA4OTApCiAjZGVmaW5lICAgRFBfUEhZ
X01PREVfU1RBVFVTX0NPTVBMRVRFRCh0Y19wb3J0KQkJKDEgPDwgKHRjX3BvcnQpKQogCi0jZGVm
aW5lIFBPUlRfVFhfREZMRVhEUENTU1MJCQlfTU1JTyhGSUExX0JBU0UgKyAweDAwODk0KQorI2Rl
ZmluZSBQT1JUX1RYX0RGTEVYRFBDU1NTKGZpYSkJCV9NTUlPX0ZJQSgoZmlhKSwgMHgwMDg5NCkK
ICNkZWZpbmUgICBEUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUodGNfcG9ydCkJCSgxIDw8ICh0
Y19wb3J0KSkKIAogI2VuZGlmIC8qIF9JOTE1X1JFR19IXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmgKaW5kZXggNDY4NTgyNDg0NzU4Li40NWE5YmFkYzliOGUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTM4LDYgKzEzOCw3
IEBAIGVudW0gaW50ZWxfcHBndHRfdHlwZSB7CiAJZnVuYyhoYXNfZ21jaCk7IFwKIAlmdW5jKGhh
c19ob3RwbHVnKTsgXAogCWZ1bmMoaGFzX2lwYyk7IFwKKwlmdW5jKGhhc19tb2R1bGFyX2ZpYSk7
IFwKIAlmdW5jKGhhc19vdmVybGF5KTsgXAogCWZ1bmMoaGFzX3Bzcik7IFwKIAlmdW5jKG92ZXJs
YXlfbmVlZHNfcGh5c2ljYWwpOyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCmluZGV4IDc3MGY5
ZjZhYWQ4NC4uZThlY2JkNTU0NzZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtMTI0
NSw2ICsxMjQ1LDcgQEAgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCB7CiAJYm9vbCB0Y19sZWdh
Y3lfcG9ydDoxOwogCWNoYXIgdGNfcG9ydF9uYW1lWzhdOwogCWVudW0gdGNfcG9ydF9tb2RlIHRj
X21vZGU7CisJZW51bSBwaHlfZmlhIHRjX3BoeV9maWE7CiAKIAl2b2lkICgqd3JpdGVfaW5mb2Zy
YW1lKShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQljb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
