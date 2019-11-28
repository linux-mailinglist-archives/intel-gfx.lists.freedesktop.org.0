Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4289510C1DB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2136E5D6;
	Thu, 28 Nov 2019 01:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2836E5D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:48:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:48:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="211863854"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.66])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2019 17:48:54 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 17:48:51 -0800
Message-Id: <20191128014852.214135-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191128014852.214135-1-jose.souza@intel.com>
References: <20191128014852.214135-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 4/5] drm/i915/psr: Check if sink PSR
 capability changed
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

ZURQIHNwZWNpZmljYXRpb24gc3RhdGVzIHRoYXQgc2luayBjYW4gaGF2ZSBpdHMgUFNSIGNhcGFi
aWxpdHkKY2hhbmdlZCwgSSBoYXZlIG5ldmVyIGZvdW5kIGFueSBwYW5lbCBkb2luZyB0aGF0IGJ1
dCBsZXRzIGFkZCB0aGF0CmZvciBjb21wbGV0ZW5lc3MuCkZvciBub3cgaXQgaXMgbm90IHJlYWRp
bmcgYmFjayB0aGUgUFNSIGNhcGFiaWxpdGllcyBhbmQgaWYgcG9zc2libGUKcmUtZW5hYmxpbmcg
UFNSLCB0aGlzIHdpbGwgYmUgYWRkZWQgaWYgYSBwYW5lbCBpcyBmb3VuZCB1c2luZyB0aGlzCmZl
YXR1cmUuCgp2NDoKQ2xlYW5pbmcgRFBfUFNSX0NBUFNfQ0hBTkdFCgpSZXZpZXdlZC1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEd3YW4tZ3llb25nIE11biA8
Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwppbmRleCBhNzU3YjY0NDVmMjEuLjE2ZTlmZjQ3ZDUxOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0xNDM3LDYgKzE0MzcsMjkgQEAgc3Rh
dGljIHZvaWQgcHNyX2FscG1fY2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAl9CiB9
CiAKK3N0YXRpYyB2b2lkIHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBk
cF90b19pOTE1KGludGVsX2RwKTsKKwlzdHJ1Y3QgaTkxNV9wc3IgKnBzciA9ICZkZXZfcHJpdi0+
cHNyOworCXU4IHZhbDsKKwlpbnQgcjsKKworCXIgPSBkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxf
ZHAtPmF1eCwgRFBfUFNSX0VTSSwgJnZhbCk7CisJaWYgKHIgIT0gMSkgeworCQlEUk1fRVJST1Io
IkVycm9yIHJlYWRpbmcgRFBfUFNSX0VTSVxuIik7CisJCXJldHVybjsKKwl9CisKKwlpZiAodmFs
ICYgRFBfUFNSX0NBUFNfQ0hBTkdFKSB7CisJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRl
bF9kcCk7CisJCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOworCQlEUk1fREVCVUdfS01T
KCJTaW5rIFBTUiBjYXBhYmlsaXR5IGNoYW5nZWQsIGRpc2FibGluZyBQU1JcbiIpOworCisJCS8q
IENsZWFyaW5nIGl0ICovCisJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBf
UFNSX0VTSSwgdmFsKTsKKwl9Cit9CisKIHZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CkBAIC0xNDgwLDYgKzE1MDMsNyBAQCB2b2lkIGlu
dGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWRybV9kcF9k
cGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VSUk9SX1NUQVRVUywgZXJyb3Jfc3Rh
dHVzKTsKIAogCXBzcl9hbHBtX2NoZWNrKGludGVsX2RwKTsKKwlwc3JfY2FwYWJpbGl0eV9jaGFu
Z2VkX2NoZWNrKGludGVsX2RwKTsKIAogZXhpdDoKIAltdXRleF91bmxvY2soJnBzci0+bG9jayk7
Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
