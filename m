Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4943321A994
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 23:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4046EB3B;
	Thu,  9 Jul 2020 21:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD9F6EB3A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 21:14:01 +0000 (UTC)
IronPort-SDR: fOIaF4PcIfn7SJdOnul2P0qaXjjmhs/TdkiBJ8AFm7kguw7sExcGh8BtuxpL0GCyCd+15X+Rm9
 ROjDLyeUpa9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149580925"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="149580925"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 14:14:01 -0700
IronPort-SDR: T2I8wrhLZzCx67qVcbF5clHhiq3G7x+2XugyO7MJmC5ffTuB7O8VrDMkY6rm1hh9j0PAWndKMZ
 wssm52SQPASg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="280429779"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 14:14:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 14:13:52 -0700
Message-Id: <20200709211357.23208-1-lucas.demarchi@intel.com>
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
X2Rydi5oCmluZGV4IDIxYmI5ZjdjYzQ1Mi4uNDJhOWIyMzE1NTZhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKQEAgLTE1OTgsNiArMTU5OCw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVj
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
