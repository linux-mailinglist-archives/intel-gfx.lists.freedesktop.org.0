Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FEBE295
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1415F89336;
	Mon, 29 Apr 2019 12:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1A089358
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:28:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 05:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168934857"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 05:28:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 15:29:33 +0300
Message-Id: <b2fd1b2b968aa0ce010d17e2811bc275cf9ca251.1556540890.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 15/21] drm/i915: extract intel_dp_mst.h from
 intel_drv.h
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

SXQgdXNlZCB0byBiZSBoYW5keSB0aGF0IHdlIG9ubHkgaGFkIGEgY291cGxlIG9mIGhlYWRlcnMs
IGJ1dCBvdmVyIHRpbWUKaW50ZWxfZHJ2LmggaGFzIGJlY29tZSB1bndpZWxkeS4gRXh0cmFjdCBk
ZWNsYXJhdGlvbnMgdG8gYSBzZXBhcmF0ZQpoZWFkZXIgZmlsZSBjb3JyZXNwb25kaW5nIHRvIHRo
ZSBpbXBsZW1lbnRhdGlvbiBtb2R1bGUsIGNsYXJpZnlpbmcgdGhlCm1vZHVsYXJpdHkgb2YgdGhl
IGRyaXZlci4KCkVuc3VyZSB0aGUgbmV3IGhlYWRlciBpcyBzZWxmLWNvbnRhaW5lZCwgYW5kIGRv
IHNvIHdpdGggbWluaW1hbCBmdXJ0aGVyCmluY2x1ZGVzLCB1c2luZyBmb3J3YXJkIGRlY2xhcmF0
aW9ucyBhcyBuZWVkZWQuIEluY2x1ZGUgdGhlIG5ldyBoZWFkZXIKb25seSB3aGVyZSBuZWVkZWQs
IGFuZCBzb3J0IHRoZSBtb2RpZmllZCBpbmNsdWRlIGRpcmVjdGl2ZXMgd2hpbGUgYXQgaXQKYW5k
IGFzIG5lZWRlZC4KCk5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KClNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5j
ICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfbXN0LmggICAgICAg
fCAxNCArKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAg
ICAgICAgfCAgNCAtLS0tCiA1IGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHBfbXN0LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4
IDNjNzYzNy4uMjI2YzQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXIt
dGVzdApAQCAtMjUsNiArMjUsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50ZWxfZHAuaCBcCiAJ
aW50ZWxfZHBfYXV4X2JhY2tsaWdodC5oIFwKIAlpbnRlbF9kcF9saW5rX3RyYWluaW5nLmggXAor
CWludGVsX2RwX21zdC5oIFwKIAlpbnRlbF9kcGxsX21nci5oIFwKIAlpbnRlbF9kcnYuaCBcCiAJ
aW50ZWxfZHNpLmggXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKaW5kZXggNDI3OWY5Ny4uNThmNmQw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKQEAgLTQ4LDYgKzQ4LDcgQEAKICNpbmNsdWRlICJp
bnRlbF9kZGkuaCIKICNpbmNsdWRlICJpbnRlbF9kcC5oIgogI2luY2x1ZGUgImludGVsX2RwX2xp
bmtfdHJhaW5pbmcuaCIKKyNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCIKICNpbmNsdWRlICJpbnRl
bF9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9maWZvX3VuZGVycnVuLmgiCiAjaW5jbHVkZSAiaW50
ZWxfaGRjcC5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfbXN0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9tc3QuYwppbmRleCA4ODM5ZWEuLjQ2
ZTg4MzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5jCkBAIC0zMiw2ICszMiw3IEBA
CiAjaW5jbHVkZSAiaW50ZWxfY29ubmVjdG9yLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGRpLmgiCiAj
aW5jbHVkZSAiaW50ZWxfZHAuaCIKKyNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCIKICNpbmNsdWRl
ICJpbnRlbF9kcnYuaCIKIAogc3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9saW5rX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHBfbXN0LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwLi4xNDcwYzYKLS0tIC9k
ZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9tc3QuaApAQCAtMCww
ICsxLDE0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCisvKgorICogQ29w
eXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIF9fSU5URUxf
RFBfTVNUX0hfXworI2RlZmluZSBfX0lOVEVMX0RQX01TVF9IX18KKworc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydDsKKworaW50IGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsIGludCBjb25uX2lkKTsKK3ZvaWQgaW50ZWxf
ZHBfbXN0X2VuY29kZXJfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9k
aWdfcG9ydCk7CisKKyNlbmRpZiAvKiBfX0lOVEVMX0RQX01TVF9IX18gKi8KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHJ2LmgKaW5kZXggMDg1NGMxNy4uOTE0NzRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cnYuaApAQCAtMTc2NiwxMCArMTc2Niw2IEBAIHVuc2lnbmVkIGludCBpOXh4X3BsYW5lX21heF9z
dHJpZGUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCQkgICB1MzIgcGl4ZWxfZm9ybWF0
LCB1NjQgbW9kaWZpZXIsCiAJCQkJICAgdW5zaWduZWQgaW50IHJvdGF0aW9uKTsKIAotLyogaW50
ZWxfZHBfbXN0LmMgKi8KLWludCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBpbnQgY29ubl9pZCk7Ci12b2lkIGludGVs
X2RwX21zdF9lbmNvZGVyX2NsZWFudXAoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxf
ZGlnX3BvcnQpOwotCiAvKiBpbnRlbF9kc2lfZGNzX2JhY2tsaWdodC5jICovCiBpbnQgaW50ZWxf
ZHNpX2Rjc19pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRl
bF9jb25uZWN0b3IpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
