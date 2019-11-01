Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C07AEC3F4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 14:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD5A6F7EC;
	Fri,  1 Nov 2019 13:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE136F7EC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 13:44:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 06:41:18 -0700
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="375567510"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 06:41:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 15:40:54 +0200
Message-Id: <20191101134054.30228-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101134054.30228-1-jani.nikula@intel.com>
References: <20191101134054.30228-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dsc: rename functions for
 consistency
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

VXNlIGludGVsX2RzY18gcHJlZml4LiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogTWFuYXNp
IE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jCmluZGV4IDA3OWY3NDIzMzg0Mi4uMDZiMWJlZDk4N2VmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwpAQCAtNTAxLDggKzUwMSw4IEBA
IGludGVsX2RzY19wb3dlcl9kb21haW4oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCiAJCXJldHVybiBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUihjcHVfdHJhbnNjb2Rl
cik7CiB9CiAKLXN0YXRpYyB2b2lkIGludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVy
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAotCQkJCQkJY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCitzdGF0aWMgdm9pZCBpbnRlbF9kc2NfcHBzX2NvbmZp
Z3VyZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CkBAIC05
MDEsOCArOTAxLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfY29uZmlndXJlX3Bwc19mb3JfZHNjX2Vu
Y29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJfQogfQogCi1zdGF0aWMgdm9p
ZCBpbnRlbF9kcF93cml0ZV9kc2NfcHBzX3NkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKLQkJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CitzdGF0aWMgdm9pZCBpbnRlbF9kc2NfZHBfcHBzX3dyaXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAorCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogewogCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmVu
Y29kZXItPmJhc2UpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0
ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwpAQCAtOTM3LDkgKzkzNyw5IEBAIHZvaWQgaW50
ZWxfZHNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnRlbF9kaXNw
bGF5X3Bvd2VyX2dldChkZXZfcHJpdiwKIAkJCQlpbnRlbF9kc2NfcG93ZXJfZG9tYWluKGNydGNf
c3RhdGUpKTsKIAotCWludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKGVuY29kZXIs
IGNydGNfc3RhdGUpOworCWludGVsX2RzY19wcHNfY29uZmlndXJlKGVuY29kZXIsIGNydGNfc3Rh
dGUpOwogCi0JaW50ZWxfZHBfd3JpdGVfZHNjX3Bwc19zZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSk7
CisJaW50ZWxfZHNjX2RwX3Bwc193cml0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAogCWlmIChj
cnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0VEUCkgewogCQlkc3NfY3Rs
MV9yZWcgPSBEU1NfQ1RMMTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
