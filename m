Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D085997FA
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 17:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013986EB85;
	Thu, 22 Aug 2019 15:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31AF6EB7C;
 Thu, 22 Aug 2019 15:19:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 08:19:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="181415447"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2019 08:19:56 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Thu, 22 Aug 2019 20:49:03 +0530
Message-Id: <20190822151904.17919-6-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190822151904.17919-1-ramalingam.c@intel.com>
References: <20190822151904.17919-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 5/6] drm/i915/hdcp: update current transcoder
 into intel_hdcp
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
Cc: Jani Nikula <jani.nikula@intel.com>, tomas.winkler@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gZ2VuMTIrIHBsYXRmb3JtcywgSERDUCBIVyBpcyBhc3NvY2lhdGVkIHRvIHRoZSB0cmFuc2Nv
ZGVyLgpIZW5jZSBvbiBldmVyeSBtb2Rlc2V0IHVwZGF0ZSBhc3NvY2lhdGVkIHRyYW5zY29kZXIg
aW50byB0aGUKaW50ZWxfaGRjcCBvZiB0aGUgcG9ydC4KCnYyOgogIHMvdHJhbnMvY3B1X3RyYW5z
Y29kZXIgW0phbmldCgpTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0Bp
bnRlbC5jb20+CkFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgot
LS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA3ICsr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDMgKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jICAgICB8IDQ5ICsrKysr
KysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5o
ICAgICB8ICAzICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAg
ICAgfCAgMyArKwogNSBmaWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaAppbmRleCA0NDlhYmFlYTYxOWYuLmZjODViM2UyODRkNCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTM4OCw2
ICszODgsMTMgQEAgc3RydWN0IGludGVsX2hkY3AgewogCXdhaXRfcXVldWVfaGVhZF90IGNwX2ly
cV9xdWV1ZTsKIAlhdG9taWNfdCBjcF9pcnFfY291bnQ7CiAJaW50IGNwX2lycV9jb3VudF9jYWNo
ZWQ7CisKKwkvKgorCSAqIEhEQ1AgcmVnaXN0ZXIgYWNjZXNzIGZvciBnZW4xMisgbmVlZCB0aGUg
dHJhbnNjb2RlciBhc3NvY2lhdGVkLgorCSAqIFRyYW5zY29kZXIgYXR0YWNoZWQgdG8gdGhlIGNv
bm5lY3RvciBjb3VsZCBiZSBjaGFuZ2VkIGF0IG1vZGVzZXQuCisJICogSGVuY2UgY2FjaGluZyB0
aGUgdHJhbnNjb2RlciBoZXJlLgorCSAqLworCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2Rl
cjsKIH07CiAKIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCmluZGV4IDkyMWFkMGEyZjdiYS4uYmE1MzE3ZDU2ZGE3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yMjQ0LDYgKzIyNDQsOSBAQCBp
bnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAog
CWludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCwgcGlwZV9jb25maWcpOwogCisJaW50
ZWxfaGRjcF90cmFuc2NvZGVyX2NvbmZpZyhpbnRlbF9jb25uZWN0b3IsCisJCQkJICAgICBwaXBl
X2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpOworCiAJcmV0dXJuIDA7CiB9CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKaW5kZXggNTM0ODMyZjQzNWRjLi4xZTU1NDg4
MzNlOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRj
cC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCkBAIC0x
NzYyLDEzICsxNzYyLDYwIEBAIGVudW0gbWVpX2Z3X2RkaSBpbnRlbF9nZXRfbWVpX2Z3X2RkaV9p
bmRleChlbnVtIHBvcnQgcG9ydCkKIAl9CiB9CiAKK3N0YXRpYyBpbmxpbmUKK2VudW0gbWVpX2Z3
X3RjIGludGVsX2dldF9tZWlfZndfdGMoZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyKQor
eworCXN3aXRjaCAoY3B1X3RyYW5zY29kZXIpIHsKKwljYXNlIFRSQU5TQ09ERVJfQSAuLi4gVFJB
TlNDT0RFUl9EOgorCQlyZXR1cm4gKGVudW0gbWVpX2Z3X3RjKShjcHVfdHJhbnNjb2RlciB8IDB4
MTApOworCWNhc2UgVFJBTlNDT0RFUl9FRFA6CisJCXJldHVybiBNRUlfVENfRURQOworCWNhc2Ug
VFJBTlNDT0RFUl9EU0lfMDoKKwkJcmV0dXJuIE1FSV9UQ19EU0kwOworCWNhc2UgVFJBTlNDT0RF
Ul9EU0lfMToKKwkJcmV0dXJuIE1FSV9UQ19EU0kxOworCWRlZmF1bHQ6CisJCXJldHVybiBNRUlf
SU5WQUxJRF9UUkFOU0NPREVSOworCX0KK30KKwordm9pZCBpbnRlbF9oZGNwX3RyYW5zY29kZXJf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKKwkJCQkgIGVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOworCXN0cnVjdCBpbnRlbF9oZGNw
ICpoZGNwID0gJmNvbm5lY3Rvci0+aGRjcDsKKworCWlmICghaGRjcC0+c2hpbSkKKwkJcmV0dXJu
OworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKKwkJbXV0ZXhfbG9jaygmaGRj
cC0+bXV0ZXgpOworCQloZGNwLT5jcHVfdHJhbnNjb2RlciA9IGNwdV90cmFuc2NvZGVyOworCQlo
ZGNwLT5wb3J0X2RhdGEuZndfdGMgPSBpbnRlbF9nZXRfbWVpX2Z3X3RjKGNwdV90cmFuc2NvZGVy
KTsKKwkJbXV0ZXhfdW5sb2NrKCZoZGNwLT5tdXRleCk7CisJfQorfQorCiBzdGF0aWMgaW5saW5l
IGludCBpbml0aWFsaXplX2hkY3BfcG9ydF9kYXRhKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3RvciwKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9oZGNwX3NoaW0gKnNoaW0pCiB7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3It
PmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7
CiAJc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhID0gJmhkY3AtPnBvcnRfZGF0YTsKKwlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIpIHsK
KwkJZGF0YS0+ZndfZGRpID0KKwkJCWludGVsX2dldF9tZWlfZndfZGRpX2luZGV4KGNvbm5lY3Rv
ci0+ZW5jb2Rlci0+cG9ydCk7CisJfSBlbHNlIHsKKwkJY3J0YyA9IHRvX2ludGVsX2NydGMoY29u
bmVjdG9yLT5iYXNlLnN0YXRlLT5jcnRjKTsKKwkJaWYgKGNydGMpIHsKKwkJCWhkY3AtPmNwdV90
cmFuc2NvZGVyID0gY3J0Yy0+Y29uZmlnLT5jcHVfdHJhbnNjb2RlcjsKKwkJCWRhdGEtPmZ3X3Rj
ID0gaW50ZWxfZ2V0X21laV9md190YyhoZGNwLT5jcHVfdHJhbnNjb2Rlcik7CisJCX0KKwkJZGF0
YS0+ZndfZGRpID0gaW50ZWxfZ2V0X21laV9md19kZGlfaW5kZXgoUE9SVF9OT05FKTsKKwl9CiAK
LQlkYXRhLT5md19kZGkgPSBpbnRlbF9nZXRfbWVpX2Z3X2RkaV9pbmRleChjb25uZWN0b3ItPmVu
Y29kZXItPnBvcnQpOwogCWRhdGEtPnBvcnRfdHlwZSA9ICh1OClIRENQX1BPUlRfVFlQRV9JTlRF
R1JBVEVEOwogCWRhdGEtPnByb3RvY29sID0gKHU4KXNoaW0tPnByb3RvY29sOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5oCmluZGV4IDU5YTJiNDA0MDVjYy4uNDFj
MTA1M2Q5ZTM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkY3AuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaApA
QCAtMTYsMTAgKzE2LDEzIEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwogc3RydWN0IGludGVs
X2Nvbm5lY3RvcjsKIHN0cnVjdCBpbnRlbF9oZGNwX3NoaW07CiBlbnVtIHBvcnQ7CitlbnVtIHRy
YW5zY29kZXI7CiAKIHZvaWQgaW50ZWxfaGRjcF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKIAkJCSAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9s
ZF9zdGF0ZSwKIAkJCSAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19zdGF0ZSk7
Cit2b2lkIGludGVsX2hkY3BfdHJhbnNjb2Rlcl9jb25maWcoc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yLAorCQkJCSAgZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyKTsKIGlu
dCBpbnRlbF9oZGNwX2luaXQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQkg
ICAgY29uc3Qgc3RydWN0IGludGVsX2hkY3Bfc2hpbSAqaGRjcF9zaGltKTsKIGludCBpbnRlbF9o
ZGNwX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsIHU4IGNvbnRlbnRf
dHlwZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IGUw
MmYwZmFlY2YwMi4uNmU5YmI2YmQxZWUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYwpAQCAtMjQzMSw2ICsyNDMxLDkgQEAgaW50IGludGVsX2hkbWlfY29tcHV0
ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCXJldHVybiAtRUlOVkFM
OwogCX0KIAorCWludGVsX2hkY3BfdHJhbnNjb2Rlcl9jb25maWcoaW50ZWxfaGRtaS0+YXR0YWNo
ZWRfY29ubmVjdG9yLAorCQkJCSAgICAgcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyKTsKKwog
CXJldHVybiAwOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
