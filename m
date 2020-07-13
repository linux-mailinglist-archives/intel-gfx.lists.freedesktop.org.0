Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1528421DF87
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 20:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E846E558;
	Mon, 13 Jul 2020 18:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A99892C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 18:23:40 +0000 (UTC)
IronPort-SDR: F7VTINtMoE9O8wBausm2OcyEv7Qy2XrF3iW5VTURVQyYqDBot32yLMkw6qvnCQmOB8TA61S1GW
 pSDRpo/V/kGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="128267369"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="128267369"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 11:23:40 -0700
IronPort-SDR: 6jqo93/EViGamx3oTbFZQd3qo0hNBVN1RUu+wV32y3asTx/IMQpjSzaeUppU1BIXB4rwqcTzjy
 /+1zvXujEbpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="269792927"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2020 11:23:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 11:23:16 -0700
Message-Id: <20200713182321.12390-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/6] drm/i915: Add has_master_unit_irq flag
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
X2Rydi5oCmluZGV4IDg3OTczZGVkZjhlNy4uZDM1NzA0M2RiNDRlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKQEAgLTE1OTksNiArMTU5OSw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBIQVNfTE9HSUNBTF9SSU5HX1BSRUVN
UFRJT04oZGV2X3ByaXYpIFwKIAkJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfbG9naWNhbF9y
aW5nX3ByZWVtcHRpb24pCiAKKyNkZWZpbmUgSEFTX01BU1RFUl9VTklUX0lSUShkZXZfcHJpdikg
KElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfbWFzdGVyX3VuaXRfaXJxKQorCiAjZGVmaW5lIEhB
U19FWEVDTElTVFMoZGV2X3ByaXYpIEhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMoZGV2X3ByaXYp
CiAKICNkZWZpbmUgSU5URUxfUFBHVFQoZGV2X3ByaXYpIChJTlRFTF9JTkZPKGRldl9wcml2KS0+
cHBndHRfdHlwZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCmluZGV4
IDI0MmQwMDg2MmIxYS4uNzFlZGIzOTZiMzFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmgKQEAgLTEyMiw2ICsxMjIsNyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUg
ewogCWZ1bmMoaGFzX2xvZ2ljYWxfcmluZ19jb250ZXh0cyk7IFwKIAlmdW5jKGhhc19sb2dpY2Fs
X3JpbmdfZWxzcSk7IFwKIAlmdW5jKGhhc19sb2dpY2FsX3JpbmdfcHJlZW1wdGlvbik7IFwKKwlm
dW5jKGhhc19tYXN0ZXJfdW5pdF9pcnEpOyBcCiAJZnVuYyhoYXNfcG9vbGVkX2V1KTsgXAogCWZ1
bmMoaGFzX3JjNik7IFwKIAlmdW5jKGhhc19yYzZwKTsgXAotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
