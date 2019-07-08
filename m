Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089AC62C93
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26DD6E05A;
	Mon,  8 Jul 2019 23:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA3989FF7
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859627"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:16 -0700
Message-Id: <20190708231629.9296-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/25] drm/i915/tgl: Add pll manager
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

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpBZGQg
YSBuZXcgcGxsIGFycmF5IGZvciBUaWdlciBMYWtlLiBUaGUgVEMgcGxsIGZ1bmN0aW9ucyBmb3Ig
dHlwZSBDIHdpbGwKYmUgY292ZXJlZCBpbiBsYXRlciBwYXRjaGVzIGFmdGVyIGl0cyBwaHkgaXMg
aW1wbGVtZW50ZWQuCgpDYzogTWFkaGF2IENoYXVoYW4gPG1hZGhhdi5jaGF1aGFuQGludGVsLmNv
bT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE5ICsrKysrKysr
KysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmlu
ZGV4IDY3Y2ZlODM2Mjg2ZS4uYWUxYzU1MmQ3YWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCkBAIC0zNDU1LDYgKzM0NTUsMjEgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21nciBlaGxfcGxsX21nciA9IHsKIAkuZHVtcF9od19z
dGF0ZSA9IGljbF9kdW1wX2h3X3N0YXRlLAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBkcGxs
X2luZm8gdGdsX3BsbHNbXSA9IHsKKwl7ICJEUExMIDAiLCAmY29tYm9fcGxsX2Z1bmNzLCBEUExM
X0lEX0lDTF9EUExMMCwgIDAgfSwKKwl7ICJEUExMIDEiLCAmY29tYm9fcGxsX2Z1bmNzLCBEUExM
X0lEX0lDTF9EUExMMSwgIDAgfSwKKwl7ICJUQlQgUExMIiwgICZ0YnRfcGxsX2Z1bmNzLCBEUExM
X0lEX0lDTF9UQlRQTEwsIDAgfSwKKwkvKiBUT0RPOiBBZGQgdHlwZUMgcGxscyAqLworCXsgfSwK
K307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9tZ3IgdGdsX3BsbF9tZ3IgPSB7
CisJLmRwbGxfaW5mbyA9IHRnbF9wbGxzLAorCS5nZXRfZHBsbHMgPSBpY2xfZ2V0X2RwbGxzLAor
CS5wdXRfZHBsbHMgPSBpY2xfcHV0X2RwbGxzLAorCS5kdW1wX2h3X3N0YXRlID0gaWNsX2R1bXBf
aHdfc3RhdGUsCit9OworCiAvKioKICAqIGludGVsX3NoYXJlZF9kcGxsX2luaXQgLSBJbml0aWFs
aXplIHNoYXJlZCBEUExMcwogICogQGRldjogZHJtIGRldmljZQpAQCAtMzQ2OCw3ICszNDgzLDkg
QEAgdm9pZCBpbnRlbF9zaGFyZWRfZHBsbF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJ
Y29uc3Qgc3RydWN0IGRwbGxfaW5mbyAqZHBsbF9pbmZvOwogCWludCBpOwogCi0JaWYgKElTX0VM
S0hBUlRMQUtFKGRldl9wcml2KSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJ
ZHBsbF9tZ3IgPSAmdGdsX3BsbF9tZ3I7CisJZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3By
aXYpKQogCQlkcGxsX21nciA9ICZlaGxfcGxsX21ncjsKIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQogCQlkcGxsX21nciA9ICZpY2xfcGxsX21ncjsKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
