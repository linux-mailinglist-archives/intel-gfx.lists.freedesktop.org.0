Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F7418F3E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2A689F33;
	Thu,  9 May 2019 17:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECDA789F1B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:35:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:35:10 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2019 10:35:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:34:38 +0300
Message-Id: <20190509173446.31095-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
References: <20190509173446.31095-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH v3 03/11] drm/i915: Verify power domains state
 during suspend in all cases
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

VGhlcmUgaXMgbm8gcmVhc29uIHdoeSB3ZSBjb3VsZG4ndCB2ZXJpZnkgdGhlIHBvd2VyIGRvbWFp
bnMgc3RhdGUgZHVyaW5nCnN1c3BlbmQgaW4gYWxsIGNhc2VzLCBzbyBkbyB0aGF0LiBJIG92ZXJs
b29rZWQgdGhpcyB3aGVuIG9yaWdpbmFsbHkKYWRkaW5nIHRoZSBjaGVjay4KCkNjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCmluZGV4IDE4
MTUyOTc4Mzc1YS4uMmNmNDk0M2RmMmU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ydW50aW1lX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jCkBAIC00NTI4LDEwICs0NTI4LDEwIEBAIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWlu
c19zdXNwZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCSAqIEV2ZW4gaWYgcG93
ZXIgd2VsbCBzdXBwb3J0IHdhcyBkaXNhYmxlZCB3ZSBzdGlsbCB3YW50IHRvIGRpc2FibGUKIAkg
KiBwb3dlciB3ZWxscyBpZiBwb3dlciBkb21haW5zIG11c3QgYmUgZGVpbml0aWFsaXplZCBmb3Ig
c3VzcGVuZC4KIAkgKi8KLQlpZiAoIWk5MTVfbW9kcGFyYW1zLmRpc2FibGVfcG93ZXJfd2VsbCkg
eworCWlmICghaTkxNV9tb2RwYXJhbXMuZGlzYWJsZV9wb3dlcl93ZWxsKQogCQlpbnRlbF9kaXNw
bGF5X3Bvd2VyX3B1dF91bmNoZWNrZWQoaTkxNSwgUE9XRVJfRE9NQUlOX0lOSVQpOwotCQlpbnRl
bF9wb3dlcl9kb21haW5zX3ZlcmlmeV9zdGF0ZShpOTE1KTsKLQl9CisKKwlpbnRlbF9wb3dlcl9k
b21haW5zX3ZlcmlmeV9zdGF0ZShpOTE1KTsKIAogCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEp
CiAJCWljbF9kaXNwbGF5X2NvcmVfdW5pbml0KGk5MTUpOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
