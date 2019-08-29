Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3D4A14DA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DEA96E05C;
	Thu, 29 Aug 2019 09:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755EF6E045
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:26:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="175211202"
Received: from tbthomps-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.111.220])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2019 02:26:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 02:25:52 -0700
Message-Id: <20190829092554.32198-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829092554.32198-1-lucas.demarchi@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/7] drm/i915/tgl: disable SAGV temporarily
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

U0FHViBpcyBub3QgY3VycmVudGx5IHdvcmtpbmcgZm9yIFRpZ2VyIExha2UuIFdlIGJldHRlciBk
aXNhYmxlIGl0IHVudGlsCnRoZSBpbXBsZW1lbnRhdGlvbiBpcyBzdGFiaWxpemVkIGFuZCB3ZSBj
YW4gZW5hYmxlIGl0LgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDQg
KysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jCmluZGV4IDRmYTliYzgzYzhiNC4uNzI5NGZjZjA1MzIzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKQEAgLTM2NTQsNiArMzY1NCwxMCBAQCBzdGF0aWMgYm9vbCBza2xfbmVlZHNfbWVtb3J5
X2J3X3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHN0YXRpYyBib29sCiBp
bnRlbF9oYXNfc2FndihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJLyog
SEFDSyEgKi8KKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMikpCisJCXJldHVybiBmYWxzZTsKKwog
CXJldHVybiAoSVNfR0VOOV9CQyhkZXZfcHJpdikgfHwgSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MCkgJiYKIAkJZGV2X3ByaXYtPnNhZ3Zfc3RhdHVzICE9IEk5MTVfU0FHVl9OT1RfQ09OVFJPTExF
RDsKIH0KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
