Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AF9EFC60
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACDA6E9E5;
	Tue,  5 Nov 2019 11:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB216E9E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 11:30:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 03:30:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="403321316"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 05 Nov 2019 03:30:08 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  5 Nov 2019 17:00:29 +0530
Message-Id: <20191105113029.4328-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Create dumb buffer from LMEM
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBMTUVNIGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0
ZWQgZnJvbSBMTUVNLgoKdjI6CiAgUGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQp2
MzoKICBzL3JlZ2lvbl9pZC9tZW1fdHlwZQoKU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxy
YW1hbGluZ2FtLmNAaW50ZWwuY29tPgpjYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAxNyArKysrKysr
KysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggMTQzYTg5NTJiNzM2Li5kYjcyYWY5ODkw
NWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtNDQsNiArNDQsNyBAQAogI2luY2x1ZGUg
ImdlbS9pOTE1X2dlbV9jbGZsdXNoLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
aCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCisjaW5jbHVkZSAiZ2VtL2k5MTVf
Z2VtX2xtZW0uaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKICNpbmNsdWRlICJndC9p
bnRlbF9lbmdpbmVfdXNlci5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCkBAIC0xNzUsNiAr
MTc2LDcgQEAgaTkxNV9nZW1fcGh5c19wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKIHN0YXRpYyBpbnQKIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUs
CiAJCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJZW51bSBpbnRlbF9tZW1v
cnlfdHlwZSBtZW1fdHlwZSwKIAkJdTY0ICpzaXplX3AsCiAJCXUzMiAqaGFuZGxlX3ApCiB7CkBA
IC0xODgsNyArMTkwLDExIEBAIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUs
CiAJCXJldHVybiAtRUlOVkFMOwogCiAJLyogQWxsb2NhdGUgdGhlIG5ldyBvYmplY3QgKi8KLQlv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsKKwlpZiAo
bWVtX3R5cGUgPT0gSU5URUxfTUVNT1JZX0xPQ0FMKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX2xtZW0oZGV2X3ByaXYsIHNpemUsIDApOworCWVsc2UKKwkJb2JqID0gaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7CisKIAlpZiAoSVNfRVJSKG9iaikp
CiAJCXJldHVybiBQVFJfRVJSKG9iaik7CiAKQEAgLTIwOCw2ICsyMTQsNyBAQCBpOTE1X2dlbV9k
dW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJCSAgICAgc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKIAkJICAgICBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3MpCiB7CisJ
ZW51bSBpbnRlbF9tZW1vcnlfdHlwZSBtZW1fdHlwZSA9IElOVEVMX01FTU9SWV9TWVNURU07CiAJ
aW50IGNwcCA9IERJVl9ST1VORF9VUChhcmdzLT5icHAsIDgpOwogCXUzMiBmb3JtYXQ7CiAKQEAg
LTIzNCw3ICsyNDEsMTEgQEAgaTkxNV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpm
aWxlLAogCQlhcmdzLT5waXRjaCA9IEFMSUdOKGFyZ3MtPnBpdGNoLCA0MDk2KTsKIAogCWFyZ3Mt
PnNpemUgPSBhcmdzLT5waXRjaCAqIGFyZ3MtPmhlaWdodDsKLQlyZXR1cm4gaTkxNV9nZW1fY3Jl
YXRlKGZpbGUsIHRvX2k5MTUoZGV2KSwKKworCWlmIChIQVNfTE1FTSh0b19pOTE1KGRldikpKQor
CQltZW1fdHlwZSA9IElOVEVMX01FTU9SWV9MT0NBTDsKKworCXJldHVybiBpOTE1X2dlbV9jcmVh
dGUoZmlsZSwgdG9faTkxNShkZXYpLCBtZW1fdHlwZSwKIAkJCSAgICAgICAmYXJncy0+c2l6ZSwg
JmFyZ3MtPmhhbmRsZSk7CiB9CiAKQEAgLTI1Myw3ICsyNjQsNyBAQCBpOTE1X2dlbV9jcmVhdGVf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAogCWk5MTVfZ2VtX2Zs
dXNoX2ZyZWVfb2JqZWN0cyhkZXZfcHJpdik7CiAKLQlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZp
bGUsIGRldl9wcml2LAorCXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgZGV2X3ByaXYsIElO
VEVMX01FTU9SWV9TWVNURU0sCiAJCQkgICAgICAgJmFyZ3MtPnNpemUsICZhcmdzLT5oYW5kbGUp
OwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
