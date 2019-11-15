Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE65DFE154
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D296E861;
	Fri, 15 Nov 2019 15:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B94056E894
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:34:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:27 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="195420582"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 17:33:42 +0200
Message-Id: <d3df8d4a74e1e6aef0389c3f6706503029cf1055.1573831924.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573831924.git.jani.nikula@intel.com>
References: <cover.1573831924.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 06/10] drm/i915/dsc: add support for
 computing and writing PPS for DSI encoders
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIERTSSBzcGVjaWZpYyBjb21wdXRhdGlvbiBhbmQgdHJhbnNtaXNzaW9uIHRvIGRpc3BsYXkg
b2YgUFBTLgoKV2l0aCBob3BlcyB0aGF0IHRoaXMgYXBwcm9hY2ggd2lsbCB3b3JrIGZvciBib3Ro
IERQIGFuZCBEU0kgZW5jb2RlcnMuCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDI2
ICsrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNj
LmMKaW5kZXggYzUzMDI0ZGZiMWVjLi43NmRlZWIzMWYzMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCkBAIC0xMCw2ICsxMCw3IEBACiAKICNpbmNsdWRlICJp
OTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKKyNpbmNsdWRlICJp
bnRlbF9kc2kuaCIKICNpbmNsdWRlICJpbnRlbF92ZHNjLmgiCiAKIGVudW0gUk9XX0lOREVYX0JQ
UCB7CkBAIC04NDQsNiArODQ1LDI2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzY19wcHNfY29uZmln
dXJlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCX0KIH0KIAorc3RhdGljIHZvaWQg
aW50ZWxfZHNjX2RzaV9wcHNfd3JpdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJ
CQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWNv
bnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAmY3J0Y19zdGF0ZS0+ZHNjLmNv
bmZpZzsKKwlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZl
bmNvZGVyLT5iYXNlKTsKKwlzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2k7CisJc3RydWN0IGRy
bV9kc2NfcGljdHVyZV9wYXJhbWV0ZXJfc2V0IHBwczsKKwllbnVtIHBvcnQgcG9ydDsKKworCWRy
bV9kc2NfcHBzX3BheWxvYWRfcGFjaygmcHBzLCB2ZHNjX2NmZyk7CisKKwlmb3JfZWFjaF9kc2lf
cG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7CisJCWRzaSA9IGludGVsX2RzaS0+ZHNpX2hv
c3RzW3BvcnRdLT5kZXZpY2U7CisKKwkJLyogRklYTUU6IGxvY2F0aW9uIGFuZCBvcmRlciBvZiB0
aGVzZSB0d28gY2FsbHM/ICovCisJCW1pcGlfZHNpX3BpY3R1cmVfcGFyYW1ldGVyX3NldChkc2ks
ICZwcHMpOworCQltaXBpX2RzaV9jb21wcmVzc2lvbl9tb2RlKGRzaSwgdHJ1ZSk7CisJfQorfQor
CiBzdGF0aWMgdm9pZCBpbnRlbF9kc2NfZHBfcHBzX3dyaXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogewpAQCAtODgyLDcgKzkwMywxMCBAQCB2b2lkIGludGVsX2RzY19lbmFibGUoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAlpbnRlbF9kc2NfcHBzX2NvbmZpZ3VyZShlbmNv
ZGVyLCBjcnRjX3N0YXRlKTsKIAotCWludGVsX2RzY19kcF9wcHNfd3JpdGUoZW5jb2RlciwgY3J0
Y19zdGF0ZSk7CisJaWYgKGVuY29kZXItPnR5cGUgPT0gSU5URUxfT1VUUFVUX0RTSSkKKwkJaW50
ZWxfZHNjX2RzaV9wcHNfd3JpdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CisJZWxzZQorCQlpbnRl
bF9kc2NfZHBfcHBzX3dyaXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJaWYgKGNydGNfc3Rh
dGUtPmNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKSB7CiAJCWRzc19jdGwxX3JlZyA9
IERTU19DVEwxOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
