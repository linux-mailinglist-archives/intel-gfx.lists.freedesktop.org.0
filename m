Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9F51FDA62
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03CA6E25F;
	Thu, 18 Jun 2020 00:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667DD6E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
IronPort-SDR: uVRkYtrPA5s+i23aqF+qVxPK6JFiBOexi+mHPiJg8/Josf/rIyGHwn00CMqMW2uQgla+6ZoD/x
 52lQTP61uwAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:50 -0700
IronPort-SDR: apzk8gYOLa/kZxsddC/PmqCCbMTENpjICohrP89seIfhfGCGFjb/OUoTIMlRv6ylL+Ub2uLuBK
 t5RKS54SZRXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011847"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:14 -0700
Message-Id: <20200618004240.16263-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/32] drm/i915: Add has_master_unit_irq flag
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KCkFkZCBmbGFn
IHRvIGRpZmZlcmVudGlhdGUgcGxhdGZvcm1zIHdpdGggYW5kIHdpdGhvdXQgdGhlIG1hc3RlcgpJ
UlEgY29udHJvbCBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1
bW1lcnNAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICAgICAgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5o
IHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCmluZGV4IGI4MzYwMzJmYTBkZWIuLjJmODA1N2EwYjIyODAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaApAQCAtMTU5NSw2ICsxNTk1LDggQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIEhBU19MT0dJQ0FMX1JJTkdfUFJF
RU1QVElPTihkZXZfcHJpdikgXAogCQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmhhc19sb2dpY2Fs
X3JpbmdfcHJlZW1wdGlvbikKIAorI2RlZmluZSBIQVNfTUFTVEVSX1VOSVRfSVJRKGRldl9wcml2
KSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmhhc19tYXN0ZXJfdW5pdF9pcnEpCisKICNkZWZpbmUg
SEFTX0VYRUNMSVNUUyhkZXZfcHJpdikgSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhkZXZfcHJp
dikKIAogI2RlZmluZSBJTlRFTF9QUEdUVChkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYp
LT5wcGd0dF90eXBlKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKaW5k
ZXggOGQ2MmI4NTM4NTg1ZC4uNzcwZDA3MDAzY2U2MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5oCkBAIC0xMjIsNiArMTIyLDcgQEAgZW51bSBpbnRlbF9wcGd0dF90
eXBlIHsKIAlmdW5jKGhhc19sb2dpY2FsX3JpbmdfY29udGV4dHMpOyBcCiAJZnVuYyhoYXNfbG9n
aWNhbF9yaW5nX2Vsc3EpOyBcCiAJZnVuYyhoYXNfbG9naWNhbF9yaW5nX3ByZWVtcHRpb24pOyBc
CisJZnVuYyhoYXNfbWFzdGVyX3VuaXRfaXJxKTsgXAogCWZ1bmMoaGFzX3Bvb2xlZF9ldSk7IFwK
IAlmdW5jKGhhc19yYzYpOyBcCiAJZnVuYyhoYXNfcmM2cCk7IFwKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
