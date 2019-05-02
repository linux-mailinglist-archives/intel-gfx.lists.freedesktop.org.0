Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEDD1170A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 12:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECCA892B9;
	Thu,  2 May 2019 10:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D67892B9
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 10:18:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 03:18:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="147517360"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 03:18:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 13:17:54 +0300
Message-Id: <20190502101754.29219-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Tune down WARN about incorrect VBT TC
 legacy flag
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
Cc: Jani Nikula <jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgbGlrZSBWQlQgY29udGFpbnMgYWdhaW4gdGhlIHdyb25nIGluZm9ybWF0aW9uIGFib3V0
IGEgcG9ydCdzIFR5cGVDCmxlZ2FjeSB2cy4gRFAtYWx0L1RCVC1hbHQgdHlwZS4gVGhlcmUgaXMg
bm8gZnVydGhlciBpc3N1ZXMgYWZ0ZXIgd2UKbm90aWNlIHRoaXMgYW5kIGZpeCBpdCB1cCwgc28g
dHVuZSBkb3duIHRoZSBXQVJOIHRvIGJlIGEgYSBEUk1fRVJST1IuCgpUaGlzIGFsc28gYXZvaWRz
IENJIHRhaW50aW5nIHRoZSBrZXJuZWwgYW5kIHN0b3BwaW5nIHRoZSB0ZXN0IHJ1bi4KCkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA1NzgK
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kcC5jIHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCmluZGV4IDRlN2I4ZDI5ZDczMy4u
MDdmYTI2NzBhNjc3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKQEAgLTUyMzAsOSArNTIzMCwx
MiBAQCBzdGF0aWMgYm9vbCBpY2xfdGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCSAqIFdBUk4gaWYgd2UgZ290IGEgbGVnYWN5IHBvcnQgSFBELCBi
dXQgVkJUIGRpZG4ndCBtYXJrIHRoZSBwb3J0IGFzCiAJICogbGVnYWN5LiBUcmVhdCB0aGUgcG9y
dCBhcyBsZWdhY3kgZnJvbSBub3cgb24uCiAJICovCi0JaWYgKFdBUk5fT04oIWludGVsX2RpZ19w
b3J0LT50Y19sZWdhY3lfcG9ydCAmJgotCQkgICAgSTkxNV9SRUFEKFNERUlTUikgJiBTREVfVENf
SE9UUExVR19JQ1AodGNfcG9ydCkpKQorCWlmICghaW50ZWxfZGlnX3BvcnQtPnRjX2xlZ2FjeV9w
b3J0ICYmCisJICAgIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3Bv
cnQpKSB7CisJCURSTV9FUlJPUigiVkJUIGluY29ycmVjdGx5IGNsYWltcyBwb3J0ICVjIGlzIG5v
dCBUeXBlQyBsZWdhY3lcbiIsCisJCQkgIHBvcnRfbmFtZShwb3J0KSk7CiAJCWludGVsX2RpZ19w
b3J0LT50Y19sZWdhY3lfcG9ydCA9IHRydWU7CisJfQogCWlzX2xlZ2FjeSA9IGludGVsX2RpZ19w
b3J0LT50Y19sZWdhY3lfcG9ydDsKIAogCS8qCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
