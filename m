Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 326AD6D447
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 21:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F1E6E45D;
	Thu, 18 Jul 2019 19:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63176E45D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 19:00:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 12:00:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="367025367"
Received: from anusha.jf.intel.com ([10.54.75.56])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jul 2019 12:00:08 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 11:50:15 -0700
Message-Id: <20190718185015.5193-1-anusha.srivatsa@intel.com>
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
bmZpZ3VyYXRpb24uCgp2MjogUmVtb3ZlIHRoZSBzZXBhcmF0ZSBkZWZpbmUgVEdMX0RQX0RTQ19N
QVhfU1VQUE9SVEVEX0JQQwphbmQgdXNlIHRoZSB2YWx1ZSBkaXJlY3RseS4oTW9yZSBzdWNoIGRl
ZmluZXMgY2FuIGJlIHJlbW92ZWQKYXMgcGFydCBvZiBmdXR1cmUgcGF0Y2hlcykuIChWaWxsZSkK
CnYzOiBVc2UgdmFsdWVzIGRpcmVjdGx5IGluc3RlYWQgb2YgYWNjZXNzaW5nIHRoZSBkZWZpbmVz
CmV2ZXJ5dGltZSBmb3IgbWluIGFuZCBtYXggRFNDIEJQQy4KCkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVz
aGEuc3JpdmF0c2FAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyB8IDE0ICsrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwppbmRleCAwZWI1ZDY2Zjg3YTcuLjk0N2M3ZTkxMTMwNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNjksOCArNjksNiBAQAogCiAvKiBEUCBEU0Mgc21h
bGwgam9pbmVyIGhhcyAyIEZJRk9zIGVhY2ggb2YgNjQwIHggNiBieXRlcyAqLwogI2RlZmluZSBE
UF9EU0NfTUFYX1NNQUxMX0pPSU5FUl9SQU1fQlVGRkVSCTYxNDQwCi0jZGVmaW5lIERQX0RTQ19N
SU5fU1VQUE9SVEVEX0JQQwkJOAotI2RlZmluZSBEUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMJCTEw
CiAKIC8qIERQIERTQyB0aHJvdWdocHV0IHZhbHVlcyB1c2VkIGZvciBzbGljZSBjb3VudCBjYWxj
dWxhdGlvbnMgS1BpeGVscy9zICovCiAjZGVmaW5lIERQX0RTQ19QRUFLX1BJWEVMX1JBVEUJCQky
NzIwMDAwCkBAIC0xOTE0LDExICsxOTEyLDE3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZHNjX2Nv
bXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJaWYgKCFpbnRlbF9kcF9z
dXBwb3J0c19kc2MoaW50ZWxfZHAsIHBpcGVfY29uZmlnKSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAK
LQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4LCBEUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMsCi0JCQkg
ICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOworCS8qIE1heCBEU0MgSW5wdXQgQlBD
IGZvciBJQ0wgaXMgMTAgYW5kIGZvciBUR0wrIGlzIDEyICovCisJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTIpCisJCWRzY19tYXhfYnBjID0gbWluX3QodTgsIDEyLCBjb25uX3N0YXRlLT5t
YXhfcmVxdWVzdGVkX2JwYyk7CisJZWxzZQorCQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4LCAxMCwK
KwkJCQkgICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwogCiAJcGlwZV9icHAgPSBp
bnRlbF9kcF9kc2NfY29tcHV0ZV9icHAoaW50ZWxfZHAsIGRzY19tYXhfYnBjKTsKLQlpZiAocGlw
ZV9icHAgPCBEUF9EU0NfTUlOX1NVUFBPUlRFRF9CUEMgKiAzKSB7CisKKwkvKiBNaW4gSW5wdXQg
QlBDIGZvciBJQ0wrIGlzIDggKi8KKwlpZiAocGlwZV9icHAgPCA4ICogMykgewogCQlEUk1fREVC
VUdfS01TKCJObyBEU0Mgc3VwcG9ydCBmb3IgbGVzcyB0aGFuIDhicGNcbiIpOwogCQlyZXR1cm4g
LUVJTlZBTDsKIAl9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
