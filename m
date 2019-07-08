Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45AE62C7C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A4589FD4;
	Mon,  8 Jul 2019 23:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E7389FBC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859603"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:09 -0700
Message-Id: <20190708231629.9296-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/25] drm/i915/tgl: Add TGL PCI IDs
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
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jIHwgIDEgKwogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCAgICAgICB8IDEwICsrKysr
KysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jCmluZGV4IGRhOTI2NDg1ODQ1ZC4uZTgzYzk0Y2YyNzQ0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMKQEAgLTg2NSw2ICs4NjUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZp
Y2VfaWQgcGNpaWRsaXN0W10gPSB7CiAJSU5URUxfQ05MX0lEUygmaW50ZWxfY2Fubm9ubGFrZV9p
bmZvKSwKIAlJTlRFTF9JQ0xfMTFfSURTKCZpbnRlbF9pY2VsYWtlXzExX2luZm8pLAogCUlOVEVM
X0VITF9JRFMoJmludGVsX2Vsa2hhcnRsYWtlX2luZm8pLAorCUlOVEVMX1RHTF8xMl9JRFMoJmlu
dGVsX3RpZ2VybGFrZV8xMl9pbmZvKSwKIAl7MCwgMCwgMH0KIH07CiBNT0RVTEVfREVWSUNFX1RB
QkxFKHBjaSwgcGNpaWRsaXN0KTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRz
LmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCmluZGV4IDZjMzQyYWM0NzBjOC4uYTcwYzk4
MmRkZmY5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1
ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTU4Myw0ICs1ODMsMTQgQEAKIAlJTlRFTF9WR0FfREVW
SUNFKDB4NDU1MSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4NDU0MSwgaW5mbykKIAor
LyogVEdMICovCisjZGVmaW5lIElOVEVMX1RHTF8xMl9JRFMoaW5mbykgXAorCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg5QTQ5LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QTQwLCBpbmZvKSwg
XAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QTU5LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QTYwLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QTY4LCBpbmZvKSwgXAorCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg5QTcwLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QTc4
LCBpbmZvKQorCiAjZW5kaWYgLyogX0k5MTVfUENJSURTX0ggKi8KLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
