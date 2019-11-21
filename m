Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01597105AEC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 21:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B853899AB;
	Thu, 21 Nov 2019 20:15:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA55C899AB
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 20:15:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 12:14:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,227,1571727600"; d="scan'208";a="357910031"
Received: from cataylo2-ubuntu18-10.jf.intel.com ([10.7.199.54])
 by orsmga004.jf.intel.com with ESMTP; 21 Nov 2019 12:14:57 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 12:14:55 -0800
Message-Id: <20191121201455.2558-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191120234020.29887-1-clinton.a.taylor@intel.com>
References: <20191120234020.29887-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Disable display interrupts during
 display IRQ handler
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCkR1cmluZyB0
aGUgRGlzcGxheSBJbnRlcnJ1cHQgU2VydmljZSByb3V0aW5lIHRoZSBEaXNwbGF5IEludGVycnVw
dApFbmFibGUgYml0IG11c3QgYmUgZGlzYWJsZWQsIFRoZSBpbnRlcnJ1cHRzIGhhbmRsZWQsIHRo
ZW4gdGhlCkRpc3BsYXkgSW50ZXJydXB0IEVuYWJsZSBiaXQgbXVzdCBiZSBzZXQgdG8gcHJldmVu
dCBwb3NzaWJsZSBtaXNzZWQKaW50ZXJydXB0cy4KCkJzcGVjOiA0OTIxMgpWMjogQ2hhbmdlIFRp
dGxlIHRvIHJlbW92ZSBTREUgcmVmZXJlbmNlLgpWMzogRml4IFRBQiBzcGFjaW5nLgoKQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogQWRpdHlhIFN3YXJ1
cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGlu
dG9uLmEudGF5bG9yQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKaW5kZXggZGFlMDBmN2RkN2RmLi44YjMzODc0NGVkZGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYwpAQCAtMjQ4NCw3ICsyNDg0LDExIEBAIF9fZ2VuMTFfaXJxX2hhbmRsZXIo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBjb25zdCBpOTE1LAogCQkgKiBHRU4xMV9ESVNQTEFZ
X0lOVF9DVEwgaGFzIHNhbWUgZm9ybWF0IGFzIEdFTjhfTUFTVEVSX0lSUQogCQkgKiBmb3IgdGhl
IGRpc3BsYXkgcmVsYXRlZCBiaXRzLgogCQkgKi8KKwkJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4x
MV9ESVNQTEFZX0lOVF9DVEwsIDB4MCk7CiAJCWdlbjhfZGVfaXJxX2hhbmRsZXIoaTkxNSwgZGlz
cF9jdGwpOworCQlyYXdfcmVnX3dyaXRlKHJlZ3MsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCwKKwkJ
CSAgICAgIEdFTjExX0RJU1BMQVlfSVJRX0VOQUJMRSk7CisKIAkJZW5hYmxlX3JwbV93YWtlcmVm
X2Fzc2VydHMoJmk5MTUtPnJ1bnRpbWVfcG0pOwogCX0KIAotLSAKMi4xOS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
