Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EAB65F23
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25C76E296;
	Thu, 11 Jul 2019 17:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFA26E27A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894685"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:05 -0700
Message-Id: <20190711173115.28296-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/21] drm/i915/tgl: Add pll manager
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
ZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE5ICsrKysrKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IGZj
NmYzYzUyNjI5YS4uOGQ2YWMwYjFjNGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5jCkBAIC0zNDY2LDYgKzM0NjYsMjEgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9kcGxsX21nciBlaGxfcGxsX21nciA9IHsKIAkuZHVtcF9od19zdGF0ZSA9
IGljbF9kdW1wX2h3X3N0YXRlLAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBkcGxsX2luZm8g
dGdsX3BsbHNbXSA9IHsKKwl7ICJEUExMIDAiLCAmY29tYm9fcGxsX2Z1bmNzLCBEUExMX0lEX0lD
TF9EUExMMCwgIDAgfSwKKwl7ICJEUExMIDEiLCAmY29tYm9fcGxsX2Z1bmNzLCBEUExMX0lEX0lD
TF9EUExMMSwgIDAgfSwKKwl7ICJUQlQgUExMIiwgICZ0YnRfcGxsX2Z1bmNzLCBEUExMX0lEX0lD
TF9UQlRQTEwsIDAgfSwKKwkvKiBUT0RPOiBBZGQgdHlwZUMgcGxscyAqLworCXsgfSwKK307CisK
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9tZ3IgdGdsX3BsbF9tZ3IgPSB7CisJLmRw
bGxfaW5mbyA9IHRnbF9wbGxzLAorCS5nZXRfZHBsbHMgPSBpY2xfZ2V0X2RwbGxzLAorCS5wdXRf
ZHBsbHMgPSBpY2xfcHV0X2RwbGxzLAorCS5kdW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3Rh
dGUsCit9OworCiAvKioKICAqIGludGVsX3NoYXJlZF9kcGxsX2luaXQgLSBJbml0aWFsaXplIHNo
YXJlZCBEUExMcwogICogQGRldjogZHJtIGRldmljZQpAQCAtMzQ3OSw3ICszNDk0LDkgQEAgdm9p
ZCBpbnRlbF9zaGFyZWRfZHBsbF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJY29uc3Qg
c3RydWN0IGRwbGxfaW5mbyAqZHBsbF9pbmZvOwogCWludCBpOwogCi0JaWYgKElTX0VMS0hBUlRM
QUtFKGRldl9wcml2KSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJZHBsbF9t
Z3IgPSAmdGdsX3BsbF9tZ3I7CisJZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQog
CQlkcGxsX21nciA9ICZlaGxfcGxsX21ncjsKIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQogCQlkcGxsX21nciA9ICZpY2xfcGxsX21ncjsKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
