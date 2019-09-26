Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F03BEB9A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 07:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7666ED37;
	Thu, 26 Sep 2019 05:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759CB6ED37
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 05:21:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 22:21:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,550,1559545200"; d="scan'208";a="189894497"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 25 Sep 2019 22:21:45 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Date: Thu, 26 Sep 2019 10:51:33 +0530
Message-Id: <20190926052135.29911-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Create dumb buffer from LMEM
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

V2hlbiBMTUVNIGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0
ZWQgZnJvbSBMTUVNLgoKVGhpcyBpcyBkZXZlbG9wZWQgb24gdG9wIG9mIHYzIExNRU0gc2VyaWVz
Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTY2ODMvLgoKdjI6CiAg
UGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQoKU2lnbmVkLW9mZi1ieTogUmFtYWxp
bmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgpjYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAx
OCArKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IGU0NTg1MDdiMTU1OC4u
NjgxMGE1NDllZTk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTQ0LDYgKzQ0LDcgQEAK
ICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY2xmbHVzaC5oIgogI2luY2x1ZGUgImdlbS9pOTE1X2dl
bV9jb250ZXh0LmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgorI2luY2x1ZGUg
ImdlbS9pOTE1X2dlbV9sbWVtLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCiAjaW5j
bHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgpA
QCAtMTYwLDYgKzE2MSw3IEBAIGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCiBzdGF0aWMgaW50CiBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlLAogCQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCWVudW0g
aW50ZWxfcmVnaW9uX2lkIG1lbV9yZWdpb24sCiAJCXU2NCAqc2l6ZV9wLAogCQl1MzIgKmhhbmRs
ZV9wKQogewpAQCAtMTczLDcgKzE3NSwxMiBAQCBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlLAogCQlyZXR1cm4gLUVJTlZBTDsKIAogCS8qIEFsbG9jYXRlIHRoZSBuZXcgb2Jq
ZWN0ICovCi0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6
ZSk7CisJaWYgKG1lbV9yZWdpb24gPT0gSU5URUxfTUVNT1JZX0xNRU0pCisJCW9iaiA9IGk5MTVf
Z2VtX29iamVjdF9jcmVhdGVfbG1lbShkZXZfcHJpdiwgc2l6ZSwgMCk7CisJZWxzZSBpZiAobWVt
X3JlZ2lvbiA9PSBJTlRFTF9NRU1PUllfU1RPTEVOKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX3N0b2xlbihkZXZfcHJpdiwgc2l6ZSk7CisJZWxzZQorCQlvYmogPSBpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJ
CXJldHVybiBQVFJfRVJSKG9iaik7CiAKQEAgLTE5Myw2ICsyMDAsNyBAQCBpOTE1X2dlbV9kdW1i
X2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJCSAgICAgc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKIAkJICAgICBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3MpCiB7CisJZW51
bSBpbnRlbF9yZWdpb25faWQgbWVtX3JlZ2lvbiA9IElOVEVMX01FTU9SWV9VS05PV047CiAJaW50
IGNwcCA9IERJVl9ST1VORF9VUChhcmdzLT5icHAsIDgpOwogCXUzMiBmb3JtYXQ7CiAKQEAgLTIx
OSw3ICsyMjcsMTEgQEAgaTkxNV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxl
LAogCQlhcmdzLT5waXRjaCA9IEFMSUdOKGFyZ3MtPnBpdGNoLCA0MDk2KTsKIAogCWFyZ3MtPnNp
emUgPSBhcmdzLT5waXRjaCAqIGFyZ3MtPmhlaWdodDsKLQlyZXR1cm4gaTkxNV9nZW1fY3JlYXRl
KGZpbGUsIHRvX2k5MTUoZGV2KSwKKworCWlmIChIQVNfTE1FTSh0b19pOTE1KGRldikpKQorCQlt
ZW1fcmVnaW9uID0gSU5URUxfTUVNT1JZX0xNRU07CisKKwlyZXR1cm4gaTkxNV9nZW1fY3JlYXRl
KGZpbGUsIHRvX2k5MTUoZGV2KSwgbWVtX3JlZ2lvbiwKIAkJCSAgICAgICAmYXJncy0+c2l6ZSwg
JmFyZ3MtPmhhbmRsZSk7CiB9CiAKQEAgLTIzOCw3ICsyNTAsNyBAQCBpOTE1X2dlbV9jcmVhdGVf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAogCWk5MTVfZ2VtX2Zs
dXNoX2ZyZWVfb2JqZWN0cyhkZXZfcHJpdik7CiAKLQlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZp
bGUsIGRldl9wcml2LAorCXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgZGV2X3ByaXYsIElO
VEVMX01FTU9SWV9VS05PV04sCiAJCQkgICAgICAgJmFyZ3MtPnNpemUsICZhcmdzLT5oYW5kbGUp
OwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
