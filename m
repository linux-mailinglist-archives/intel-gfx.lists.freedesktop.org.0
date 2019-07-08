Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE8D62C8B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E876E049;
	Mon,  8 Jul 2019 23:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DC489FF6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859630"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:17 -0700
Message-Id: <20190708231629.9296-14-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/25] drm/i915/tgl: Add additional ports for
 Tiger Lake
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

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpUaGVy
ZSBhcmUgMiBuZXcgYWRkaXRpb25hbCB0eXBlQyBwb3J0cyBpbiBUaWdlciBMYWtlIGFuZCBQT1JU
LUMgaXMgbm93IGEKY29tYm9waHkgcG9ydC4gVGhpcyByZXN1bHRzIGluIDYgdHlwZUMgcG9ydHMg
YW5kIDMgY29tYm9waHkgcG9ydHMuClRoZXNlIDYgVEMgcG9ydHMgY2FuIGJlIERQIGFsdGVybmF0
ZSBtb2RlLCBEUCBvdmVyIHRodW5kZXJib2x0LCBuYXRpdmUKRFAgb24gbGVnYWN5IERQIGNvbm5l
Y3RvciBvciBuYXRpdmUgSERNSSBvbiBsZWdhY3kgY29ubmVjdG9yLgoKdjI6IFJlYmFzZSBvbiBu
ZXcgbW9kdWxhciBGSUEgY29kZSAoTHVjYXMpCgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEu
c3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICAgfCAxMiArKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDIgKysKIGluY2x1ZGUvZHJtL2k5MTVfY29tcG9u
ZW50LmggICAgICAgICAgICAgICAgIHwgIDIgKy0KIGluY2x1ZGUvZHJtL2k5MTVfZHJtLmggICAg
ICAgICAgICAgICAgICAgICAgIHwgIDMgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwppbmRleCAzMGU0ODYwOWRiMWQuLmU3MmNmMGJiNDhhNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00Mjk3LDYgKzQyOTcsMTggQEAgdm9pZCBpbnRl
bF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBw
b3J0KQogCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9CiAJCQlQT1dFUl9E
T01BSU5fUE9SVF9ERElfRl9JTzsKIAkJYnJlYWs7CisJY2FzZSBQT1JUX0c6CisJCWludGVsX2Rp
Z19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0KKwkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9H
X0lPOworCQlicmVhazsKKwljYXNlIFBPUlRfSDoKKwkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19w
b3dlcl9kb21haW4gPQorCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0hfSU87CisJCWJyZWFrOwor
CWNhc2UgUE9SVF9JOgorCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9CisJ
CQlQT1dFUl9ET01BSU5fUE9SVF9ERElfSV9JTzsKKwkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJTUlT
U0lOR19DQVNFKHBvcnQpOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmgKaW5kZXggZTc4MWRmNDYzZmZhLi4yNzBiMWYxOGRlZGQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC0xODksNiArMTg5LDgg
QEAgZW51bSB0Y19wb3J0IHsKIAlQT1JUX1RDMiwKIAlQT1JUX1RDMywKIAlQT1JUX1RDNCwKKwlQ
T1JUX1RDNSwKKwlQT1JUX1RDNiwKIAogCUk5MTVfTUFYX1RDX1BPUlRTCiB9OwpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaCBiL2luY2x1ZGUvZHJtL2k5MTVfY29tcG9u
ZW50LmgKaW5kZXggZGNiOTViZDlkZWU2Li41NWMzYjEyMzU4MWIgMTAwNjQ0Ci0tLSBhL2luY2x1
ZGUvZHJtL2k5MTVfY29tcG9uZW50LmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQu
aApAQCAtMzQsNyArMzQsNyBAQCBlbnVtIGk5MTVfY29tcG9uZW50X3R5cGUgewogLyogTUFYX1BP
UlQgaXMgdGhlIG51bWJlciBvZiBwb3J0CiAgKiBJdCBtdXN0IGJlIHN5bmMgd2l0aCBJOTE1X01B
WF9QT1JUUyBkZWZpbmVkIGk5MTVfZHJ2LmgKICAqLwotI2RlZmluZSBNQVhfUE9SVFMgNgorI2Rl
ZmluZSBNQVhfUE9SVFMgOQogCiAvKioKICAqIHN0cnVjdCBpOTE1X2F1ZGlvX2NvbXBvbmVudCAt
IFVzZWQgZm9yIGRpcmVjdCBjb21tdW5pY2F0aW9uIGJldHdlZW4gaTkxNSBhbmQgaGRhIGRyaXZl
cnMKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL2RybS9pOTE1
X2RybS5oCmluZGV4IDc1MjNlOWE3YjZlMi4uZWIzMDA2MjM1OWQxIDEwMDY0NAotLS0gYS9pbmNs
dWRlL2RybS9pOTE1X2RybS5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfZHJtLmgKQEAgLTEwOSw2
ICsxMDksOSBAQCBlbnVtIHBvcnQgewogCVBPUlRfRCwKIAlQT1JUX0UsCiAJUE9SVF9GLAorCVBP
UlRfRywKKwlQT1JUX0gsCisJUE9SVF9JLAogCiAJSTkxNV9NQVhfUE9SVFMKIH07Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
