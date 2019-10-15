Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98727D7A45
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81E38997A;
	Tue, 15 Oct 2019 15:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B410D896EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="347112425"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga004.jf.intel.com with ESMTP; 15 Oct 2019 08:45:20 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id EE58F84075B; Tue, 15 Oct 2019 18:44:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:39 +0300
Message-Id: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 01/11] drm/i915/tgl: Add IS_TGL_REVID
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIGdvaW5nIHRvIG5lZWQgdGhpcyBtYWNybyBvbiBsaW1pdGluZwp0aGUgd29ya2Fyb3Vu
ZCBzY29wZS4KClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCA1ICsr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKaW5kZXggYzQ2YjMzOTA2NGMwLi5mNmFlZTFlMDFhN2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaApAQCAtMTY4Niw2ICsxNjg2LDExIEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBJU19JQ0xfUkVWSUQocCwgc2luY2UsIHVu
dGlsKSBcCiAJKElTX0lDRUxBS0UocCkgJiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkKIAor
I2RlZmluZSBUR0xfUkVWSURfQTAJCTB4MAorCisjZGVmaW5lIElTX1RHTF9SRVZJRChwLCBzaW5j
ZSwgdW50aWwpIFwKKwkoSVNfVElHRVJMQUtFKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRp
bCkpCisKICNkZWZpbmUgSVNfTFAoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aXNf
bHApCiAjZGVmaW5lIElTX0dFTjlfTFAoZGV2X3ByaXYpCShJU19HRU4oZGV2X3ByaXYsIDkpICYm
IElTX0xQKGRldl9wcml2KSkKICNkZWZpbmUgSVNfR0VOOV9CQyhkZXZfcHJpdikJKElTX0dFTihk
ZXZfcHJpdiwgOSkgJiYgIUlTX0xQKGRldl9wcml2KSkKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
