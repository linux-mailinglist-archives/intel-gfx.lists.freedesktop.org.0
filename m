Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD0D90FB6
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FFA8986D;
	Sat, 17 Aug 2019 09:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E496E2F7
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950584"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:28 -0700
Message-Id: <20190817093902.2171-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/40] drm/i915: Add transcoder restriction
 to PSR2
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBY2Nv
cmRpbmcgdG8gUFNSMl9DVEwgZGVmaW5pdGlvbiBpbiBCU3BlYyB0aGVyZSBpcyBvbmx5IG9uZSBp
bnN0YW5jZSBvZgpQU1IyX0NUTC4gUGxhdGZvcm1zIGdlbiA8IDEyIHdpdGggRURQIHRyYW5zY29k
ZXIgb25seSBzdXBwb3J0IFBTUjIgb24KVFJBTlNDT0RFUl9FRFAgd2hpbGUgb24gVEdMIFBTUjIg
aXMgb25seSBzdXBwb3J0ZWQgYnkgVFJBTlNDT0RFUl9BLgoKU2luY2UgQkRXIFBTUiBpcyBhbGxv
d2VkIG9uIGFueSBwb3J0LCBidXQgd2UgbmVlZCB0byByZXN0cmljdCBieSB0cmFuc2NvZGVyLgoK
QlNwZWM6IDc3MTMKQlNwZWM6IDIwNTg0CkNjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWth
cmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCAxNiArKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDc3MjMyZjZi
Y2ExNy4uNDM1MzI3MGJkNjVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKQEAgLTUzNCw2ICs1MzQsMTYgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlJOTE1X1dSSVRFKEVEUF9QU1IyX0NUTChkZXZf
cHJpdi0+cHNyLnRyYW5zY29kZXIpLCB2YWwpOwogfQogCitzdGF0aWMgYm9vbAorX3BzcjJfc3Vw
cG9ydGVkX2luX3RyYW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCSBl
bnVtIHRyYW5zY29kZXIgdHJhbnMpCit7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
CisJCXJldHVybiB0cmFucyA9PSBUUkFOU0NPREVSX0E7CisJZWxzZQorCQlyZXR1cm4gdHJhbnMg
PT0gVFJBTlNDT0RFUl9FRFA7Cit9CisKIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3Zh
bGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogewpAQCAtNTQ1LDYgKzU1NSwxMiBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICgh
ZGV2X3ByaXYtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCkKIAkJcmV0dXJuIGZhbHNlOwogCisJaWYg
KCFfcHNyMl9zdXBwb3J0ZWRfaW5fdHJhbnMoZGV2X3ByaXYsIGNydGNfc3RhdGUtPmNwdV90cmFu
c2NvZGVyKSkgeworCQlEUk1fREVCVUdfS01TKCJQU1IyIG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNj
b2RlciAlc1xuIiwKKwkJCSAgICAgIHRyYW5zY29kZXJfbmFtZShjcnRjX3N0YXRlLT5jcHVfdHJh
bnNjb2RlcikpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCiAJLyoKIAkgKiBEU0MgYW5kIFBTUjIg
Y2Fubm90IGJlIGVuYWJsZWQgc2ltdWx0YW5lb3VzbHkuIElmIGEgcmVxdWVzdGVkCiAJICogcmVz
b2x1dGlvbiByZXF1aXJlcyBEU0MgdG8gYmUgZW5hYmxlZCwgcHJpb3JpdHkgaXMgZ2l2ZW4gdG8g
RFNDCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
