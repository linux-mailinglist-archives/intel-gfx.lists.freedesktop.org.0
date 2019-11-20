Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E2D104233
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545BA6EA89;
	Wed, 20 Nov 2019 17:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6766EA89
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:35:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:35:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="237821205"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga002.fm.intel.com with ESMTP; 20 Nov 2019 09:35:43 -0800
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 09:36:42 -0800
Message-Id: <20191120173642.70109-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Extend reset modparam to domain resets
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

SW4gdGhlIGV2ZW50IGEgcGxhdGZvcm0gZG9lcyBub3QgcHJvcGVybHkgaW1wbGVtZW50IHJlc2V0
LApkbyBub3QgZ28gdGhyb3VnaCByZXNldCBmbG93cyBmb3IgZW5naW5lIGRvbWFpbnMgdG8gYXZv
aWQKYW4gdW5saWtlbHkgc2l0dWF0aW9uIHdoZXJlIHdyaXRlcyBhcmUgYWNjZXB0ZWQgYnV0IHJl
Z2lzdGVyCnZhbHVlcyBhcmUgbmV2ZXIgY2xlYXJlZCwgYXMgdGhpcyBjYW4gcmVzdWx0IGluIEdQ
VSB3ZWRnZXMKaW4gdGhlc2UgY2FzZXMuCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IDAzODhmOTM3
NTM2Ni4uMDQ1NGUwMWUwNjNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMK
QEAgLTI3MCw2ICsyNzAsMTIgQEAgc3RhdGljIGludCBnZW42X2h3X2RvbWFpbl9yZXNldChzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LCB1MzIgaHdfZG9tYWluX21hc2spCiAJc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKIAlpbnQgZXJyOwogCisJaWYgKCFpOTE1X21vZHBhcmFt
cy5yZXNldCkgeworCQlEUk1fREVCVUdfRFJJVkVSKCJTa2lwcGluZyAweCUwOHggZW5naW5lcyBy
ZXNldFxuIiwKKwkJCQkgaHdfZG9tYWluX21hc2spOworCQlyZXR1cm4gMDsKKwl9CisKIAkvKgog
CSAqIEdFTjZfR0RSU1QgaXMgbm90IGluIHRoZSBndCBwb3dlciB3ZWxsLCBubyBuZWVkIHRvIGNo
ZWNrCiAJICogZm9yIGZpZm8gc3BhY2UgZm9yIHRoZSB3cml0ZSBvciBmb3JjZXdha2UgdGhlIGNo
aXAgZm9yCkBAIC00OTQsNiArNTAwLDEzIEBAIHN0YXRpYyBpbnQgZ2VuOF9lbmdpbmVfcmVzZXRf
cHJlcGFyZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCXJldHVybiAwOwogCX0K
IAorCWlmICghaTkxNV9tb2RwYXJhbXMucmVzZXQpIHsKKwkJRFJNX0RFQlVHX0RSSVZFUigiU2tp
cHBpbmcgJXMgcmVzZXQgcmVxdWVzdCB7cmVxdWVzdDogJTA4eCwgUkVTRVRfQ1RMOiAlMDh4fVxu
IiwKKwkJCQkgZW5naW5lLT5uYW1lLCByZXF1ZXN0LAorCQkJCSBpbnRlbF91bmNvcmVfcmVhZF9m
dyh1bmNvcmUsIHJlZykpOworCQlyZXR1cm4gMDsKKwl9CisKIAlpbnRlbF91bmNvcmVfd3JpdGVf
ZncodW5jb3JlLCByZWcsIF9NQVNLRURfQklUX0VOQUJMRShyZXF1ZXN0KSk7CiAJcmV0ID0gX19p
bnRlbF93YWl0X2Zvcl9yZWdpc3Rlcl9mdyh1bmNvcmUsIHJlZywgbWFzaywgYWNrLAogCQkJCQkg
ICA3MDAsIDAsIE5VTEwpOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
