Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3652CE4AFF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81ECC6E9EA;
	Fri, 25 Oct 2019 12:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAFF6E9EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:26:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="197415647"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2019 05:26:01 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 04:24:50 +0800
Message-Id: <20191025202450.5086-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025154933.22607-1-shawn.c.lee@intel.com>
References: <20191025154933.22607-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2 1/2] commit 'a7b4deeb02b9 ("drm/i915/cml: Add
 CML PCI IDS)' introduced new PCI ID that CML support. But some sku is not
 support yet so remove them.
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

djI6IHJlbW92ZSBzb21lIGluYWNjdXJhdGUgZGVzY3JpcHRpb25zLgoKQ2M6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
Q2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KQ2M6IENvb3Bl
ciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTGVlIFNoYXdu
IEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5o
IHwgNCAtLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAppbmRl
eCBhNzBjOTgyZGRmZjkuLjU2ZTgyM2NkYzcxNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkx
NV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC00NDgsOSArNDQ4
LDcgQEAKICNkZWZpbmUgSU5URUxfQ01MX0dUMV9JRFMoaW5mbykJXAogCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg5QjIxLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFBLCBpbmZvKSwgXAot
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFCLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QkFDLCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkEwLCBpbmZvKSwgXAogCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg5QkE1LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkE4LCBp
bmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkE0LCBpbmZvKSwgXApAQCAtNDYwLDkgKzQ1
OCw3IEBACiAjZGVmaW5lIElOVEVMX0NNTF9HVDJfSURTKGluZm8pCVwKIAlJTlRFTF9WR0FfREVW
SUNFKDB4OUI0MSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDQSwgaW5mbyksIFwK
LQlJTlRFTF9WR0FfREVWSUNFKDB4OUJDQiwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4
OUJDQywgaW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJDMCwgaW5mbyksIFwKIAlJTlRF
TF9WR0FfREVWSUNFKDB4OUJDNSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDOCwg
aW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDNCwgaW5mbyksIFwKLS0gCjIuMTcuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
