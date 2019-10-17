Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FB9DB7C0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 21:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9976E0A2;
	Thu, 17 Oct 2019 19:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38506E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 19:41:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 12:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="195260245"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by fmsmga008.fm.intel.com with SMTP; 17 Oct 2019 12:41:04 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Thu, 17 Oct 2019 12:42:06 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 12:42:03 -0700
Message-Id: <20191017194203.9645-1-james.ausmus@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/aml: Allow SPT PCH for all AML devices
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

RXZlbiB0aGUgQU1MIGRldmljZXMgdGhhdCBiZWhhdmUgbGlrZSBDRkxzIGNhbiBiZSBwYWlyZWQg
d2l0aCBhbiBTUFQKUENILiBBbGxvdyB0aGlzIHRvIGhhcHBlbiB3aXRob3V0IGJsb3dpbmcgdXAg
ZG1lc2cuCgpCU3BlYzogMzM2NjUKCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwMTMKQ2M6IFF1YW54aWFuIFdhbmcgPHF1YW54aWFuLndh
bmdAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMK
aW5kZXggMTAzNWQzZDQ2ZmQ4Li5iYjFjYjZmMTJhNTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bj
aC5jCkBAIC01Miw3ICs1Miw4IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpCiAJCXJldHVybiBQQ0hfU1BU
OwogCWNhc2UgSU5URUxfUENIX1NQVF9MUF9ERVZJQ0VfSURfVFlQRToKIAkJRFJNX0RFQlVHX0tN
UygiRm91bmQgU3VucmlzZVBvaW50IExQIFBDSFxuIik7Ci0JCVdBUk5fT04oIUlTX1NLWUxBS0Uo
ZGV2X3ByaXYpICYmICFJU19LQUJZTEFLRShkZXZfcHJpdikpOworCQlXQVJOX09OKCFJU19TS1lM
QUtFKGRldl9wcml2KSAmJiAhSVNfS0FCWUxBS0UoZGV2X3ByaXYpICYmCisJCQkhSVNfQ09GRkVF
TEFLRShkZXZfcHJpdikpOwogCQlyZXR1cm4gUENIX1NQVDsKIAljYXNlIElOVEVMX1BDSF9LQlBf
REVWSUNFX0lEX1RZUEU6CiAJCURSTV9ERUJVR19LTVMoIkZvdW5kIEthYnkgTGFrZSBQQ0ggKEtC
UClcbiIpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
