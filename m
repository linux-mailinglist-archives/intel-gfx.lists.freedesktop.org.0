Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FDB55665
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27736E1D5;
	Tue, 25 Jun 2019 17:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2ED46E1BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469247"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:17 -0700
Message-Id: <20190625175437.14840-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/28] x86/gpu: add TGL stolen memory support
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClJldXNlIEdl
bjExIHN0b2xlbiBtZW1vcnkgY2hhbmdlcyBzaW5jZSBUaWdlciBMYWtlIHVzZXMgdGhlIHNhbWUg
QlNNCnJlZ2lzdGVyIChhbmQgZm9ybWF0KS4KCkNjOiBJbmdvIE1vbG5hciA8bWluZ29Aa2VybmVs
Lm9yZz4KQ2M6IEguIFBldGVyIEFudmluIDxocGFAenl0b3IuY29tPgpDYzogeDg2QGtlcm5lbC5v
cmcKQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogYXJjaC94
ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgYi9hcmNo
L3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKaW5kZXggNmM0ZjAxNTQwODMzLi42ZjZiMWQwNGRh
ZGYgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYworKysgYi9hcmNo
L3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKQEAgLTU0OSw2ICs1NDksNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaW50ZWxfZWFybHlfaWRzW10gX19pbml0Y29uc3QgPSB7
CiAJSU5URUxfQ05MX0lEUygmZ2VuOV9lYXJseV9vcHMpLAogCUlOVEVMX0lDTF8xMV9JRFMoJmdl
bjExX2Vhcmx5X29wcyksCiAJSU5URUxfRUhMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKKwlJTlRF
TF9UR0xfMTJfSURTKCZnZW4xMV9lYXJseV9vcHMpLAogfTsKIAogc3RydWN0IHJlc291cmNlIGlu
dGVsX2dyYXBoaWNzX3N0b2xlbl9yZXMgX19yb19hZnRlcl9pbml0ID0gREVGSU5FX1JFU19NRU0o
MCwgMCk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
