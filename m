Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D82310C00D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 23:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E59889321;
	Wed, 27 Nov 2019 22:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5868929F
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:13:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 14:13:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="383633834"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2019 14:13:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 14:13:12 -0800
Message-Id: <20191127221314.575575-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Handle SDEISR according to PCH
 rather than platform
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

VGhlIFNvdXRoIERpc3BsYXkgaXMgcGFydCBvZiB0aGUgUENIIHNvIHdlIHNob3VsZCB0ZWNobmlj
YWxseSBiZSBiYXNpbmcKb3VyIHBvcnQgZGV0ZWN0aW9uIGxvZ2ljIG9mZiB0aGUgUENIIGluIHVz
ZSByYXRoZXIgdGhhbiB0aGUgcGxhdGZvcm0KZ2VuZXJhdGlvbi4KCkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKaW5kZXggYmU5ZThlNDQ5N2JmLi43NzdhZGI4NzViYTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTU0OTgsNyArNTQ5OCw3IEBAIHN0YXRpYyBib29sIGlj
bF9jb21ib19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJcmV0dXJuIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX0RESV9IT1RQTFVHX0lDUChwb3J0KTsK
IH0KIAotc3RhdGljIGJvb2wgaWNsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIpCitzdGF0aWMgYm9vbCBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3Rl
ZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydCgmZW5jb2Rlci0+YmFz
ZSk7CkBAIC01NTM2LDkgKzU1MzYsOSBAQCBzdGF0aWMgYm9vbCBfX2ludGVsX2RpZ2l0YWxfcG9y
dF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJCQlyZXR1cm4gZzR4
X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5jb2Rlcik7CiAJfQogCi0JaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEpCi0JCXJldHVybiBpY2xfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNv
ZGVyKTsKLQllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSB8fCBJU19HRU45X0JDKGRldl9w
cml2KSkKKwlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApCisJCXJldHVy
biBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKKwllbHNlIGlmIChJTlRFTF9Q
Q0hfVFlQRShkZXZfcHJpdikgPj0gUENIX1NQVCkKIAkJcmV0dXJuIHNwdF9kaWdpdGFsX3BvcnRf
Y29ubmVjdGVkKGVuY29kZXIpOwogCWVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQogCQly
ZXR1cm4gYnh0X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5jb2Rlcik7Ci0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
