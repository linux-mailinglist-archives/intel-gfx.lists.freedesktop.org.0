Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD8A601A7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 09:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59886E419;
	Fri,  5 Jul 2019 07:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB3E86E417
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 07:45:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 00:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,454,1557212400"; d="scan'208";a="339771986"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 05 Jul 2019 00:45:37 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Fri,  5 Jul 2019 06:16:38 +0530
Message-Id: <20190705004642.15822-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190705004642.15822-1-ramalingam.c@intel.com>
References: <20190705004642.15822-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 2/6] drm/i915: Attach content type property
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
Cc: ppaalanen@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXR0YWNoZXMgdGhlIGNvbnRlbnQgdHlwZSBwcm9wZXJ0eSBmb3IgSERDUDIuMiBjYXBhYmxlIGNv
bm5lY3RvcnMuCgpJbXBsZW1lbnRzIHRoZSB1cGRhdGUgb2YgY29udGVudCB0eXBlIGZyb20gcHJv
cGVydHkgYW5kIGFwcGx5IHRoZQpyZXN0cmljdGlvbiBvbiBIRENQIHZlcnNpb24gc2VsZWN0aW9u
LgoKTmVlZCBBQ0sgZm9yIGNvbnRlbnQgdHlwZSBwcm9wZXJ0eSBmcm9tIHVzZXJzcGFjZSBjb25z
dW1lci4KCnYyOgogIHMvY3BfY29udGVudF90eXBlL2NvbnRlbnRfcHJvdGVjdGlvbl90eXBlIFtk
YW5pZWxdCiAgZGlzYWJsZSBhdCBoZGNwX2F0b21pY19jaGVjayB0byBhdm9pZCBjaGVjayBhdCBh
dG9taWNfc2V0X3Byb3BlcnR5CglbTWFhcnRlbl0KdjM6CiAgcy9jb250ZW50X3Byb3RlY3Rpb25f
dHlwZS9oZGNwX2NvbnRlbnRfdHlwZSBbUGVra2FdCnY0OgogIGhkY3AgZGlzYWJsZSBpbmNhc2Ug
b2YgdHlwZSBjaGFuZ2UgaXMgbW92ZWQgaW50byBjb21taXQgW2RhbmllbF0uCnY1OgogIFNpbXBs
aWZpZWQgdGhlIFR5cGUgY2hhbmdlIHByb2NlZHVyZS4gW0RhbmllbF0KdjY6CiAgVHlwZSBjaGFu
Z2Ugd2l0aCBVTkRFU0lSRUQgc3RhdGUgaXMgaWdub3JlZC4KClNpZ25lZC1vZmYtYnk6IFJhbWFs
aW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyAgfCAzOSArKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgfCA0MyArKysrKysrKysrKysrKystLS0tLS0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmggfCAgMiArLQogMyBm
aWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBhNDE3MjU5NWM4ZDguLjg2Mjkw
NzM5M2E2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0z
NTE0LDcgKzM1MTQsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRpKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAogCS8qIEVuYWJsZSBoZGNwIGlmIGl0J3MgZGVzaXJlZCAqLwog
CWlmIChjb25uX3N0YXRlLT5jb250ZW50X3Byb3RlY3Rpb24gPT0KIAkgICAgRFJNX01PREVfQ09O
VEVOVF9QUk9URUNUSU9OX0RFU0lSRUQpCi0JCWludGVsX2hkY3BfZW5hYmxlKHRvX2ludGVsX2Nv
bm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpKTsKKwkJaW50ZWxfaGRjcF9lbmFibGUodG9f
aW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtPmNvbm5lY3RvciksCisJCQkJICAodTgpY29ubl9z
dGF0ZS0+aGRjcF9jb250ZW50X3R5cGUpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kaXNhYmxl
X2RkaV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKQEAgLTM1ODMsMTUgKzM1ODQs
NDEgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3VwZGF0ZV9waXBlKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCiAJCQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0
ZSkKIHsKKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQorCQkJCXRvX2ludGVs
X2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpOworCXN0cnVjdCBpbnRlbF9oZGNwICpo
ZGNwID0gJmNvbm5lY3Rvci0+aGRjcDsKKwlib29sIGNvbnRlbnRfcHJvdGVjdGlvbl90eXBlX2No
YW5nZWQgPQorCQkJKGNvbm5fc3RhdGUtPmhkY3BfY29udGVudF90eXBlICE9IGhkY3AtPmNvbnRl
bnRfdHlwZSAmJgorCQkJIGNvbm5fc3RhdGUtPmNvbnRlbnRfcHJvdGVjdGlvbiAhPQorCQkJIERS
TV9NT0RFX0NPTlRFTlRfUFJPVEVDVElPTl9VTkRFU0lSRUQpOworCiAJaWYgKCFpbnRlbF9jcnRj
X2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9IRE1JKSkKIAkJaW50ZWxfZGRpX3Vw
ZGF0ZV9waXBlX2RwKGVuY29kZXIsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOwogCisJLyoKKwkg
KiBEdXJpbmcgdGhlIEhEQ1AgZW5jcnlwdGlvbiBzZXNzaW9uIGlmIFR5cGUgY2hhbmdlIGlzIHJl
cXVlc3RlZCwKKwkgKiBkaXNhYmxlIHRoZSBIRENQIGFuZCByZWVuYWJsZSBpdCB3aXRoIG5ldyBU
WVBFIHZhbHVlLgorCSAqLwogCWlmIChjb25uX3N0YXRlLT5jb250ZW50X3Byb3RlY3Rpb24gPT0K
LQkgICAgRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0RFU0lSRUQpCi0JCWludGVsX2hkY3Bf
ZW5hYmxlKHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpKTsKLQllbHNl
IGlmIChjb25uX3N0YXRlLT5jb250ZW50X3Byb3RlY3Rpb24gPT0KLQkJIERSTV9NT0RFX0NPTlRF
TlRfUFJPVEVDVElPTl9VTkRFU0lSRUQpCi0JCWludGVsX2hkY3BfZGlzYWJsZSh0b19pbnRlbF9j
b25uZWN0b3IoY29ubl9zdGF0ZS0+Y29ubmVjdG9yKSk7CisJICAgIERSTV9NT0RFX0NPTlRFTlRf
UFJPVEVDVElPTl9VTkRFU0lSRUQgfHwKKwkgICAgY29udGVudF9wcm90ZWN0aW9uX3R5cGVfY2hh
bmdlZCkKKwkJaW50ZWxfaGRjcF9kaXNhYmxlKGNvbm5lY3Rvcik7CisKKwkvKgorCSAqIE1hcmsg
dGhlIGhkY3Agc3RhdGUgYXMgREVTSVJFRCBhZnRlciB0aGUgaGRjcCBkaXNhYmxlIG9mIHR5cGUK
KwkgKiBjaGFuZ2UgcHJvY2VkdXJlLgorCSAqLworCWlmIChjb250ZW50X3Byb3RlY3Rpb25fdHlw
ZV9jaGFuZ2VkKSB7CisJCW11dGV4X2xvY2soJmhkY3AtPm11dGV4KTsKKwkJaGRjcC0+dmFsdWUg
PSBEUk1fTU9ERV9DT05URU5UX1BST1RFQ1RJT05fREVTSVJFRDsKKwkJc2NoZWR1bGVfd29yaygm
aGRjcC0+cHJvcF93b3JrKTsKKwkJbXV0ZXhfdW5sb2NrKCZoZGNwLT5tdXRleCk7CisJfQorCisJ
aWYgKGNvbm5fc3RhdGUtPmNvbnRlbnRfcHJvdGVjdGlvbiA9PQorCSAgICBEUk1fTU9ERV9DT05U
RU5UX1BST1RFQ1RJT05fREVTSVJFRCB8fAorCSAgICBjb250ZW50X3Byb3RlY3Rpb25fdHlwZV9j
aGFuZ2VkKQorCQlpbnRlbF9oZGNwX2VuYWJsZShjb25uZWN0b3IsICh1OCljb25uX3N0YXRlLT5o
ZGNwX2NvbnRlbnRfdHlwZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9zZXRfZmlhX2xh
bmVfY291bnQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCmluZGV4IDJhNGQxMDk1MmI3NC4uNDU4MGFmNTdiZGRi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwpAQCAtMTc0OCwx
NCArMTc0OCwxNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNvbXBvbmVudF9vcHMgaTkxNV9oZGNw
X2NvbXBvbmVudF9vcHMgPSB7CiAJLnVuYmluZCA9IGk5MTVfaGRjcF9jb21wb25lbnRfdW5iaW5k
LAogfTsKIAotc3RhdGljIGlubGluZSBpbnQgaW5pdGlhbGl6ZV9oZGNwX3BvcnRfZGF0YShzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCitzdGF0aWMgaW5saW5lIGludCBpbml0aWFs
aXplX2hkY3BfcG9ydF9kYXRhKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKKwkJ
CQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9oZGNwX3NoaW0gKnNoaW0pCiB7CiAJc3RydWN0IGlu
dGVsX2hkY3AgKmhkY3AgPSAmY29ubmVjdG9yLT5oZGNwOwogCXN0cnVjdCBoZGNwX3BvcnRfZGF0
YSAqZGF0YSA9ICZoZGNwLT5wb3J0X2RhdGE7CiAKIAlkYXRhLT5wb3J0ID0gY29ubmVjdG9yLT5l
bmNvZGVyLT5wb3J0OwogCWRhdGEtPnBvcnRfdHlwZSA9ICh1OClIRENQX1BPUlRfVFlQRV9JTlRF
R1JBVEVEOwotCWRhdGEtPnByb3RvY29sID0gKHU4KWhkY3AtPnNoaW0tPnByb3RvY29sOworCWRh
dGEtPnByb3RvY29sID0gKHU4KXNoaW0tPnByb3RvY29sOwogCiAJZGF0YS0+ayA9IDE7CiAJaWYg
KCFkYXRhLT5zdHJlYW1zKQpAQCAtMTgwNSwxMiArMTgwNiwxMyBAQCB2b2lkIGludGVsX2hkY3Bf
Y29tcG9uZW50X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCX0KIH0K
IAotc3RhdGljIHZvaWQgaW50ZWxfaGRjcDJfaW5pdChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpj
b25uZWN0b3IpCitzdGF0aWMgdm9pZCBpbnRlbF9oZGNwMl9pbml0KHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKKwkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2hkY3Bfc2hpbSAq
c2hpbSkKIHsKIAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7CiAJ
aW50IHJldDsKIAotCXJldCA9IGluaXRpYWxpemVfaGRjcF9wb3J0X2RhdGEoY29ubmVjdG9yKTsK
KwlyZXQgPSBpbml0aWFsaXplX2hkY3BfcG9ydF9kYXRhKGNvbm5lY3Rvciwgc2hpbSk7CiAJaWYg
KHJldCkgewogCQlEUk1fREVCVUdfS01TKCJNZWkgaGRjcCBkYXRhIGluaXQgZmFpbGVkXG4iKTsK
IAkJcmV0dXJuOwpAQCAtMTgyOSwyNSArMTgzMSwyOCBAQCBpbnQgaW50ZWxfaGRjcF9pbml0KHN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlpZiAoIXNoaW0pCiAJCXJldHVybiAt
RUlOVkFMOwogCisJaWYgKGlzX2hkY3AyX3N1cHBvcnRlZChkZXZfcHJpdikpCisJCWludGVsX2hk
Y3AyX2luaXQoY29ubmVjdG9yLCBzaGltKTsKKwogCXJldCA9CiAJZHJtX2Nvbm5lY3Rvcl9hdHRh
Y2hfY29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCi0JCQkJCQkJ
IGZhbHNlKTsKLQlpZiAocmV0KQorCQkJCQkJCSBoZGNwLT5oZGNwMl9zdXBwb3J0ZWQpOworCWlm
IChyZXQpIHsKKwkJaGRjcC0+aGRjcDJfc3VwcG9ydGVkID0gZmFsc2U7CisJCWtmcmVlKGhkY3At
PnBvcnRfZGF0YS5zdHJlYW1zKTsKIAkJcmV0dXJuIHJldDsKKwl9CiAKIAloZGNwLT5zaGltID0g
c2hpbTsKIAltdXRleF9pbml0KCZoZGNwLT5tdXRleCk7CiAJSU5JVF9ERUxBWUVEX1dPUksoJmhk
Y3AtPmNoZWNrX3dvcmssIGludGVsX2hkY3BfY2hlY2tfd29yayk7CiAJSU5JVF9XT1JLKCZoZGNw
LT5wcm9wX3dvcmssIGludGVsX2hkY3BfcHJvcF93b3JrKTsKLQotCWlmIChpc19oZGNwMl9zdXBw
b3J0ZWQoZGV2X3ByaXYpKQotCQlpbnRlbF9oZGNwMl9pbml0KGNvbm5lY3Rvcik7CiAJaW5pdF93
YWl0cXVldWVfaGVhZCgmaGRjcC0+Y3BfaXJxX3F1ZXVlKTsKIAogCXJldHVybiAwOwogfQogCi1p
bnQgaW50ZWxfaGRjcF9lbmFibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQor
aW50IGludGVsX2hkY3BfZW5hYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvciwg
dTggY29udGVudF90eXBlKQogewogCXN0cnVjdCBpbnRlbF9oZGNwICpoZGNwID0gJmNvbm5lY3Rv
ci0+aGRjcDsKIAl1bnNpZ25lZCBsb25nIGNoZWNrX2xpbmtfaW50ZXJ2YWwgPSBEUk1fSERDUF9D
SEVDS19QRVJJT0RfTVM7CkBAIC0xODU4LDYgKzE4NjMsNyBAQCBpbnQgaW50ZWxfaGRjcF9lbmFi
bGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCiAJbXV0ZXhfbG9jaygmaGRj
cC0+bXV0ZXgpOwogCVdBUk5fT04oaGRjcC0+dmFsdWUgPT0gRFJNX01PREVfQ09OVEVOVF9QUk9U
RUNUSU9OX0VOQUJMRUQpOworCWhkY3AtPmNvbnRlbnRfdHlwZSA9IGNvbnRlbnRfdHlwZTsKIAog
CS8qCiAJICogQ29uc2lkZXJpbmcgdGhhdCBIRENQMi4yIGlzIG1vcmUgc2VjdXJlIHRoYW4gSERD
UDEuNCwgSWYgdGhlIHNldHVwCkBAIC0xODY5LDggKzE4NzUsMTIgQEAgaW50IGludGVsX2hkY3Bf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkJCWNoZWNrX2xpbmtf
aW50ZXJ2YWwgPSBEUk1fSERDUDJfQ0hFQ0tfUEVSSU9EX01TOwogCX0KIAotCS8qIFdoZW4gSERD
UDIuMiBmYWlscywgSERDUDEuNCB3aWxsIGJlIGF0dGVtcHRlZCAqLwotCWlmIChyZXQgJiYgaW50
ZWxfaGRjcF9jYXBhYmxlKGNvbm5lY3RvcikpIHsKKwkvKgorCSAqIFdoZW4gSERDUDIuMiBmYWls
cyBhbmQgQ29udGVudCBUeXBlIGlzIG5vdCBUeXBlMSwgSERDUDEuNCB3aWxsCisJICogYmUgYXR0
ZW1wdGVkLgorCSAqLworCWlmIChyZXQgJiYgaW50ZWxfaGRjcF9jYXBhYmxlKGNvbm5lY3Rvcikg
JiYKKwkgICAgaGRjcC0+Y29udGVudF90eXBlICE9IERSTV9NT0RFX0hEQ1BfQ09OVEVOVF9UWVBF
MSkgewogCQlyZXQgPSBfaW50ZWxfaGRjcF9lbmFibGUoY29ubmVjdG9yKTsKIAl9CiAKQEAgLTE5
NTIsMTIgKzE5NjIsMTUgQEAgdm9pZCBpbnRlbF9oZGNwX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCiAJLyoKIAkgKiBOb3RoaW5nIHRvIGRvIGlmIHRoZSBz
dGF0ZSBkaWRuJ3QgY2hhbmdlLCBvciBIRENQIHdhcyBhY3RpdmF0ZWQgc2luY2UKLQkgKiB0aGUg
bGFzdCBjb21taXQKKwkgKiB0aGUgbGFzdCBjb21taXQuIEFuZCBhbHNvIG5vIGNoYW5nZSBpbiBo
ZGNwIGNvbnRlbnQgdHlwZS4KIAkgKi8KIAlpZiAob2xkX2NwID09IG5ld19jcCB8fAogCSAgICAo
b2xkX2NwID09IERSTV9NT0RFX0NPTlRFTlRfUFJPVEVDVElPTl9ERVNJUkVEICYmCi0JICAgICBu
ZXdfY3AgPT0gRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0VOQUJMRUQpKQotCQlyZXR1cm47
CisJICAgICBuZXdfY3AgPT0gRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0VOQUJMRUQpKSB7
CisJCWlmIChvbGRfc3RhdGUtPmhkY3BfY29udGVudF90eXBlID09CisJCQkJbmV3X3N0YXRlLT5o
ZGNwX2NvbnRlbnRfdHlwZSkKKwkJCXJldHVybjsKKwl9CiAKIAljcnRjX3N0YXRlID0gZHJtX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUobmV3X3N0YXRlLT5zdGF0ZSwKIAkJCQkJCSAgIG5ld19z
dGF0ZS0+Y3J0Yyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkY3AuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5oCmlu
ZGV4IGJlOGRhODVjODY2YS4uMTM1NTViMDU0OTMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkY3AuaApAQCAtMjEsNyArMjEsNyBAQCB2b2lkIGludGVsX2hkY3BfYXRv
bWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQkgICAgIHN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpuZXdfc3RhdGUpOwogaW50IGludGVsX2hkY3BfaW5pdChz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCSAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfaGRjcF9zaGltICpoZGNwX3NoaW0pOwotaW50IGludGVsX2hkY3BfZW5hYmxlKHN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CitpbnQgaW50ZWxfaGRjcF9lbmFibGUoc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLCB1OCBjb250ZW50X3R5cGUpOwogaW50IGludGVs
X2hkY3BfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOwogYm9vbCBp
c19oZGNwX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0g
cG9ydCBwb3J0KTsKIGJvb2wgaW50ZWxfaGRjcF9jYXBhYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3Rvcik7Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
