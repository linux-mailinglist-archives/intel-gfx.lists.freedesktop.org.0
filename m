Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BF863D77
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B1C89CA2;
	Tue,  9 Jul 2019 21:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B1389683
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:45:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 14:45:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="168114181"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2019 14:45:24 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 14:47:34 -0700
Message-Id: <20190709214735.16907-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
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

T24gVEdMKyB3ZSBzdXBwb3J0IDhLIGRpc3BsYXkgcmVzb2x1dGlvbiwgaGVuY2UgYnVtcCB1cCB0
aGUgdmVydGljYWwKYWN0aXZlIGxpbWl0cyB0byA0MzIwIGluIGludGVsX21vZGVfdmFsaWQoKQoK
Q2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBmMDcwODE4
MTViODAuLjBkNWM4YWYwMWY1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTE1NzY0LDggKzE1NzY0LDEzIEBAIGludGVsX21vZGVfdmFsaWQo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCSAgIERSTV9NT0RFX0ZMQUdfQ0xLRElWMikpCiAJ
CXJldHVybiBNT0RFX0JBRDsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgfHwKLQkg
ICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgeworCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49MTIpIHsKKwkJaGRpc3BsYXlfbWF4ID0gODE5MjsKKwkJ
dmRpc3BsYXlfbWF4ID0gNDMyMDsKKwkJaHRvdGFsX21heCA9IDgxOTI7CisJCXZ0b3RhbF9tYXgg
PSA4MTkyOworCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8CisJCSAgIElT
X0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsKIAkJaGRpc3Bs
YXlfbWF4ID0gODE5MjsgLyogRkRJIG1heCA0MDk2IGhhbmRsZWQgZWxzZXdoZXJlICovCiAJCXZk
aXNwbGF5X21heCA9IDQwOTY7CiAJCWh0b3RhbF9tYXggPSA4MTkyOwotLSAKMi4xOS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
