Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 850CC64F2D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 01:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7E68970B;
	Wed, 10 Jul 2019 23:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBCF8970B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 23:19:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 16:19:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="341213111"
Received: from anusha.jf.intel.com ([10.54.75.177])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2019 16:19:04 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 16:09:21 -0700
Message-Id: <20190710230921.21015-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs supported
 by TGL
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

RFNDIGVuZ2luZSBvbiBJQ0wgc3VwcG9ydHMgb25seSA4IGFuZCAxMCBCUEMgYXMgdGhlIGlucHV0
CkJQQy4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBvcnRzIDgsIDEwIGFuZCAxMiBCUEMuCkFk
ZCAxMiBCUEMgc3VwcG9ydCBmb3IgRFNDIHdoaWxlIGNhbGN1bGF0aW5nIGNvbXByZXNzaW9uCmNv
bmZpZ3VyYXRpb24uCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDkgKysr
KysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCAwYmRiN2VjYzVhODEu
LmNkMDg5NjQzYzgwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpA
QCAtNzEsNiArNzEsNyBAQAogI2RlZmluZSBEUF9EU0NfTUFYX1NNQUxMX0pPSU5FUl9SQU1fQlVG
RkVSCTYxNDQwCiAjZGVmaW5lIERQX0RTQ19NSU5fU1VQUE9SVEVEX0JQQwkJOAogI2RlZmluZSBE
UF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMJCTEwCisjZGVmaW5lIFRHTF9EUF9EU0NfTUFYX1NVUFBP
UlRFRF9CUEMJCTEyCiAKIC8qIERQIERTQyB0aHJvdWdocHV0IHZhbHVlcyB1c2VkIGZvciBzbGlj
ZSBjb3VudCBjYWxjdWxhdGlvbnMgS1BpeGVscy9zICovCiAjZGVmaW5lIERQX0RTQ19QRUFLX1BJ
WEVMX1JBVEUJCQkyNzIwMDAwCkBAIC0xOTExLDggKzE5MTIsMTIgQEAgc3RhdGljIGludCBpbnRl
bF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlpZiAo
IWludGVsX2RwX3N1cHBvcnRzX2RzYyhpbnRlbF9kcCwgcGlwZV9jb25maWcpKQogCQlyZXR1cm4g
LUVJTlZBTDsKIAotCWRzY19tYXhfYnBjID0gbWluX3QodTgsIERQX0RTQ19NQVhfU1VQUE9SVEVE
X0JQQywKLQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVkX2JwYyk7CisJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPiAxMSkKKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgVEdMX0RQX0RT
Q19NQVhfU1VQUE9SVEVEX0JQQywKKwkJCQkgICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9i
cGMpOworCWVsc2UKKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgRFBfRFNDX01BWF9TVVBQT1JU
RURfQlBDLAorCQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVkX2JwYyk7CiAKIAlwaXBl
X2JwcCA9IGludGVsX2RwX2RzY19jb21wdXRlX2JwcChpbnRlbF9kcCwgZHNjX21heF9icGMpOwog
CWlmIChwaXBlX2JwcCA8IERQX0RTQ19NSU5fU1VQUE9SVEVEX0JQQyAqIDMpIHsKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
