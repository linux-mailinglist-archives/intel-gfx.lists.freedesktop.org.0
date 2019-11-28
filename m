Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD4910C1DE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6CA36E5D8;
	Thu, 28 Nov 2019 01:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C5A6E02B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:48:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:48:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="211863846"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.66])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2019 17:48:54 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 17:48:48 -0800
Message-Id: <20191128014852.214135-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/5] drm/i915/psr: Add bits per pixel
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
Y29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsr
KysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGMxZDEzMzM2
MmI3Ni4uMGQ4NGVhMjhiYzZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKQEAgLTYwOCw3ICs2MDgsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192
YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCWludCBjcnRjX2hkaXNwbGF5ID0g
Y3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hkaXNwbGF5OwogCWludCBjcnRjX3Zk
aXNwbGF5ID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5OwotCWlu
dCBwc3JfbWF4X2ggPSAwLCBwc3JfbWF4X3YgPSAwOworCWludCBwc3JfbWF4X2ggPSAwLCBwc3Jf
bWF4X3YgPSAwLCBtYXhfYnBwID0gMDsKIAogCWlmICghZGV2X3ByaXYtPnBzci5zaW5rX3BzcjJf
c3VwcG9ydCkKIAkJcmV0dXJuIGZhbHNlOwpAQCAtNjMyLDEyICs2MzIsMTUgQEAgc3RhdGljIGJv
b2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewogCQlwc3JfbWF4X2ggPSA1MTIwOwogCQlw
c3JfbWF4X3YgPSAzMjAwOworCQltYXhfYnBwID0gMzA7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7CiAJCXBzcl9tYXhf
aCA9IDQwOTY7CiAJCXBzcl9tYXhfdiA9IDIzMDQ7CisJCW1heF9icHAgPSAyNDsKIAl9IGVsc2Ug
aWYgKElTX0dFTihkZXZfcHJpdiwgOSkpIHsKIAkJcHNyX21heF9oID0gMzY0MDsKIAkJcHNyX21h
eF92ID0gMjMwNDsKKwkJbWF4X2JwcCA9IDI0OwogCX0KIAogCWlmIChjcnRjX2hkaXNwbGF5ID4g
cHNyX21heF9oIHx8IGNydGNfdmRpc3BsYXkgPiBwc3JfbWF4X3YpIHsKQEAgLTY0Nyw2ICs2NTAs
MTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKIAkJcmV0dXJuIGZhbHNlOwogCX0KIAorCWlmIChjcnRjX3N0YXRlLT5waXBl
X2JwcCA+IG1heF9icHApIHsKKwkJRFJNX0RFQlVHX0tNUygiUFNSMiBub3QgZW5hYmxlZCwgcGlw
ZSBicHAgJWQgPiBtYXggc3VwcG9ydGVkICVkXG4iLAorCQkJICAgICAgY3J0Y19zdGF0ZS0+cGlw
ZV9icHAsIG1heF9icHApOworCQlyZXR1cm4gZmFsc2U7CisJfQorCiAJLyoKIAkgKiBIVyBzZW5k
cyBTVSBibG9ja3Mgb2Ygc2l6ZSBmb3VyIHNjYW4gbGluZXMsIHdoaWNoIG1lYW5zIHRoZSBzdGFy
dGluZwogCSAqIFggY29vcmRpbmF0ZSBhbmQgWSBncmFudWxhcml0eSByZXF1aXJlbWVudHMgd2ls
bCBhbHdheXMgYmUgbWV0LiBXZQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
