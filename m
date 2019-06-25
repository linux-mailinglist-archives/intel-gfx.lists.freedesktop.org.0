Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBCA55673
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD696E200;
	Tue, 25 Jun 2019 17:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6136E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469242"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:16 -0700
Message-Id: <20190625175437.14840-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/28] drm/i915/tgl: Add TGL PCI IDs
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

Q3VycmVudCBsaXN0IG9mIFBDSSBJRHMgZm9yIFRpZ2VyIExha2UuCgpDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jIHwgIDEgKwogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCAgICAgICB8IDEwICsrKysr
KysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jCmluZGV4IDI5ZDJkNjA3MGY4MS4uYjc1OGRjY2Y0ODAzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMKQEAgLTg2Niw2ICs4NjYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZp
Y2VfaWQgcGNpaWRsaXN0W10gPSB7CiAJSU5URUxfQ05MX0lEUygmaW50ZWxfY2Fubm9ubGFrZV9p
bmZvKSwKIAlJTlRFTF9JQ0xfMTFfSURTKCZpbnRlbF9pY2VsYWtlXzExX2luZm8pLAogCUlOVEVM
X0VITF9JRFMoJmludGVsX2Vsa2hhcnRsYWtlX2luZm8pLAorCUlOVEVMX1RHTF8xMl9JRFMoJmlu
dGVsX3RpZ2VybGFrZV8xMl9pbmZvKSwKIAl7MCwgMCwgMH0KIH07CiBNT0RVTEVfREVWSUNFX1RB
QkxFKHBjaSwgcGNpaWRsaXN0KTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRz
LmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCmluZGV4IDZkNjBlYTY4YzE3MS4uY2U0YzRi
NWQ1YmE4IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1
ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTU4Miw0ICs1ODIsMTQgQEAKIAlJTlRFTF9WR0FfREVW
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
