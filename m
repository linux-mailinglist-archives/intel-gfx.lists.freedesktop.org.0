Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6450B60726
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 16:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064506E4CB;
	Fri,  5 Jul 2019 14:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6476E6E4CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 14:04:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 07:04:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,455,1557212400"; d="scan'208";a="167060588"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 05 Jul 2019 07:04:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 17:04:22 +0300
Message-Id: <20190705140423.28404-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Clear the shared PLL from the
 put_dplls() hook
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHN5bW1ldHJ5IHdpdGggdGhlIGdldF9kcGxscygpIGhvb2sgd2hpY2ggc2V0cyB0aGUgc2hh
cmVkX2RwbGwKcG9pbnRlciBjbGVhciB0aGUgc2FtZSBwb2ludGVyIGZyb20gdGhlIHB1dF9kcGxs
cygpIGhvb2suCgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDIg
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE4ICsr
KysrKysrKysrKystLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggOTE5ZjVhYzg0NGM4Li4yODBlMGYxYjcwMDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzI4NSw4ICsxMzI4NSw2IEBAIHN0
YXRpYyB2b2lkIGludGVsX21vZGVzZXRfY2xlYXJfcGxscyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkKIAkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkKIAkJCWNv
bnRpbnVlOwogCi0JCW5ld19jcnRjX3N0YXRlLT5zaGFyZWRfZHBsbCA9IE5VTEw7Ci0KIAkJaW50
ZWxfcmVsZWFzZV9zaGFyZWRfZHBsbHMoc3RhdGUsIGNydGMpOwogCX0KIH0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCBmOTUzOTcxZTdjM2Iu
LjcyMmIxZGVjYTk5OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYwpAQCAtMzIzLDEzICszMjMsMTcgQEAgc3RhdGljIHZvaWQgaW50ZWxfdW5yZWZl
cmVuY2Vfc2hhcmVkX2RwbGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiBzdGF0
aWMgdm9pZCBpbnRlbF9wdXRfZHBsbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
IAkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewotCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlID0KKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUgPQogCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKwlz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKworCW5ld19jcnRjX3N0YXRlLT5zaGFy
ZWRfZHBsbCA9IE5VTEw7CiAKLQlpZiAoIWNydGNfc3RhdGUtPnNoYXJlZF9kcGxsKQorCWlmICgh
b2xkX2NydGNfc3RhdGUtPnNoYXJlZF9kcGxsKQogCQlyZXR1cm47CiAKLQlpbnRlbF91bnJlZmVy
ZW5jZV9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwpOwor
CWludGVsX3VucmVmZXJlbmNlX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0
ZS0+c2hhcmVkX2RwbGwpOwogfQogCiAvKioKQEAgLTMwMDgsMTMgKzMwMTIsMTcgQEAgc3RhdGlj
IGJvb2wgaWNsX2dldF9kcGxscyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIHN0
YXRpYyB2b2lkIGljbF9wdXRfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
CiAJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewotCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlID0KKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUgPQogCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKKwlz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKIAllbnVtIGljbF9wb3J0X2RwbGxfaWQg
aWQ7CiAKKwluZXdfY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwgPSBOVUxMOworCiAJZm9yIChpZCA9
IElDTF9QT1JUX0RQTExfREVGQVVMVDsgaWQgPCBJQ0xfUE9SVF9EUExMX0NPVU5UOyBpZCsrKSB7
CiAJCXN0cnVjdCBpY2xfcG9ydF9kcGxsICpwb3J0X2RwbGwgPQotCQkJJmNydGNfc3RhdGUtPmlj
bF9wb3J0X2RwbGxzW2lkXTsKKwkJCSZvbGRfY3J0Y19zdGF0ZS0+aWNsX3BvcnRfZHBsbHNbaWRd
OwogCiAJCWlmICghcG9ydF9kcGxsLT5wbGwpCiAJCQljb250aW51ZTsKLS0gCjIuMTcuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
