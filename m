Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB72036C57C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 13:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591646E91C;
	Tue, 27 Apr 2021 11:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C93846E946
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 11:45:30 +0000 (UTC)
IronPort-SDR: jWLNUohPFY7VK9mnRMode9WIc3Gpod63A0JieZ17WuMvU0DaEn5wK/JfYBHg2ULWHFRGUCAYgd
 9SeJ/5+o9MXg==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="183629866"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="183629866"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 04:45:29 -0700
IronPort-SDR: Af9HJW5nguVN4qy0jqmAuo5MvaZiY9x63mS5lLQzjIRDMWYaiPhqNagVjvK1i9T/GUCx46XDeB
 yEVBXXzzrQGQ==
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="429780491"
Received: from aalbarra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.41.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 04:45:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 14:45:20 +0300
Message-Id: <20210427114520.4740-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: add intel_dp_hdcp.h and rename
 init accordingly
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

QWRkIHNlcGFyYXRlIGludGVsX2RwX2hkY3AuaCB0byBnbyB3aXRoIGludGVsX2RwX2hkY3AuYywg
YW5kIHJlbmFtZSB0aGUKaW5pdCBmdW5jdGlvbiBpbnRlbF9kcF9oZGNwX2luaXQoKSB0byBmb2xs
b3cgbmFtaW5nIHdoZXJlIGZ1bmN0aW9uCnByZWZpeCBtYXRjaGVzIHRoZSBmaWxlIG5hbWUuCgpT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgIHwgIDUgKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAgICAgIHwgIDMgLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYyB8ICA1ICsrKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuaCB8IDE1ICsrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgfCAgNSAr
KystLQogNSBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
aGRjcC5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDRhZDEy
ZGRlNTkzOC4uZGZhN2RhOTI4YWU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCkBAIC00OSwxMCArNDksMTEgQEAKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVz
LmgiCiAjaW5jbHVkZSAiaW50ZWxfZHAuaCIKICNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCIKKyNp
bmNsdWRlICJpbnRlbF9kcF9oZGNwLmgiCiAjaW5jbHVkZSAiaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5oIgogI2luY2x1ZGUgImludGVsX2RwX21zdC5oIgotI2luY2x1ZGUgImludGVsX2RwbGwuaCIK
ICNpbmNsdWRlICJpbnRlbF9kcGlvX3BoeS5oIgorI2luY2x1ZGUgImludGVsX2RwbGwuaCIKICNp
bmNsdWRlICJpbnRlbF9maWZvX3VuZGVycnVuLmgiCiAjaW5jbHVkZSAiaW50ZWxfaGRjcC5oIgog
I2luY2x1ZGUgImludGVsX2hkbWkuaCIKQEAgLTUzNDgsNyArNTM0OSw3IEBAIGludGVsX2RwX2lu
aXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCWludGVs
X2RwX2FkZF9wcm9wZXJ0aWVzKGludGVsX2RwLCBjb25uZWN0b3IpOwogCiAJaWYgKGlzX2hkY3Bf
c3VwcG9ydGVkKGRldl9wcml2LCBwb3J0KSAmJiAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkg
ewotCQlpbnQgcmV0ID0gaW50ZWxfZHBfaW5pdF9oZGNwKGRpZ19wb3J0LCBpbnRlbF9jb25uZWN0
b3IpOworCQlpbnQgcmV0ID0gaW50ZWxfZHBfaGRjcF9pbml0KGRpZ19wb3J0LCBpbnRlbF9jb25u
ZWN0b3IpOwogCQlpZiAocmV0KQogCQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkJ
ICAgICJIRENQIGluaXQgZmFpbGVkLCBza2lwcGluZy5cbiIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oCmluZGV4IDhkYjUwNjJmNmM0YS4uNjgwNjMxYjViNDM3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCkBAIC0xMTksOSArMTE5LDYgQEAg
dm9pZCBpbnRlbF9kZGlfdXBkYXRlX3BpcGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsCiAJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJ
CSAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKTsKIAotaW50
IGludGVsX2RwX2luaXRfaGRjcChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwK
LQkJICAgICAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3Rvcik7Ci0KIGJv
b2wgaW50ZWxfZHBfaW5pdGlhbF9mYXN0c2V0X2NoZWNrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2
b2lkIGludGVsX2RwX3N5bmNfc3RhdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfaGRjcC5jCmluZGV4IDJkZDkz
NjBiZGY5YS4uZDdjM2E3NGI4MWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2hkY3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2hkY3AuYwpAQCAtMTEsOSArMTEsMTAgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2hk
Y3AuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+CiAKLSNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGRpLmgiCisjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX2RwLmgiCisjaW5jbHVkZSAiaW50ZWxfZHBf
aGRjcC5oIgogI2luY2x1ZGUgImludGVsX2hkY3AuaCIKIAogc3RhdGljIHVuc2lnbmVkIGludCB0
cmFuc2NvZGVyX3RvX3N0cmVhbV9lbmNfc3RhdHVzKGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNj
b2RlcikKQEAgLTgzNSw3ICs4MzYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2hkY3Bf
c2hpbSBpbnRlbF9kcF9tc3RfaGRjcF9zaGltID0gewogCS5wcm90b2NvbCA9IEhEQ1BfUFJPVE9D
T0xfRFAsCiB9OwogCi1pbnQgaW50ZWxfZHBfaW5pdF9oZGNwKHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0LAoraW50IGludGVsX2RwX2hkY3BfaW5pdChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJICAgICAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmlu
dGVsX2Nvbm5lY3RvcikKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gaW50ZWxfY29ubmVj
dG9yLT5iYXNlLmRldjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfaGRjcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9o
ZGNwLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5lZmY1ZWM1YzUw
MjEKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2hkY3AuaApAQCAtMCwwICsxLDE1IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUICovCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjEgSW50ZWwgQ29ycG9yYXRpb24KKyAqLwor
CisjaWZuZGVmIF9fSU5URUxfRFBfSERDUF9fXworI2RlZmluZSBfX0lOVEVMX0RQX0hEQ1BfX18K
Kworc3RydWN0IGludGVsX2Nvbm5lY3RvcjsKK3N0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQ7CisK
K2ludCBpbnRlbF9kcF9oZGNwX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQsCisJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IpOwor
CisjZW5kaWYgLyogX19JTlRFTF9EUF9IRENQX19fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwppbmRleCAxODBmOTdjZDc0Y2IuLjM1NThiY2UyNDJlZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCkBAIC0zNCwx
MSArMzQsMTIgQEAKICNpbmNsdWRlICJpbnRlbF9jb25uZWN0b3IuaCIKICNpbmNsdWRlICJpbnRl
bF9kZGkuaCIKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCi0jaW5jbHVkZSAiaW50
ZWxfaG90cGx1Zy5oIgogI2luY2x1ZGUgImludGVsX2RwLmgiCisjaW5jbHVkZSAiaW50ZWxfZHBf
aGRjcC5oIgogI2luY2x1ZGUgImludGVsX2RwX21zdC5oIgogI2luY2x1ZGUgImludGVsX2RwaW9f
cGh5LmgiCiAjaW5jbHVkZSAiaW50ZWxfaGRjcC5oIgorI2luY2x1ZGUgImludGVsX2hvdHBsdWcu
aCIKICNpbmNsdWRlICJza2xfc2NhbGVyLmgiCiAKIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2Nv
bXB1dGVfbGlua19jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCkBAIC04MzIs
NyArODMzLDcgQEAgc3RhdGljIHN0cnVjdCBkcm1fY29ubmVjdG9yICppbnRlbF9kcF9hZGRfbXN0
X2Nvbm5lY3RvcihzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG8KIAlpbnRlbF9hdHRhY2hfYnJvYWRj
YXN0X3JnYl9wcm9wZXJ0eShjb25uZWN0b3IpOwogCiAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA8PSAxMikgewotCQlyZXQgPSBpbnRlbF9kcF9pbml0X2hkY3AoZGlnX3BvcnQsIGludGVsX2Nv
bm5lY3Rvcik7CisJCXJldCA9IGludGVsX2RwX2hkY3BfaW5pdChkaWdfcG9ydCwgaW50ZWxfY29u
bmVjdG9yKTsKIAkJaWYgKHJldCkKIAkJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiWyVz
OiVkXSBIRENQIE1TVCBpbml0IGZhaWxlZCwgc2tpcHBpbmcuXG4iLAogCQkJCSAgICBjb25uZWN0
b3ItPm5hbWUsIGNvbm5lY3Rvci0+YmFzZS5pZCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
