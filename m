Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3259DDBA69
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 02:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC606EAEB;
	Fri, 18 Oct 2019 00:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9201B6E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 00:05:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 17:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,309,1566889200"; d="scan'208";a="397767036"
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2019 17:05:34 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 16:58:49 -0700
Message-Id: <20191017235849.21349-2-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20191017235849.21349-1-robert.m.fosha@intel.com>
References: <20191017235849.21349-1-robert.m.fosha@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH 2/2] drm/i915/guc: Update H2G enable
 logging action definition
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

R3VDIGVuYWJsZSBsb2dnaW5nIEgyRyBhY3Rpb24gZGVmaW5pdGlvbiBjaGFuZ2VkIHNvbWUgdGlt
ZSBhZ28gZnJvbSAweEUwMDAKdG8gMHg0MC4gQWxsIGN1cnJlbnQgR3VDIEZXIGJsb2JzIHVzZSB0
aGlzIGRlZmluaXRpb24sIHNvIGZpeCB0aGUgYWN0aW9uCmRlZmluaXRpb24gaW4gZHJpdmVyIHRv
IG1hdGNoLgoKQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19md2lmLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfZndpZi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaApp
bmRleCAxZDNjZGQ2N2NhMmYuLmEyNmE4NWQ1MDIwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCkBAIC01NDgsNiArNTQ4LDcgQEAgZW51bSBpbnRlbF9n
dWNfYWN0aW9uIHsKIAlJTlRFTF9HVUNfQUNUSU9OX0FMTE9DQVRFX0RPT1JCRUxMID0gMHgxMCwK
IAlJTlRFTF9HVUNfQUNUSU9OX0RFQUxMT0NBVEVfRE9PUkJFTEwgPSAweDIwLAogCUlOVEVMX0dV
Q19BQ1RJT05fTE9HX0JVRkZFUl9GSUxFX0ZMVVNIX0NPTVBMRVRFID0gMHgzMCwKKwlJTlRFTF9H
VUNfQUNUSU9OX1VLX0xPR19FTkFCTEVfTE9HR0lORyA9IDB4NDAsCiAJSU5URUxfR1VDX0FDVElP
Tl9GT1JDRV9MT0dfQlVGRkVSX0ZMVVNIID0gMHgzMDIsCiAJSU5URUxfR1VDX0FDVElPTl9FTlRF
Ul9TX1NUQVRFID0gMHg1MDEsCiAJSU5URUxfR1VDX0FDVElPTl9FWElUX1NfU1RBVEUgPSAweDUw
MiwKQEAgLTU1Niw3ICs1NTcsNiBAQCBlbnVtIGludGVsX2d1Y19hY3Rpb24gewogCUlOVEVMX0dV
Q19BQ1RJT05fQVVUSEVOVElDQVRFX0hVQyA9IDB4NDAwMCwKIAlJTlRFTF9HVUNfQUNUSU9OX1JF
R0lTVEVSX0NPTU1BTkRfVFJBTlNQT1JUX0JVRkZFUiA9IDB4NDUwNSwKIAlJTlRFTF9HVUNfQUNU
SU9OX0RFUkVHSVNURVJfQ09NTUFORF9UUkFOU1BPUlRfQlVGRkVSID0gMHg0NTA2LAotCUlOVEVM
X0dVQ19BQ1RJT05fVUtfTE9HX0VOQUJMRV9MT0dHSU5HID0gMHgwRTAwMCwKIAlJTlRFTF9HVUNf
QUNUSU9OX0xJTUlUCiB9OwogCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
