Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9692E29D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B255389363;
	Mon, 29 Apr 2019 12:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53CE089327
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:28:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 05:28:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168934891"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 05:28:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 15:29:38 +0300
Message-Id: <6aea17072684dec0b04b6831c0c0e5a134edf87e.1556540890.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 20/21] drm/i915: extract intel_combo_phy.h from
 i915_drv.h
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
IGJ1dCBvdmVyIHRpbWUKaTkxNV9kcnYuaCBoYXMgYmVjb21lIHVud2llbGR5LiBFeHRyYWN0IGRl
Y2xhcmF0aW9ucyB0byBhIHNlcGFyYXRlCmhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcgdG8gdGhl
IGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKbW9kdWxhcml0eSBvZiB0aGUg
ZHJpdmVyLgoKRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8g
c28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKaW5jbHVkZXMsIHVzaW5nIGZvcndhcmQgZGVjbGFyYXRp
b25zIGFzIG5lZWRlZC4gSW5jbHVkZSB0aGUgbmV3IGhlYWRlcgpvbmx5IHdoZXJlIG5lZWRlZCwg
YW5kIHNvcnQgdGhlIG1vZGlmaWVkIGluY2x1ZGUgZGlyZWN0aXZlcyB3aGlsZSBhdCBpdAphbmQg
YXMgbmVlZGVkLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgIHwgIDYgLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb21i
b19waHkuYyAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbWJvX3BoeS5o
ICAgIHwgMTYgKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jICAgfCAgMSArCiA1IGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfY29tYm9fcGh5LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0
CmluZGV4IGJmZjE1My4uOTVlNGVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5o
ZWFkZXItdGVzdApAQCAtMTksNiArMTksNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50ZWxfYmlv
cy5oIFwKIAlpbnRlbF9jZGNsay5oIFwKIAlpbnRlbF9jb2xvci5oIFwKKwlpbnRlbF9jb21ib19w
aHkuaCBcCiAJaW50ZWxfY29ubmVjdG9yLmggXAogCWludGVsX2NydC5oIFwKIAlpbnRlbF9jc3Iu
aCBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAxNmIyY2U3Li44ODZhMzAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaApAQCAtMzM2NCwxMiArMzM2NCw2IEBAIHZvaWQgdmx2X3BoeV9wcmVf
ZW5jb2Rlcl9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiB2b2lkIHZsdl9w
aHlfcmVzZXRfbGFuZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKTsKIAotLyogaW50ZWxfY29t
Ym9fcGh5LmMgKi8KLXZvaWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpY2xfY29tYm9fcGh5c191bmluaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQgY25sX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBjbmxfY29tYm9fcGh5c191bmluaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLQogI2RlZmluZSBfX0k5MTVfUkVH
X09QKG9wX18sIGRldl9wcml2X18sIC4uLikgXAogCWludGVsX3VuY29yZV8jI29wX18oJihkZXZf
cHJpdl9fKS0+dW5jb3JlLCBfX1ZBX0FSR1NfXykKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
b21ib19waHkuYwppbmRleCAyYmY0MzU5ZDcuLjVjN2ViNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2NvbWJvX3BoeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NvbWJvX3BoeS5jCkBAIC0zLDYgKzMsNyBAQAogICogQ29weXJpZ2h0IMKpIDIwMTgg
SW50ZWwgQ29ycG9yYXRpb24KICAqLwogCisjaW5jbHVkZSAiaW50ZWxfY29tYm9fcGh5LmgiCiAj
aW5jbHVkZSAiaW50ZWxfZHJ2LmgiCiAKICNkZWZpbmUgZm9yX2VhY2hfY29tYm9fcG9ydChfX2Rl
dl9wcml2LCBfX3BvcnQpIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2NvbWJvX3BoeS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29tYm9fcGh5LmgKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwLi5mN2YxZTUKLS0tIC9kZXYvbnVsbAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb21ib19waHkuaApAQCAtMCwwICsxLDE2IEBA
CisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCisvKgorICogQ29weXJpZ2h0IMKp
IDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIF9fSU5URUxfQ09NQk9fUEhZ
X0hfXworI2RlZmluZSBfX0lOVEVMX0NPTUJPX1BIWV9IX18KKworc3RydWN0IGRybV9pOTE1X3By
aXZhdGU7CisKK3ZvaWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpOwordm9pZCBpY2xfY29tYm9fcGh5c191bmluaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKK3ZvaWQgY25sX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwordm9pZCBjbmxfY29tYm9fcGh5c191bmluaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKKworI2VuZGlmIC8qIF9fSU5URUxfQ09N
Qk9fUEhZX0hfXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCmluZGV4
IDYxYjZmZC4uYzU1NjZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
dW50aW1lX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5j
CkBAIC0zNCw2ICszNCw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1
X2lycS5oIgogI2luY2x1ZGUgImludGVsX2NkY2xrLmgiCisjaW5jbHVkZSAiaW50ZWxfY29tYm9f
cGh5LmgiCiAjaW5jbHVkZSAiaW50ZWxfY3J0LmgiCiAjaW5jbHVkZSAiaW50ZWxfY3NyLmgiCiAj
aW5jbHVkZSAiaW50ZWxfZHAuaCIKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
