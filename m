Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F124864FA4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8845E89C97;
	Thu, 11 Jul 2019 00:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B48689C3B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232399"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:31 -0700
Message-Id: <20190711003833.17420-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 19/21] drm/i915/tgl: Add vbt value mapping for DDC
 Bus pin
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkFkZCBWQlQtdmFs
dWUgdG8gRERDIGJ1cyBwaW4gbWFwcGluZyBmb3IgdGhlIHNhbWUuCgpTaWduZWQtb2ZmLWJ5OiBN
YWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpMaW5rOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3MDgyMzE2MjkuOTI5Ni0y
MS1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYyAgICAgfCAxNyArKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgIDMgKysrCiAyIGZpbGVzIGNoYW5n
ZWQsIDE5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDBjOTgwODEzMmQ2Ny4uYTA4YmM0ZjYxN2M4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTM1NCwxMiAr
MTM1NCwyNyBAQCBzdGF0aWMgY29uc3QgdTggbWNjX2RkY19waW5fbWFwW10gPSB7CiAJW01DQ19E
RENfQlVTX0RESV9DXSA9IEdNQlVTX1BJTl85X1RDMV9JQ1AsCiB9OwogCitzdGF0aWMgY29uc3Qg
dTggdGdwX2RkY19waW5fbWFwW10gPSB7CisJW0lDTF9ERENfQlVTX0RESV9BXSA9IEdNQlVTX1BJ
Tl8xX0JYVCwKKwlbSUNMX0REQ19CVVNfRERJX0JdID0gR01CVVNfUElOXzJfQlhULAorCVtUR0xf
RERDX0JVU19ERElfQ10gPSBHTUJVU19QSU5fM19CWFQsCisJW0lDTF9ERENfQlVTX1BPUlRfMV0g
PSBHTUJVU19QSU5fOV9UQzFfSUNQLAorCVtJQ0xfRERDX0JVU19QT1JUXzJdID0gR01CVVNfUElO
XzEwX1RDMl9JQ1AsCisJW0lDTF9ERENfQlVTX1BPUlRfM10gPSBHTUJVU19QSU5fMTFfVEMzX0lD
UCwKKwlbSUNMX0REQ19CVVNfUE9SVF80XSA9IEdNQlVTX1BJTl8xMl9UQzRfSUNQLAorCVtUR0xf
RERDX0JVU19QT1JUXzVdID0gR01CVVNfUElOXzEzX1RDNV9UR1AsCisJW1RHTF9ERENfQlVTX1BP
UlRfNl0gPSBHTUJVU19QSU5fMTRfVEM2X1RHUCwKK307CisKIHN0YXRpYyB1OCBtYXBfZGRjX3Bp
bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHU4IHZidF9waW4pCiB7CiAJY29u
c3QgdTggKmRkY19waW5fbWFwOwogCWludCBuX2VudHJpZXM7CiAKLQlpZiAoSEFTX1BDSF9NQ0Mo
ZGV2X3ByaXYpKSB7CisJaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSkgeworCQlkZGNfcGluX21h
cCA9IHRncF9kZGNfcGluX21hcDsKKwkJbl9lbnRyaWVzID0gQVJSQVlfU0laRSh0Z3BfZGRjX3Bp
bl9tYXApOworCX0gZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKSB7CiAJCWRkY19waW5f
bWFwID0gbWNjX2RkY19waW5fbWFwOwogCQluX2VudHJpZXMgPSBBUlJBWV9TSVpFKG1jY19kZGNf
cGluX21hcCk7CiAJfSBlbHNlIGlmIChIQVNfUENIX0lDUChkZXZfcHJpdikpIHsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAppbmRleCAyZjQ4OTRlOWEw
M2QuLjkzZjVjOWQyMDRkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaApAQCAtMzEwLDEwICszMTAsMTMgQEAgZW51bSB2YnRfZ21idXNfZGRpIHsK
IAlERENfQlVTX0RESV9GLAogCUlDTF9ERENfQlVTX0RESV9BID0gMHgxLAogCUlDTF9ERENfQlVT
X0RESV9CLAorCVRHTF9ERENfQlVTX0RESV9DLAogCUlDTF9ERENfQlVTX1BPUlRfMSA9IDB4NCwK
IAlJQ0xfRERDX0JVU19QT1JUXzIsCiAJSUNMX0REQ19CVVNfUE9SVF8zLAogCUlDTF9ERENfQlVT
X1BPUlRfNCwKKwlUR0xfRERDX0JVU19QT1JUXzUsCisJVEdMX0REQ19CVVNfUE9SVF82LAogCU1D
Q19ERENfQlVTX0RESV9BID0gMHgxLAogCU1DQ19ERENfQlVTX0RESV9CLAogCU1DQ19ERENfQlVT
X0RESV9DID0gMHg0LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
