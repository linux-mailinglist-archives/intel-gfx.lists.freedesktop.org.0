Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A3AA9FCA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 12:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7482289FDE;
	Thu,  5 Sep 2019 10:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E9389FDE
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 10:37:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="266980582"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 05 Sep 2019 03:37:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 13:37:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 13:37:06 +0300
Message-Id: <20190905103706.3421-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-8-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/15] drm/i915: Check pipe source size
 against pfit limits
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBwYW5lbCBmaXR0ZXIgaW1wb3NlcyBleHRyYSBsaW1pdHMgb24gdGhlIG1heGltdW0gcGlwZSBz
b3VyY2UKc2l6ZSB3ZSBjYW4gdXNlLiBDaGVjayBmb3IgdGhhdC4KCnYyOiBTa2lwIHRoZSBjaGVj
a3MgaWYgdGhlIGNydGMgaXMgZGlzYWJsZWQKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1NyArKysrKysrKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDM0ODA3MWRiOGI0Yy4uY2NlYzJiNTQ2NzdkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE3
NjgsNiArMTE3NjgsNTcgQEAgc3RhdGljIGJvb2wgYzhfcGxhbmVzX2NoYW5nZWQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQogCXJldHVybiAhb2xkX2NydGNf
c3RhdGUtPmM4X3BsYW5lcyAhPSAhbmV3X2NydGNfc3RhdGUtPmM4X3BsYW5lczsKIH0KIAorc3Rh
dGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVja19zcmNfc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRv
X2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwlpbnQgbWF4X3NyY193
LCBtYXhfc3JjX2g7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCQltYXhf
c3JjX3cgPSA1MTIwOworCQltYXhfc3JjX2ggPSA0MzIwOworCX0gZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgeworCQltYXhfc3Jj
X3cgPSBjcnRjLT5waXBlID09IFBJUEVfQSA/IDUxMjAgOiA0MDk2OworCQltYXhfc3JjX2ggPSA0
MDk2OworCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4KSB7CisJCW1heF9zcmNf
dyA9IDQwOTY7CisJCW1heF9zcmNfaCA9IDQwOTY7CisJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDcpIHsKKwkJLyoKKwkJICogUEYwIDd4NSBjYXBhYmxlCisJCSAqIFBGMSAzeDMg
Y2FwYWJsZSAoY291bGQgYmUgc3dpdGNoZWQgdG8gN3g1CisJCSAqICAgICAgICAgICAgICAgICAg
bW9kZSBvbiBIU1cgd2hlbiBQRjIgdW51c2VkKQorCQkgKiBQRjIgM3gzIGNhcGFibGUKKwkJICoK
KwkJICogVGhpcyBhc3N1bWVzIHdlIHVzZSBhIDE6MSBtYXBwaW5nIGJldHdlZW4gcGlwZSBhbmQg
UEYuCisJCSAqLworCQltYXhfc3JjX3cgPSBjcnRjLT5waXBlID09IFBJUEVfQSA/IDQwOTYgOiAy
MDQ4OworCQltYXhfc3JjX2ggPSA0MDk2OworCX0gZWxzZSB7CisJCW1heF9zcmNfdyA9IDQwOTY7
CisJCW1heF9zcmNfaCA9IDQwOTY7CisJfQorCisJaWYgKGNydGNfc3RhdGUtPnBpcGVfc3JjX3cg
PiBtYXhfc3JjX3cgfHwKKwkgICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCA+IG1heF9zcmNfaCkg
eworCQlEUk1fREVCVUdfS01TKCJwaXBlICVjIHNvdXJjZSBzaXplICglZHglZCkgZXhjZWVkcyBw
Zml0IG1heCAoJWR4JWQpXG4iLAorCQkJICAgICAgcGlwZV9uYW1lKGNydGMtPnBpcGUpLCBjcnRj
X3N0YXRlLT5waXBlX3NyY193LAorCQkJICAgICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCwgbWF4
X3NyY193LCBtYXhfc3JjX2gpOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisKKwlyZXR1cm4gMDsK
K30KKworc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVjayhjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoIWNydGNfc3RhdGUtPmJhc2UuZW5hYmxl
IHx8CisJICAgICFjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQorCQlyZXR1cm4gMDsKKwor
CXJldHVybiBpbnRlbF9wY2hfcGZpdF9jaGVja19zcmNfc2l6ZShjcnRjX3N0YXRlKTsKK30KKwog
c3RhdGljIGludCBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMs
CiAJCQkJICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewpAQCAtMTE3OTEs
NiArMTE4NDIsMTIgQEAgc3RhdGljIGludCBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMsCiAJCQlyZXR1cm4gcmV0OwogCX0KIAorCWlmICghSEFTX0dNQ0goZGV2
X3ByaXYpKSB7CisJCXJldCA9IGludGVsX3BjaF9wZml0X2NoZWNrKHBpcGVfY29uZmlnKTsKKwkJ
aWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisJfQorCiAJLyoKIAkgKiBNYXkgbmVlZCB0byB1cGRh
dGUgcGlwZSBnYW1tYSBlbmFibGUgYml0cwogCSAqIHdoZW4gQzggcGxhbmVzIGFyZSBnZXR0aW5n
IGVuYWJsZWQvZGlzYWJsZWQuCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
