Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D869FF0BBA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 02:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2CA6EBBA;
	Wed,  6 Nov 2019 01:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC96F6E11D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 01:45:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 17:45:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,272,1569308400"; d="scan'208";a="196037937"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2019 17:45:09 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 17:45:00 -0800
Message-Id: <20191106014504.167656-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Add bits per pixel limitation
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

UFNSMiBIVyBvbmx5IHN1cHBvcnQgYSBsaW1pdGVkIG51bWJlciBvZiBiaXRzIHBlciBwaXhlbCwg
aWYgbW9kZSBoYXMKbW9yZSB0aGFuIHN1cHBvcnRlZCBQU1IyIHNob3VsZCBub3QgYmUgZW5hYmxl
ZC4KCkJTcGVjOiA1MDQyMgpCU3BlYzogNzcxMwpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKaW5kZXggYzFkMTMzMzYyYjc2Li4wZDg0ZWEyOGJjNmYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtNjA4LDcgKzYwOCw3IEBAIHN0YXRpYyBib29s
IGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAJ
aW50IGNydGNfaGRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRp
c3BsYXk7CiAJaW50IGNydGNfdmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2Rl
LmNydGNfdmRpc3BsYXk7Ci0JaW50IHBzcl9tYXhfaCA9IDAsIHBzcl9tYXhfdiA9IDA7CisJaW50
IHBzcl9tYXhfaCA9IDAsIHBzcl9tYXhfdiA9IDAsIG1heF9icHAgPSAwOwogCiAJaWYgKCFkZXZf
cHJpdi0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KQogCQlyZXR1cm4gZmFsc2U7CkBAIC02MzIsMTIg
KzYzMiwxNSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CiAJCXBz
cl9tYXhfaCA9IDUxMjA7CiAJCXBzcl9tYXhfdiA9IDMyMDA7CisJCW1heF9icHAgPSAzMDsKIAl9
IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZf
cHJpdikpIHsKIAkJcHNyX21heF9oID0gNDA5NjsKIAkJcHNyX21heF92ID0gMjMwNDsKKwkJbWF4
X2JwcCA9IDI0OwogCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkgewogCQlwc3JfbWF4
X2ggPSAzNjQwOwogCQlwc3JfbWF4X3YgPSAyMzA0OworCQltYXhfYnBwID0gMjQ7CiAJfQogCiAJ
aWYgKGNydGNfaGRpc3BsYXkgPiBwc3JfbWF4X2ggfHwgY3J0Y192ZGlzcGxheSA+IHBzcl9tYXhf
dikgewpAQCAtNjQ3LDYgKzY1MCwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192
YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJ
aWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwID4gbWF4X2JwcCkgeworCQlEUk1fREVCVUdfS01TKCJQ
U1IyIG5vdCBlbmFibGVkLCBwaXBlIGJwcCAlZCA+IG1heCBzdXBwb3J0ZWQgJWRcbiIsCisJCQkg
ICAgICBjcnRjX3N0YXRlLT5waXBlX2JwcCwgbWF4X2JwcCk7CisJCXJldHVybiBmYWxzZTsKKwl9
CisKIAkvKgogCSAqIEhXIHNlbmRzIFNVIGJsb2NrcyBvZiBzaXplIGZvdXIgc2NhbiBsaW5lcywg
d2hpY2ggbWVhbnMgdGhlIHN0YXJ0aW5nCiAJICogWCBjb29yZGluYXRlIGFuZCBZIGdyYW51bGFy
aXR5IHJlcXVpcmVtZW50cyB3aWxsIGFsd2F5cyBiZSBtZXQuIFdlCi0tIAoyLjI0LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
