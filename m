Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC73A55678
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34376E1BB;
	Tue, 25 Jun 2019 17:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A44F6E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469340"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:32 -0700
Message-Id: <20190625175437.14840-24-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/28] drm/i915/tgl: Add vbt value mapping for
 DDC Bus pin
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
Cc: Mahesh Kumar <mahesh1.kumar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkFkZCBWQlQtdmFs
dWUgdG8gRERDIGJ1cyBwaW4gbWFwcGluZyBmb3IgdGhlIHNhbWUuCgpTaWduZWQtb2ZmLWJ5OiBN
YWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAxNyArKysrKysrKysrKysrKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgIDMgKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDBjOTgwODEzMmQ2Ny4uYTA4
YmM0ZjYxN2M4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpA
QCAtMTM1NCwxMiArMTM1NCwyNyBAQCBzdGF0aWMgY29uc3QgdTggbWNjX2RkY19waW5fbWFwW10g
PSB7CiAJW01DQ19ERENfQlVTX0RESV9DXSA9IEdNQlVTX1BJTl85X1RDMV9JQ1AsCiB9OwogCitz
dGF0aWMgY29uc3QgdTggdGdwX2RkY19waW5fbWFwW10gPSB7CisJW0lDTF9ERENfQlVTX0RESV9B
XSA9IEdNQlVTX1BJTl8xX0JYVCwKKwlbSUNMX0REQ19CVVNfRERJX0JdID0gR01CVVNfUElOXzJf
QlhULAorCVtUR0xfRERDX0JVU19ERElfQ10gPSBHTUJVU19QSU5fM19CWFQsCisJW0lDTF9ERENf
QlVTX1BPUlRfMV0gPSBHTUJVU19QSU5fOV9UQzFfSUNQLAorCVtJQ0xfRERDX0JVU19QT1JUXzJd
ID0gR01CVVNfUElOXzEwX1RDMl9JQ1AsCisJW0lDTF9ERENfQlVTX1BPUlRfM10gPSBHTUJVU19Q
SU5fMTFfVEMzX0lDUCwKKwlbSUNMX0REQ19CVVNfUE9SVF80XSA9IEdNQlVTX1BJTl8xMl9UQzRf
SUNQLAorCVtUR0xfRERDX0JVU19QT1JUXzVdID0gR01CVVNfUElOXzEzX1RDNV9UR1AsCisJW1RH
TF9ERENfQlVTX1BPUlRfNl0gPSBHTUJVU19QSU5fMTRfVEM2X1RHUCwKK307CisKIHN0YXRpYyB1
OCBtYXBfZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHU4IHZidF9w
aW4pCiB7CiAJY29uc3QgdTggKmRkY19waW5fbWFwOwogCWludCBuX2VudHJpZXM7CiAKLQlpZiAo
SEFTX1BDSF9NQ0MoZGV2X3ByaXYpKSB7CisJaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSkgewor
CQlkZGNfcGluX21hcCA9IHRncF9kZGNfcGluX21hcDsKKwkJbl9lbnRyaWVzID0gQVJSQVlfU0la
RSh0Z3BfZGRjX3Bpbl9tYXApOworCX0gZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKSB7
CiAJCWRkY19waW5fbWFwID0gbWNjX2RkY19waW5fbWFwOwogCQluX2VudHJpZXMgPSBBUlJBWV9T
SVpFKG1jY19kZGNfcGluX21hcCk7CiAJfSBlbHNlIGlmIChIQVNfUENIX0lDUChkZXZfcHJpdikp
IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2Rl
ZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAppbmRl
eCAyZjQ4OTRlOWEwM2QuLjkzZjVjOWQyMDRkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaApAQCAtMzEwLDEwICszMTAsMTMgQEAgZW51bSB2YnRf
Z21idXNfZGRpIHsKIAlERENfQlVTX0RESV9GLAogCUlDTF9ERENfQlVTX0RESV9BID0gMHgxLAog
CUlDTF9ERENfQlVTX0RESV9CLAorCVRHTF9ERENfQlVTX0RESV9DLAogCUlDTF9ERENfQlVTX1BP
UlRfMSA9IDB4NCwKIAlJQ0xfRERDX0JVU19QT1JUXzIsCiAJSUNMX0REQ19CVVNfUE9SVF8zLAog
CUlDTF9ERENfQlVTX1BPUlRfNCwKKwlUR0xfRERDX0JVU19QT1JUXzUsCisJVEdMX0REQ19CVVNf
UE9SVF82LAogCU1DQ19ERENfQlVTX0RESV9BID0gMHgxLAogCU1DQ19ERENfQlVTX0RESV9CLAog
CU1DQ19ERENfQlVTX0RESV9DID0gMHg0LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
