Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFFA67613
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 23:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2E76E391;
	Fri, 12 Jul 2019 21:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376A96E391
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 21:03:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 14:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="365724435"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jul 2019 14:03:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 14:02:39 -0700
Message-Id: <20190712210238.5622-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] x86/gpu: add TGL stolen memory support
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
Cc: Michel Thierry <michel.thierry@intel.com>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClJldXNlIEdl
bjExIHN0b2xlbiBtZW1vcnkgY2hhbmdlcyBzaW5jZSBUaWdlciBMYWtlIHVzZXMgdGhlIHNhbWUg
QlNNCnJlZ2lzdGVyIChhbmQgZm9ybWF0KS4KCkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGlu
dXRyb25peC5kZT4KQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPgpDYzogQm9yaXNs
YXYgUGV0a292IDxicEBhbGllbjguZGU+CkNjOiAiSC4gUGV0ZXIgQW52aW4iIDxocGFAenl0b3Iu
Y29tPgpDYzogeDg2QGtlcm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1p
Y2hlbC50aGllcnJ5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+Ci0tLQogYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIHwg
MSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL3g4
Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMK
aW5kZXggNmM0ZjAxNTQwODMzLi42ZjZiMWQwNGRhZGYgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2tl
cm5lbC9lYXJseS1xdWlya3MuYworKysgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMK
QEAgLTU0OSw2ICs1NDksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaW50
ZWxfZWFybHlfaWRzW10gX19pbml0Y29uc3QgPSB7CiAJSU5URUxfQ05MX0lEUygmZ2VuOV9lYXJs
eV9vcHMpLAogCUlOVEVMX0lDTF8xMV9JRFMoJmdlbjExX2Vhcmx5X29wcyksCiAJSU5URUxfRUhM
X0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKKwlJTlRFTF9UR0xfMTJfSURTKCZnZW4xMV9lYXJseV9v
cHMpLAogfTsKIAogc3RydWN0IHJlc291cmNlIGludGVsX2dyYXBoaWNzX3N0b2xlbl9yZXMgX19y
b19hZnRlcl9pbml0ID0gREVGSU5FX1JFU19NRU0oMCwgMCk7Ci0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
