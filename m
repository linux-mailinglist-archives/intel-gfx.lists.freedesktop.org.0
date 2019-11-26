Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173CB109759
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 01:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C4C89BFF;
	Tue, 26 Nov 2019 00:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3076489949
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:54:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 16:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="206308318"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.225])
 by fmsmga008.fm.intel.com with ESMTP; 25 Nov 2019 16:54:01 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 16:53:56 -0800
Message-Id: <20191126005400.264480-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/psr: Add bits per pixel
 limitation
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

UFNSMiBIVyBvbmx5IHN1cHBvcnQgYSBsaW1pdGVkIG51bWJlciBvZiBiaXRzIHBlciBwaXhlbCwg
aWYgbW9kZSBoYXMKbW9yZSB0aGFuIHN1cHBvcnRlZCBQU1IyIHNob3VsZCBub3QgYmUgZW5hYmxl
ZC4KCkJTcGVjOiA1MDQyMgpCU3BlYzogNzcxMwpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwg
MTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggYzFk
MTMzMzYyYjc2Li4wZDg0ZWEyOGJjNmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwpAQCAtNjA4LDcgKzYwOCw3IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29u
ZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAJaW50IGNydGNfaGRpc3Bs
YXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRpc3BsYXk7CiAJaW50IGNy
dGNfdmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXk7
Ci0JaW50IHBzcl9tYXhfaCA9IDAsIHBzcl9tYXhfdiA9IDA7CisJaW50IHBzcl9tYXhfaCA9IDAs
IHBzcl9tYXhfdiA9IDAsIG1heF9icHAgPSAwOwogCiAJaWYgKCFkZXZfcHJpdi0+cHNyLnNpbmtf
cHNyMl9zdXBwb3J0KQogCQlyZXR1cm4gZmFsc2U7CkBAIC02MzIsMTIgKzYzMiwxNSBAQCBzdGF0
aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CiAJCXBzcl9tYXhfaCA9IDUxMjA7
CiAJCXBzcl9tYXhfdiA9IDMyMDA7CisJCW1heF9icHAgPSAzMDsKIAl9IGVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKIAkJcHNy
X21heF9oID0gNDA5NjsKIAkJcHNyX21heF92ID0gMjMwNDsKKwkJbWF4X2JwcCA9IDI0OwogCX0g
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkgewogCQlwc3JfbWF4X2ggPSAzNjQwOwogCQlw
c3JfbWF4X3YgPSAyMzA0OworCQltYXhfYnBwID0gMjQ7CiAJfQogCiAJaWYgKGNydGNfaGRpc3Bs
YXkgPiBwc3JfbWF4X2ggfHwgY3J0Y192ZGlzcGxheSA+IHBzcl9tYXhfdikgewpAQCAtNjQ3LDYg
KzY1MCwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJaWYgKGNydGNfc3RhdGUt
PnBpcGVfYnBwID4gbWF4X2JwcCkgeworCQlEUk1fREVCVUdfS01TKCJQU1IyIG5vdCBlbmFibGVk
LCBwaXBlIGJwcCAlZCA+IG1heCBzdXBwb3J0ZWQgJWRcbiIsCisJCQkgICAgICBjcnRjX3N0YXRl
LT5waXBlX2JwcCwgbWF4X2JwcCk7CisJCXJldHVybiBmYWxzZTsKKwl9CisKIAkvKgogCSAqIEhX
IHNlbmRzIFNVIGJsb2NrcyBvZiBzaXplIGZvdXIgc2NhbiBsaW5lcywgd2hpY2ggbWVhbnMgdGhl
IHN0YXJ0aW5nCiAJICogWCBjb29yZGluYXRlIGFuZCBZIGdyYW51bGFyaXR5IHJlcXVpcmVtZW50
cyB3aWxsIGFsd2F5cyBiZSBtZXQuIFdlCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
