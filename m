Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B551865F2D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D182E6E288;
	Thu, 11 Jul 2019 17:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703B16E286
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894702"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:11 -0700
Message-Id: <20190711173115.28296-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 17/21] drm/i915/tgl: Add gmbus gpio pin to
 port mapping
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkFkZCBkZWZhdWx0
IEdQSU8gcGluIG1hcHBpbmcgZm9yIGFsbCBwb3J0cy4gVGlnZXIgTGFrZSBoYXMgMyBjb21ib3Bo
eQpwb3J0cyBhbmQgNiBUQyBwb3J0cywgZ3BpbyBwaW4xLTMgYXJlIG1hcHBlZCB0byBjb21ib3Bo
eSAmIHBpbjktMTQgYXJlCm1hcHBlZCB0byBUQyBwb3J0cy4KCkNjOiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1haGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmggfCAgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5j
ICAgfCAyMCArKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgfCAgNCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaAppbmRleCA5MjkzMWRjMjY0NzAuLjY3NzQzZWVhNGE1MCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTQ1LDYgKzQ1LDgg
QEAgZW51bSBpOTE1X2dwaW8gewogCUdQSU9LLAogCUdQSU9MLAogCUdQSU9NLAorCUdQSU9OLAor
CUdQSU9PLAogfTsKIAogLyoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZ21idXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21i
dXMuYwppbmRleCA0ZjZhOWJkNWFmNDcuLmI0MmM3OWFlYTYxYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYwpAQCAtOTQsMTEgKzk0LDI1IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZ21idXNfcGluIGdtYnVzX3BpbnNfbWNjW10gPSB7CiAJW0dNQlVTX1BJTl85
X1RDMV9JQ1BdID0geyAiZHBjIiwgR1BJT0ogfSwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
Z21idXNfcGluIGdtYnVzX3BpbnNfdGdwW10gPSB7CisJW0dNQlVTX1BJTl8xX0JYVF0gPSB7ICJk
cGEiLCBHUElPQiB9LAorCVtHTUJVU19QSU5fMl9CWFRdID0geyAiZHBiIiwgR1BJT0MgfSwKKwlb
R01CVVNfUElOXzNfQlhUXSA9IHsgImRwYyIsIEdQSU9EIH0sCisJW0dNQlVTX1BJTl85X1RDMV9J
Q1BdID0geyAidGMxIiwgR1BJT0ogfSwKKwlbR01CVVNfUElOXzEwX1RDMl9JQ1BdID0geyAidGMy
IiwgR1BJT0sgfSwKKwlbR01CVVNfUElOXzExX1RDM19JQ1BdID0geyAidGMzIiwgR1BJT0wgfSwK
KwlbR01CVVNfUElOXzEyX1RDNF9JQ1BdID0geyAidGM0IiwgR1BJT00gfSwKKwlbR01CVVNfUElO
XzEzX1RDNV9UR1BdID0geyAidGM1IiwgR1BJT04gfSwKKwlbR01CVVNfUElOXzE0X1RDNl9UR1Bd
ID0geyAidGM2IiwgR1BJT08gfSwKK307CisKIC8qIHBpbiBpcyBleHBlY3RlZCB0byBiZSB2YWxp
ZCAqLwogc3RhdGljIGNvbnN0IHN0cnVjdCBnbWJ1c19waW4gKmdldF9nbWJ1c19waW4oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCQkgICAgIHVuc2lnbmVkIGludCBwaW4p
CiB7Ci0JaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkKKwlpZiAoSEFTX1BDSF9UR1AoZGV2X3By
aXYpKQorCQlyZXR1cm4gJmdtYnVzX3BpbnNfdGdwW3Bpbl07CisJZWxzZSBpZiAoSEFTX1BDSF9N
Q0MoZGV2X3ByaXYpKQogCQlyZXR1cm4gJmdtYnVzX3BpbnNfbWNjW3Bpbl07CiAJZWxzZSBpZiAo
SEFTX1BDSF9JQ1AoZGV2X3ByaXYpKQogCQlyZXR1cm4gJmdtYnVzX3BpbnNfaWNwW3Bpbl07CkBA
IC0xMTksNyArMTMzLDkgQEAgYm9vbCBpbnRlbF9nbWJ1c19pc192YWxpZF9waW4oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogewogCXVuc2lnbmVkIGludCBzaXplOwogCi0JaWYg
KEhBU19QQ0hfTUNDKGRldl9wcml2KSkKKwlpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpKQorCQlz
aXplID0gQVJSQVlfU0laRShnbWJ1c19waW5zX3RncCk7CisJZWxzZSBpZiAoSEFTX1BDSF9NQ0Mo
ZGV2X3ByaXYpKQogCQlzaXplID0gQVJSQVlfU0laRShnbWJ1c19waW5zX21jYyk7CiAJZWxzZSBp
ZiAoSEFTX1BDSF9JQ1AoZGV2X3ByaXYpKQogCQlzaXplID0gQVJSQVlfU0laRShnbWJ1c19waW5z
X2ljcCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBhZDk2YzViNDk3NWMuLjYyYWM4YTEx
OTYwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0zMjU0LDggKzMyNTQsMTAgQEAgZW51
bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogI2RlZmluZSAgIEdNQlVTX1BJTl8xMF9UQzJfSUNQCTEw
CiAjZGVmaW5lICAgR01CVVNfUElOXzExX1RDM19JQ1AJMTEKICNkZWZpbmUgICBHTUJVU19QSU5f
MTJfVEM0X0lDUAkxMgorI2RlZmluZSAgIEdNQlVTX1BJTl8xM19UQzVfVEdQCTEzCisjZGVmaW5l
ICAgR01CVVNfUElOXzE0X1RDNl9UR1AJMTQKIAotI2RlZmluZSAgIEdNQlVTX05VTV9QSU5TCTEz
IC8qIGluY2x1ZGluZyAwICovCisjZGVmaW5lICAgR01CVVNfTlVNX1BJTlMJMTUgLyogaW5jbHVk
aW5nIDAgKi8KICNkZWZpbmUgR01CVVMxCQkJX01NSU8oZGV2X3ByaXYtPmdwaW9fbW1pb19iYXNl
ICsgMHg1MTA0KSAvKiBjb21tYW5kL3N0YXR1cyAqLwogI2RlZmluZSAgIEdNQlVTX1NXX0NMUl9J
TlQJKDEgPDwgMzEpCiAjZGVmaW5lICAgR01CVVNfU1dfUkRZCQkoMSA8PCAzMCkKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
