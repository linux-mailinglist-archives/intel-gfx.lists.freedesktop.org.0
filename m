Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D043BAB723
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 13:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DAE16E25A;
	Fri,  6 Sep 2019 11:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32926E25A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 11:28:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 04:28:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="267333701"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2019 04:28:11 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 14:26:02 +0300
Message-Id: <20190906112602.8313-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2] drm/i915: List modes,
 regardless of encoder presence
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
Cc: martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2VydGFpbiBzaXR1YXRpb25zIGVuY29kZXIgbWlnaHQgYmUgbm90IHByZXNlbnQgZm9yIGNv
bm5lY3RvciwKaG93ZXZlciBtaWdodCBiZSB1c2VmdWwgdG8gZGlzcGxheSBwcm9iZWQgbW9kZXMg
Zm9yIHRoZSBjb25uZWN0b3IsCmlmIGFueS4KCnYyOiBGaXhlZCB0eXBvIGluIHRoZSBjb21taXQg
bWVzc2FnZQoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggOTc5OGYyN2E2OTdh
Li44ZmEwNTEwZTg5N2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yNTc0
LDYgKzI1NzQsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29ubmVjdG9yX2luZm8oc3RydWN0IHNl
cV9maWxlICptLAogCQkgICBkcm1fZ2V0X3N1YnBpeGVsX29yZGVyX25hbWUoY29ubmVjdG9yLT5k
aXNwbGF5X2luZm8uc3VicGl4ZWxfb3JkZXIpKTsKIAlzZXFfcHJpbnRmKG0sICJcdENFQSByZXY6
ICVkXG4iLCBjb25uZWN0b3ItPmRpc3BsYXlfaW5mby5jZWFfcmV2KTsKIAorCXNlcV9wcmludGYo
bSwgIlx0bW9kZXM6XG4iKTsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KG1vZGUsICZjb25uZWN0b3It
Pm1vZGVzLCBoZWFkKQorCQlpbnRlbF9zZXFfcHJpbnRfbW9kZShtLCAyLCBtb2RlKTsKKwogCWlm
ICghaW50ZWxfZW5jb2RlcikKIAkJcmV0dXJuOwogCkBAIC0yNTk3LDEwICsyNjAxLDYgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfY29ubmVjdG9yX2luZm8oc3RydWN0IHNlcV9maWxlICptLAogCWRlZmF1
bHQ6CiAJCWJyZWFrOwogCX0KLQotCXNlcV9wcmludGYobSwgIlx0bW9kZXM6XG4iKTsKLQlsaXN0
X2Zvcl9lYWNoX2VudHJ5KG1vZGUsICZjb25uZWN0b3ItPm1vZGVzLCBoZWFkKQotCQlpbnRlbF9z
ZXFfcHJpbnRfbW9kZShtLCAyLCBtb2RlKTsKIH0KIAogc3RhdGljIGNvbnN0IGNoYXIgKnBsYW5l
X3R5cGUoZW51bSBkcm1fcGxhbmVfdHlwZSB0eXBlKQotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
