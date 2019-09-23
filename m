Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF55BB1CD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71256E834;
	Mon, 23 Sep 2019 10:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38EDE6E834
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:00:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:00:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="389427178"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 23 Sep 2019 03:00:11 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Mon, 23 Sep 2019 15:29:58 +0530
Message-Id: <20190923095958.21546-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919180433.12442-1-ramalingam.c@intel.com>
References: <20190919180433.12442-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Create dumb buffer from LMEM
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
ZWQgZnJvbSBMTUVNLgoKVGhpcyBpcyBkZXZlbG9wZWQgb24gdG9wIG9mIHYzIExNRU0gc2VyaWVz
Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTY2ODMvLgoKdjI6CiAg
UGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQoKU2lnbmVkLW9mZi1ieTogUmFtYWxp
bmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgpjYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAx
NyArKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggZTQ1ODUwN2IxNTU4Li5h
MzRhODdkMTkyZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTYwLDYgKzE2MCw3IEBA
IGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiBz
dGF0aWMgaW50CiBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCWVudW0gaW50ZWxfcmVnaW9uX2lkIG1l
bV9yZWdpb24sCiAJCXU2NCAqc2l6ZV9wLAogCQl1MzIgKmhhbmRsZV9wKQogewpAQCAtMTczLDcg
KzE3NCwxMiBAQCBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCQlyZXR1
cm4gLUVJTlZBTDsKIAogCS8qIEFsbG9jYXRlIHRoZSBuZXcgb2JqZWN0ICovCi0Jb2JqID0gaTkx
NV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7CisJaWYgKG1lbV9yZWdp
b24gPT0gSU5URUxfTUVNT1JZX0xNRU0pCisJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
bG1lbShkZXZfcHJpdiwgc2l6ZSwgMCk7CisJZWxzZSBpZiAobWVtX3JlZ2lvbiA9PSBJTlRFTF9N
RU1PUllfU1RPTEVOKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihkZXZf
cHJpdiwgc2l6ZSk7CisJZWxzZQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVt
KGRldl9wcml2LCBzaXplKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCXJldHVybiBQVFJfRVJSKG9i
aik7CiAKQEAgLTE5Myw2ICsxOTksNyBAQCBpOTE1X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJt
X2ZpbGUgKmZpbGUsCiAJCSAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJICAgICBzdHJ1
Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3MpCiB7CisJZW51bSBpbnRlbF9yZWdpb25faWQg
bWVtX3JlZ2lvbiA9IElOVEVMX01FTU9SWV9VS05PV047CiAJaW50IGNwcCA9IERJVl9ST1VORF9V
UChhcmdzLT5icHAsIDgpOwogCXUzMiBmb3JtYXQ7CiAKQEAgLTIxOSw3ICsyMjYsMTEgQEAgaTkx
NV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCQlhcmdzLT5waXRjaCA9
IEFMSUdOKGFyZ3MtPnBpdGNoLCA0MDk2KTsKIAogCWFyZ3MtPnNpemUgPSBhcmdzLT5waXRjaCAq
IGFyZ3MtPmhlaWdodDsKLQlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIHRvX2k5MTUoZGV2
KSwKKworCWlmIChIQVNfTE1FTSh0b19pOTE1KGRldikpKQorCQltZW1fcmVnaW9uID0gSU5URUxf
TUVNT1JZX0xNRU07CisKKwlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIHRvX2k5MTUoZGV2
KSwgbWVtX3JlZ2lvbiwKIAkJCSAgICAgICAmYXJncy0+c2l6ZSwgJmFyZ3MtPmhhbmRsZSk7CiB9
CiAKQEAgLTIzOCw3ICsyNDksNyBAQCBpOTE1X2dlbV9jcmVhdGVfaW9jdGwoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAogCWk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cyhk
ZXZfcHJpdik7CiAKLQlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIGRldl9wcml2LAorCXJl
dHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgZGV2X3ByaXYsIElOVEVMX01FTU9SWV9VS05PV04s
CiAJCQkgICAgICAgJmFyZ3MtPnNpemUsICZhcmdzLT5oYW5kbGUpOwogfQogCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
