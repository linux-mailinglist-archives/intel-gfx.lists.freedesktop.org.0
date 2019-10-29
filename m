Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E7E7EE8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 04:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E086E03A;
	Tue, 29 Oct 2019 03:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C4586E03A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 03:50:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 20:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,242,1569308400"; d="scan'208";a="374421551"
Received: from atoneylo-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.1.33])
 by orsmga005.jf.intel.com with ESMTP; 28 Oct 2019 20:50:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 20:50:49 -0700
Message-Id: <20191029035049.5907-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191028170457.6982-1-lucas.demarchi@intel.com>
References: <20191028170457.6982-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: add support to one DP-MST
 stream
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

VGhpcyBpcyB0aGUgbWluaW11bSBjaGFuZ2UgdG8gc3VwcG9ydCAxIChhbmQgb25seSAxKSBEUC1N
U1QgbW9uaXRvcgpjb25uZWN0ZWQgb24gVGlnZXIgTGFrZS4gVGhpcyBjaGFuZ2Ugd2FzIGlzb2xh
dGVkIGZyb20gcHJldmlvdXMgcGF0Y2gKZnJvbSBKb3PDqS4gSW4gb3JkZXIgdG8gc3VwcG9ydCBt
b3JlIHN0cmVhbXMgd2Ugd2lsbCBuZWVkIHRvIGNyZWF0ZSBhCm1hc3Rlci1zbGF2ZSByZWxhdGlv
biBvbiB0aGUgdHJhbnNjb2RlcnMgYW5kIHRoYXQgaXMgbm90IGN1cnJlbnRseQp3b3JraW5nIHll
dC4KCnYyOiByZW1vdmUgdW51c2VkIG1hY3JvIGFuZCB1c2UgUkVHX0ZJRUxEX1BSRVAoKSAoVmls
bGUpCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAz
ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDMgKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IDI4MTU5NGJjYmZhZS4uZmVkN2ZjNTZkZDkyIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE5MDUsNiArMTkwNSw5IEBA
IGludGVsX2RkaV90cmFuc2NvZGVyX2Z1bmNfcmVnX3ZhbF9nZXQoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJfSBlbHNlIGlmIChpbnRlbF9jcnRjX2hhc190eXBl
KGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKSB7CiAJCXRlbXAgfD0gVFJBTlNfRERJ
X01PREVfU0VMRUNUX0RQX01TVDsKIAkJdGVtcCB8PSBERElfUE9SVF9XSURUSChjcnRjX3N0YXRl
LT5sYW5lX2NvdW50KTsKKworCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJCXRl
bXAgfD0gVFJBTlNfRERJX01TVF9UUkFOU1BPUlRfU0VMRUNUKGNydGNfc3RhdGUtPmNwdV90cmFu
c2NvZGVyKTsKIAl9IGVsc2UgewogCQl0ZW1wIHw9IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EUF9T
U1Q7CiAJCXRlbXAgfD0gRERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBmYjMzYjE2NGNlNTUuLjk3ZWMzZDBiYmQxMSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05NTg2LDYgKzk1ODYsOSBAQCBlbnVtIHNrbF9wb3dl
cl9nYXRlIHsKICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQV9PTk9GRgkoNCA8PCAxMikK
ICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQl9PTk9GRgkoNSA8PCAxMikKICNkZWZpbmUg
IFRSQU5TX0RESV9FRFBfSU5QVVRfQ19PTk9GRgkoNiA8PCAxMikKKyNkZWZpbmUgIFRSQU5TX0RE
SV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9NQVNLCVJFR19HRU5NQVNLKDEyLCAxMCkKKyNkZWZpbmUg
IFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVCh0cmFucykJXAorCVJFR19GSUVMRF9QUkVQ
KFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9NQVNLLCB0cmFucykKICNkZWZpbmUgIFRS
QU5TX0RESV9IRENQX1NJR05BTExJTkcJKDEgPDwgOSkKICNkZWZpbmUgIFRSQU5TX0RESV9EUF9W
Q19QQVlMT0FEX0FMTE9DCSgxIDw8IDgpCiAjZGVmaW5lICBUUkFOU19ERElfSERNSV9TQ1JBTUJM
RVJfQ1RTX0VOQUJMRSAoMSA8PCA3KQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
