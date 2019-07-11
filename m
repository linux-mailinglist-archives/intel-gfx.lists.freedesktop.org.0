Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CF065F19
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5D86E27C;
	Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8FE6E26D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894666"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:30:59 -0700
Message-Id: <20190711173115.28296-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/21] drm/i915/tgl: Add TGL PCI IDs
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

Q3VycmVudCBsaXN0IG9mIFBDSSBJRHMgZm9yIFRpZ2VyIExha2UuCgpDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8ICAxICsK
IGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggICAgICAgfCAxMCArKysrKysrKysrCiAyIGZpbGVz
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBk
YTkyNjQ4NTg0NWQuLmU4M2M5NGNmMjc0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC04
NjUsNiArODY1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIHBjaWlkbGlz
dFtdID0gewogCUlOVEVMX0NOTF9JRFMoJmludGVsX2Nhbm5vbmxha2VfaW5mbyksCiAJSU5URUxf
SUNMXzExX0lEUygmaW50ZWxfaWNlbGFrZV8xMV9pbmZvKSwKIAlJTlRFTF9FSExfSURTKCZpbnRl
bF9lbGtoYXJ0bGFrZV9pbmZvKSwKKwlJTlRFTF9UR0xfMTJfSURTKCZpbnRlbF90aWdlcmxha2Vf
MTJfaW5mbyksCiAJezAsIDAsIDB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShwY2ksIHBjaWlk
bGlzdCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9k
cm0vaTkxNV9wY2lpZHMuaAppbmRleCA2YzM0MmFjNDcwYzguLmE3MGM5ODJkZGZmOSAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oCkBAIC01ODMsNCArNTgzLDE0IEBACiAJSU5URUxfVkdBX0RFVklDRSgweDQ1NTEsIGlu
Zm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDQ1NDEsIGluZm8pCiAKKy8qIFRHTCAqLworI2Rl
ZmluZSBJTlRFTF9UR0xfMTJfSURTKGluZm8pIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE0OSwg
aW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE0MCwgaW5mbyksIFwKKwlJTlRFTF9WR0Ff
REVWSUNFKDB4OUE1OSwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE2MCwgaW5mbyks
IFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE2OCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNF
KDB4OUE3MCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE3OCwgaW5mbykKKwogI2Vu
ZGlmIC8qIF9JOTE1X1BDSUlEU19IICovCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
