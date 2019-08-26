Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E789D7CA
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 22:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF878924A;
	Mon, 26 Aug 2019 20:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EEF8924A
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 20:55:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 13:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="170977897"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.29])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2019 13:55:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 13:54:52 -0700
Message-Id: <20190826205459.29447-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/8] drm/i915/tgl: Guard and warn if more than one
 eDP panel is present
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpPbiBU
R0wrIGl0J3MgcG9zc2libGUgdG8gaGF2ZSBQU1IxIGVuYWJsZWQgaW4gb3RoZXIgcG9ydHMgYmVz
aWRlcyBERElBLgpQU1IyIGlzIHN0aWxsIGxpbWl0ZWQgdG8gRERJQS4gSG93ZXZlciBjdXJyZW50
bHkgd2UgaGFuZGxlIG9ubHkgb25lCmluc3RhbmNlIG9mIFBTUiBzdHJ1Y3QuIExldHMgZ3VhcmQg
aW50ZWxfcHNyX2luaXRfZHBjZCgpIGFnYWluc3QKbXVsdGlwbGUgZURQIHBhbmVscyBhbmQgd2Fy
biBhYm91dCBpdC4KCnYyOiBSZXdvcmQgY29tbWl0IG1lc3NhZ2UgdG8gYmUgVEdMKyBvbmx5IGFu
ZCB3aXRoIHRoZSBpbmZvIHdoZXJlClBTUjEvUFNSMiBhcmUgc3VwcG9ydGVkIChMdWNhcykKCkNj
OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
QW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwODIzMDgyMDU1LjU5OTIt
Ni1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YwppbmRleCAyOGI2MmU1ODcyMDQuLjc4ZTkyMDAxNWEwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0yODMsNiArMjgzLDExIEBAIHZvaWQgaW50ZWxfcHNy
X2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9CiAJCXRvX2k5MTUoZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5i
YXNlLmJhc2UuZGV2KTsKIAorCWlmIChkZXZfcHJpdi0+cHNyLmRwKSB7CisJCURSTV9XQVJOKCJN
b3JlIHRoYW4gb25lIGVEUCBwYW5lbCBmb3VuZCwgUFNSIHN1cHBvcnQgc2hvdWxkIGJlIGV4dGVu
ZGVkXG4iKTsKKwkJcmV0dXJuOworCX0KKwogCWRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5h
dXgsIERQX1BTUl9TVVBQT1JULCBpbnRlbF9kcC0+cHNyX2RwY2QsCiAJCQkgc2l6ZW9mKGludGVs
X2RwLT5wc3JfZHBjZCkpOwogCkBAIC0zMDUsNyArMzEwLDYgQEAgdm9pZCBpbnRlbF9wc3JfaW5p
dF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJZGV2X3ByaXYtPnBzci5zaW5rX3N5
bmNfbGF0ZW5jeSA9CiAJCWludGVsX2RwX2dldF9zaW5rX3N5bmNfbGF0ZW5jeShpbnRlbF9kcCk7
CiAKLQlXQVJOX09OKGRldl9wcml2LT5wc3IuZHApOwogCWRldl9wcml2LT5wc3IuZHAgPSBpbnRl
bF9kcDsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgJiYKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
