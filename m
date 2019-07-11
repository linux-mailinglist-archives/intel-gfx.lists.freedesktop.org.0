Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C7E64FA7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDDC89CB2;
	Thu, 11 Jul 2019 00:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047FC89C13
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232351"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:17 -0700
Message-Id: <20190711003833.17420-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 05/21] drm/i915/tgl: Add TGL PCI IDs
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
YUBpbnRlbC5jb20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRj
aC9tc2dpZC8yMDE5MDcwODIzMTYyOS45Mjk2LTYtbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCi0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8ICAxICsKIGluY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmggICAgICAgfCAxMCArKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCBkYTkyNjQ4NTg0NWQuLmU4
M2M5NGNmMjc0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC04NjUsNiArODY1LDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIHBjaWlkbGlzdFtdID0gewogCUlOVEVM
X0NOTF9JRFMoJmludGVsX2Nhbm5vbmxha2VfaW5mbyksCiAJSU5URUxfSUNMXzExX0lEUygmaW50
ZWxfaWNlbGFrZV8xMV9pbmZvKSwKIAlJTlRFTF9FSExfSURTKCZpbnRlbF9lbGtoYXJ0bGFrZV9p
bmZvKSwKKwlJTlRFTF9UR0xfMTJfSURTKCZpbnRlbF90aWdlcmxha2VfMTJfaW5mbyksCiAJezAs
IDAsIDB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShwY2ksIHBjaWlkbGlzdCk7CmRpZmYgLS1n
aXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aAppbmRleCA2YzM0MmFjNDcwYzguLmE3MGM5ODJkZGZmOSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9k
cm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC01ODMs
NCArNTgzLDE0IEBACiAJSU5URUxfVkdBX0RFVklDRSgweDQ1NTEsIGluZm8pLCBcCiAJSU5URUxf
VkdBX0RFVklDRSgweDQ1NDEsIGluZm8pCiAKKy8qIFRHTCAqLworI2RlZmluZSBJTlRFTF9UR0xf
MTJfSURTKGluZm8pIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE0OSwgaW5mbyksIFwKKwlJTlRF
TF9WR0FfREVWSUNFKDB4OUE0MCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE1OSwg
aW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE2MCwgaW5mbyksIFwKKwlJTlRFTF9WR0Ff
REVWSUNFKDB4OUE2OCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE3MCwgaW5mbyks
IFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUE3OCwgaW5mbykKKwogI2VuZGlmIC8qIF9JOTE1X1BD
SUlEU19IICovCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
