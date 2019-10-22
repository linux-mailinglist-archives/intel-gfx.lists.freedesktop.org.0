Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31C3E0524
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5012E6E7CA;
	Tue, 22 Oct 2019 13:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691606E7CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:34:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 06:34:30 -0700
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="187890998"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 06:34:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 16:34:14 +0300
Message-Id: <20191022133414.8293-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022133414.8293-1-jani.nikula@intel.com>
References: <20191022133414.8293-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: move crtc state dp_dsc_cfg
 member under dsc as config
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

RFNDIGlzbid0IERQIHNwZWNpZmljLCBzbyByZW1vdmUgdGhlIGRwXyBwcmVmaXggZnJvbSB0aGUg
Y3J0YyBzdGF0ZQptZW1iZXIgbmFtZS4gQWxzbyBtb3ZpbmcgdGhlIG1lbWJlciB1bmRlciB0aGUg
ZHNjIHN1Yi1zdHJ1Y3QgZ2l2ZXMgdXMKZW5vdWdoIGNvbnRleHQgdG8gYWxsb3cgc2hvcnRlbmlu
ZyB0aGUgbmFtZSB0byBqdXN0IGNvbmZpZy4gTm8KZnVuY3Rpb25hbCBjaGFuZ2VzLgoKQ2M6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyAgICAgICAgICB8IDYgKysrLS0tCiAyIGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGRiNjZmOWQ2
MjNmOC4uYmFjNDA0ODJhMmFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtOTg2LDggKzk4Niw4IEBAIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlIHsKIAkJYm9vbCBkc2Nfc3BsaXQ7CiAJCXUxNiBjb21wcmVzc2VkX2JwcDsK
IAkJdTggc2xpY2VfY291bnQ7CisJCXN0cnVjdCBkcm1fZHNjX2NvbmZpZyBjb25maWc7CiAJfSBk
c2M7Ci0Jc3RydWN0IGRybV9kc2NfY29uZmlnIGRwX2RzY19jZmc7CiAKIAkvKiBGb3J3YXJkIEVy
cm9yIGNvcnJlY3Rpb24gU3RhdGUgKi8KIAlib29sIGZlY19lbmFibGU7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCmluZGV4IGY0MWE5MzM2NDc2Yi4uODk2YjBjMzM0
ZjVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2Mu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwpAQCAtMzIy
LDcgKzMyMiw3IEBAIHN0YXRpYyBpbnQgZ2V0X2NvbHVtbl9pbmRleF9mb3JfcmNfcGFyYW1zKHU4
IGJpdHNfcGVyX2NvbXBvbmVudCkKIGludCBpbnRlbF9kcF9jb21wdXRlX2RzY19wYXJhbXMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlw
ZV9jb25maWcpCiB7Ci0Jc3RydWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZwaXBlX2Nv
bmZpZy0+ZHBfZHNjX2NmZzsKKwlzdHJ1Y3QgZHJtX2RzY19jb25maWcgKnZkc2NfY2ZnID0gJnBp
cGVfY29uZmlnLT5kc2MuY29uZmlnOwogCXUxNiBjb21wcmVzc2VkX2JwcCA9IHBpcGVfY29uZmln
LT5kc2MuY29tcHJlc3NlZF9icHA7CiAJdTggaSA9IDA7CiAJaW50IHJvd19pbmRleCA9IDA7CkBA
IC00ODUsNyArNDg1LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29uZmlndXJlX3Bwc19mb3JfZHNj
X2VuY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiB7CiAJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7Ci0JY29uc3Qgc3RydWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZjcnRjX3N0YXRl
LT5kcF9kc2NfY2ZnOworCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAm
Y3J0Y19zdGF0ZS0+ZHNjLmNvbmZpZzsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJ
ZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29k
ZXI7CiAJdTMyIHBwc192YWwgPSAwOwpAQCAtODg1LDcgKzg4NSw3IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2RwX3dyaXRlX2RzY19wcHNfc2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
ewogCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmVuY29kZXIt
PmJhc2UpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZHBf
dG9fZGlnX3BvcnQoaW50ZWxfZHApOwotCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRz
Y19jZmcgPSAmY3J0Y19zdGF0ZS0+ZHBfZHNjX2NmZzsKKwljb25zdCBzdHJ1Y3QgZHJtX2RzY19j
b25maWcgKnZkc2NfY2ZnID0gJmNydGNfc3RhdGUtPmRzYy5jb25maWc7CiAJc3RydWN0IGRybV9k
c2NfcHBzX2luZm9mcmFtZSBkcF9kc2NfcHBzX3NkcDsKIAogCS8qIFByZXBhcmUgRFAgU0RQIFBQ
UyBoZWFkZXIgYXMgcGVyIERQIDEuNCBzcGVjLCBUYWJsZSAyLTEyMyAqLwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
