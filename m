Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B5D51CCA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 23:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABA989DEA;
	Mon, 24 Jun 2019 21:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC1C89DE1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 21:07:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 14:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="163740806"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 24 Jun 2019 14:07:08 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 14:08:47 -0700
Message-Id: <20190624210850.17223-6-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190624210850.17223-1-manasi.d.navare@intel.com>
References: <20190624210850.17223-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/8] drm/i915/display/icl: HW state readout
 for transcoder port sync config
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWZ0ZXIgdGhlIHN0YXRlIGlzIGNvbW1pdHRlZCwgd2UgcmVhZG91dCB0aGUgSFcgcmVnaXN0ZXJz
IGFuZCBjb21wYXJlCnRoZSBIVyBzdGF0ZSB3aXRoIHRoZSBTVyBzdGF0ZSB0aGF0IHdlIGp1c3Qg
Y29tbWl0dGVkLgpGb3IgVHJhbnNjZG9lciBwb3J0IHN5bmMsIHdlIGFkZCBtYXN0ZXJfdHJhbnNj
b2RlciBhbmQgdGhlCnNhbHZlcyBiaXRtYXNrIHRvIHRoZSBjcnRjX3N0YXRlLCBoZW5jZSB3ZSBu
ZWVkIHRvIHJlYWQgdGhvc2UgZHVyaW5nCnRoZSBIVyBzdGF0ZSByZWFkb3V0IHRvIGF2b2lkIHBp
cGUgc3RhdGUgbWlzbWF0Y2guCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQ0ICsrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZjM1OWE2MjEyNTc0Li43MTU2YjFi
NGM2YzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CkBAIC0xMDI3MSw2ICsxMDI3MSw0NyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2dldF9kZGlfcG9y
dF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIGlj
ZWxha2VfZ2V0X3RyYW5zX3BvcnRfc3luY19jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMs
CisJCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCit7CisJ
c3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwl1MzIgdHJhbnNfcG9ydF9zeW5j
LCB0cmFuc2NvZGVycywgbWFzdGVyX3NlbGVjdDsKKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5z
Y29kZXI7CisKKwl0cmFuc19wb3J0X3N5bmMgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RM
MihwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpKTsKKwlpZiAodHJhbnNfcG9ydF9zeW5jICYg
UE9SVF9TWU5DX01PREVfRU5BQkxFKSB7CisJCW1hc3Rlcl9zZWxlY3QgPSB0cmFuc19wb3J0X3N5
bmMgJgorCQkJUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLOworCQlzd2l0Y2ggKG1h
c3Rlcl9zZWxlY3QpIHsKKwkJY2FzZSAxOgorCQkJcGlwZV9jb25maWctPm1hc3Rlcl90cmFuc2Nv
ZGVyID0gVFJBTlNDT0RFUl9BOworCQkJYnJlYWs7CisJCWNhc2UgMjoKKwkJCXBpcGVfY29uZmln
LT5tYXN0ZXJfdHJhbnNjb2RlciA9IFRSQU5TQ09ERVJfQjsKKwkJCWJyZWFrOworCQljYXNlIDM6
CisJCQlwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBUUkFOU0NPREVSX0M7CisJCQli
cmVhazsKKwkJZGVmYXVsdDoKKwkJCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9IFRS
QU5TQ09ERVJfRURQOworCQkJYnJlYWs7CisJCX0KKwl9IGVsc2UKKwkJcGlwZV9jb25maWctPm1h
c3Rlcl90cmFuc2NvZGVyID0gSU5WQUxJRF9UUkFOU0NPREVSOworCisJdHJhbnNjb2RlcnMgPSBC
SVQoVFJBTlNDT0RFUl9FRFApIHwKKwkJQklUKFRSQU5TQ09ERVJfQSkgfAorCQlCSVQoVFJBTlND
T0RFUl9CKSB8CisJCUJJVChUUkFOU0NPREVSX0MpOworCWZvcl9lYWNoX2NwdV90cmFuc2NvZGVy
X21hc2tlZChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHRyYW5zY29kZXJzKSB7CisJCXRyYW5z
X3BvcnRfc3luYyA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwyKGNwdV90cmFuc2NvZGVy
KSk7CisKKwkJaWYgKHRyYW5zX3BvcnRfc3luYyAmIFBPUlRfU1lOQ19NT0RFX0VOQUJMRSkKKwkJ
CXBpcGVfY29uZmlnLT5zeW5jX21vZGVfc2xhdmVzX21hc2sgfD0gQklUKGNwdV90cmFuc2NvZGVy
KTsKKwl9Cit9CisKIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAogCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9j
b25maWcpCiB7CkBAIC0xMDM2Nyw2ICsxMDQwOCw5IEBAIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0
X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQlwaXBlX2NvbmZpZy0+cGl4
ZWxfbXVsdGlwbGllciA9IDE7CiAJfQogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEp
CisJCWljZWxha2VfZ2V0X3RyYW5zX3BvcnRfc3luY19jb25maWcoY3J0YywgcGlwZV9jb25maWcp
OworCiBvdXQ6CiAJZm9yX2VhY2hfcG93ZXJfZG9tYWluKHBvd2VyX2RvbWFpbiwgcG93ZXJfZG9t
YWluX21hc2spCiAJCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LAotLSAKMi4xOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
