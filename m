Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D68280045
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 20:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1766EF41;
	Fri,  2 Aug 2019 18:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F766EF41
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 18:39:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 11:39:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="184656895"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.111])
 by orsmga002.jf.intel.com with ESMTP; 02 Aug 2019 11:39:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 11:38:56 -0700
Message-Id: <20190802183856.27280-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on TGL
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWRkIFN1
cHBvcnQgdG8gbG9hZCBETUMgdjIuMDMgb24gVEdMLgoKdjI6IFVzZSB2ZXJzaW9uIDIuMDMgdGhh
dCBpcyBhbHJlYWR5IGF2YWlsYWJsZSBzaW5jZSB0aGF0IHdvcmtzIHdpdGgKICAgIFBTUjIKClNp
Z25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMgfCA3ICsrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCmluZGV4IDZl
Zjc0NTMxNTg4YS4uODI3OWU3MmVkZjRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwpAQCAt
MzksNiArMzksMTEgQEAKIAogI2RlZmluZSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkUJCUlDTF9DU1Jf
TUFYX0ZXX1NJWkUKIAorI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3ZlcjJf
MDMuYmluIgorI2RlZmluZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwg
MykKKyNkZWZpbmUgVEdMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwCitNT0RVTEVfRklSTVdBUkUo
VEdMX0NTUl9QQVRIKTsKKwogI2RlZmluZSBJQ0xfQ1NSX1BBVEgJCQkiaTkxNS9pY2xfZG1jX3Zl
cjFfMDcuYmluIgogI2RlZmluZSBJQ0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04o
MSwgNykKICNkZWZpbmUgSUNMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwCkBAIC02NzQsNiArNjc5
LDggQEAgdm9pZCBpbnRlbF9jc3JfdWNvZGVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJaW50ZWxfY3NyX3J1bnRpbWVfcG1fZ2V0KGRldl9wcml2KTsKIAogCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCWNzci0+ZndfcGF0aCA9IFRHTF9DU1JfUEFU
SDsKKwkJY3NyLT5yZXF1aXJlZF92ZXJzaW9uID0gVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVEOwog
CQkvKiBBbGxvdyB0byBsb2FkIGZ3IHZpYSBwYXJhbWV0ZXIgdXNpbmcgdGhlIGxhc3Qga25vd24g
c2l6ZSAqLwogCQljc3ItPm1heF9md19zaXplID0gR0VOMTJfQ1NSX01BWF9GV19TSVpFOwogCX0g
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
