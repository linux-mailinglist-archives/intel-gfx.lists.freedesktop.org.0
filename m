Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB6764FA6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C0F89CBC;
	Thu, 11 Jul 2019 00:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8325889C2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232372"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:23 -0700
Message-Id: <20190711003833.17420-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/21] drm/i915/tgl: Add pll manager
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
ZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpMaW5rOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3MDgyMzE2MjkuOTI5
Ni0xMy1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAxOSArKysrKysrKysrKysrKysrKystCiAxIGZpbGUg
Y2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCAzMGQ3NTAwZWI2NmMuLjNm
NjhiZTcxNmRhOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYwpAQCAtMzQ2NSw2ICszNDY1LDIxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
ZHBsbF9tZ3IgZWhsX3BsbF9tZ3IgPSB7CiAJLmR1bXBfaHdfc3RhdGUgPSBpY2xfZHVtcF9od19z
dGF0ZSwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHBsbF9pbmZvIHRnbF9wbGxzW10gPSB7
CisJeyAiRFBMTCAwIiwgJmNvbWJvX3BsbF9mdW5jcywgRFBMTF9JRF9JQ0xfRFBMTDAsICAwIH0s
CisJeyAiRFBMTCAxIiwgJmNvbWJvX3BsbF9mdW5jcywgRFBMTF9JRF9JQ0xfRFBMTDEsICAwIH0s
CisJeyAiVEJUIFBMTCIsICAmdGJ0X3BsbF9mdW5jcywgRFBMTF9JRF9JQ0xfVEJUUExMLCAwIH0s
CisJLyogVE9ETzogQWRkIHR5cGVDIHBsbHMgKi8KKwl7IH0sCit9OworCitzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2RwbGxfbWdyIHRnbF9wbGxfbWdyID0geworCS5kcGxsX2luZm8gPSB0Z2xf
cGxscywKKwkuZ2V0X2RwbGxzID0gaWNsX2dldF9kcGxscywKKwkucHV0X2RwbGxzID0gaWNsX3B1
dF9kcGxscywKKwkuZHVtcF9od19zdGF0ZSA9IGljbF9kdW1wX2h3X3N0YXRlLAorfTsKKwogLyoq
CiAgKiBpbnRlbF9zaGFyZWRfZHBsbF9pbml0IC0gSW5pdGlhbGl6ZSBzaGFyZWQgRFBMTHMKICAq
IEBkZXY6IGRybSBkZXZpY2UKQEAgLTM0NzgsNyArMzQ5Myw5IEBAIHZvaWQgaW50ZWxfc2hhcmVk
X2RwbGxfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCWNvbnN0IHN0cnVjdCBkcGxsX2lu
Zm8gKmRwbGxfaW5mbzsKIAlpbnQgaTsKIAotCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikp
CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCWRwbGxfbWdyID0gJnRnbF9wbGxf
bWdyOworCWVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkKIAkJZHBsbF9tZ3IgPSAm
ZWhsX3BsbF9tZ3I7CiAJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKIAkJZHBs
bF9tZ3IgPSAmaWNsX3BsbF9tZ3I7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
