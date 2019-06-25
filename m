Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BF25566E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826B96E1DE;
	Tue, 25 Jun 2019 17:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A2A26E1CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469283"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:23 -0700
Message-Id: <20190625175437.14840-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/28] drm/i915/tgl: Add pll manager
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

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpBZGQg
YSBuZXcgcGxsIGFycmF5IGZvciBUaWdlciBMYWtlLiBUaGUgVEMgcGxsIGZ1bmN0aW9ucyBmb3Ig
dHlwZSBDIHdpbGwKYmUgY292ZXJlZCBpbiBsYXRlciBwYXRjaGVzIGFmdGVyIGl0cyBwaHkgaXMg
aW1wbGVtZW50ZWQuCgpDYzogTWFkaGF2IENoYXVoYW4gPG1hZGhhdi5jaGF1aGFuQGludGVsLmNv
bT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE4ICsrKysrKysr
KysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKaW5k
ZXggMmQ0ZTdiOWE3YjlkLi5mODNhZGQ0ZmU5NGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTMyMzksNiArMzIzOSwyMCBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIGVobF9wbGxfbWdyID0gewogCS5kdW1wX2h3X3N0
YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IGRwbGxf
aW5mbyB0Z2xfcGxsc1tdID0geworCXsgIkRQTEwgMCIsICZjb21ib19wbGxfZnVuY3MsIERQTExf
SURfSUNMX0RQTEwwLCAgMCB9LAorCXsgIkRQTEwgMSIsICZjb21ib19wbGxfZnVuY3MsIERQTExf
SURfSUNMX0RQTEwxLCAgMCB9LAorCXsgIlRCVCBQTEwiLCAgJnRidF9wbGxfZnVuY3MsIERQTExf
SURfSUNMX1RCVFBMTCwgMCB9LAorCS8qIFRPRE86IEFkZCB0eXBlQyBwbGxzICovCisJeyB9LAor
fTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21nciB0Z2xfcGxsX21nciA9IHsK
KwkuZHBsbF9pbmZvID0gdGdsX3BsbHMsCisJLmdldF9kcGxsID0gaWNsX2dldF9kcGxsLAorCS5k
dW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCit9OworCiAvKioKICAqIGludGVsX3No
YXJlZF9kcGxsX2luaXQgLSBJbml0aWFsaXplIHNoYXJlZCBEUExMcwogICogQGRldjogZHJtIGRl
dmljZQpAQCAtMzI1Miw3ICszMjY2LDkgQEAgdm9pZCBpbnRlbF9zaGFyZWRfZHBsbF9pbml0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJY29uc3Qgc3RydWN0IGRwbGxfaW5mbyAqZHBsbF9pbmZv
OwogCWludCBpOwogCi0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkKKwlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMikKKwkJZHBsbF9tZ3IgPSAmdGdsX3BsbF9tZ3I7CisJZWxzZSBp
ZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQogCQlkcGxsX21nciA9ICZlaGxfcGxsX21ncjsK
IAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQogCQlkcGxsX21nciA9ICZpY2xf
cGxsX21ncjsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
