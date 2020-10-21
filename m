Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B1B294D99
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD46D6EB1F;
	Wed, 21 Oct 2020 13:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18706EB14
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:33 +0000 (UTC)
IronPort-SDR: x8MW5S/K5G3XSi1ocDKKeSacfGdX2Leu5EZWpme4CGcUV0M62hMpeNV82hJe22kmnjfFX+OptQ
 zlei2UgEzdAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317776"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317776"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:33 -0700
IronPort-SDR: BRiLUHyapCL8ccdTppu7lsz7i5joNd/UnEBPMoPV47+BdgYlxAz6u4XQ/SB+5bWFV7c6vcCkYU
 SJsQucuYiitg==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372515"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:33 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:32:03 -0700
Message-Id: <20201021133213.328994-9-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/18] drm/i915/adl_s: Setup display outputs and
 HTI support for ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5pdGlhbGl6ZSBkaXNwbGF5IG91dHB1dHMgYW5kIGFkZCBIVEkgc3VwcG9ydCBmb3IgQURMLVMu
IEFETC1TIGhhcyA1CmRpc3BsYXkgb3V0cHV0cyAtPiAxIGVEUCwgMiBIRE1JIGFuZCAyIERQKysg
b3V0cHV0cy4KCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4ICsrKysr
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICB8IDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAyICstCiAzIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGIzNzE0ZWQwMDc4Ni4u
ZDEzYjc3NGE5MjU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTcxMTYsNyArMTcxMTYsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0dXBf
b3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKCFIQVNfRElT
UExBWShkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCWlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2
KSkgeworCWlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpIHsKKwkJaW50ZWxfZGRpX2luaXQo
ZGV2X3ByaXYsIFBPUlRfQSk7CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0QpOwkv
KiBEREkgVEMxICovCisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0UpOwkvKiBEREkg
VEMyICovCisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0YpOwkvKiBEREkgVEMzICov
CisJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0cpOwkvKiBEREkgVEM0ICovCisJfSBl
bHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgewogCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9BKTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQik7CiAJCWlu
dGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0QpOwkvKiBEREkgVEMxICovCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYwppbmRleCBkMzlhNzM4OWIzMDUuLmI0ZDU5MzlmMTA4YSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jCkBAIC05MjksNiArOTI5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRl
bF9kZXZpY2VfaW5mbyBhZGxfc19pbmZvID0gewogCVBMQVRGT1JNKElOVEVMX0FMREVSTEFLRV9T
KSwKIAkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0Mp
IHwgQklUKFBJUEVfRCksCiAJLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAxLAorCS5kaXNwbGF5Lmhh
c19odGkgPSAxLAogCS5kaXNwbGF5Lmhhc19wc3JfaHdfdHJhY2tpbmcgPSAwLAogCS5wbGF0Zm9y
bV9lbmdpbmVfbWFzayA9CiAJCUJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkgfCBC
SVQoVkNTMCkgfCBCSVQoVkNTMiksCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2MDRmY2U4
MjhhN2QuLjI2N2U2NjAyYTA1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yOTI4LDcg
KzI5MjgsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3Jl
Z190IHJlZykKICNkZWZpbmUgTUJVU19CQk9YX0NUTF9TMgkJX01NSU8oMHg0NTA0NCkKIAogI2Rl
ZmluZSBIRFBPUlRfU1RBVEUJCQlfTU1JTygweDQ1MDUwKQotI2RlZmluZSAgIEhEUE9SVF9EUExM
X1VTRURfTUFTSwkJUkVHX0dFTk1BU0soMTQsIDEyKQorI2RlZmluZSAgIEhEUE9SVF9EUExMX1VT
RURfTUFTSwkJUkVHX0dFTk1BU0soMTUsIDEyKQogI2RlZmluZSAgIEhEUE9SVF9QSFlfVVNFRF9E
UChwaHkpCVJFR19CSVQoMiAqIChwaHkpICsgMikKICNkZWZpbmUgICBIRFBPUlRfUEhZX1VTRURf
SERNSShwaHkpCVJFR19CSVQoMiAqIChwaHkpICsgMSkKICNkZWZpbmUgICBIRFBPUlRfRU5BQkxF
RAkJUkVHX0JJVCgwKQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
