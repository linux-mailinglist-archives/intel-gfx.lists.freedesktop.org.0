Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B60DBEB9B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 07:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A88D6ED64;
	Thu, 26 Sep 2019 05:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47BC16ED64
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 05:21:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 22:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,550,1559545200"; d="scan'208";a="189894509"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 25 Sep 2019 22:21:49 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Date: Thu, 26 Sep 2019 10:51:35 +0530
Message-Id: <20190926052135.29911-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926052135.29911-1-ramalingam.c@intel.com>
References: <20190926052135.29911-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: FB backing gem obj should reside
 in LMEM
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

SWYgTG9jYWwgbWVtb3J5IGlzIHN1cHBvcnRlZCBieSBoYXJkd2FyZSwgd2Ugd2FudCBmcmFtZWJ1
ZmZlciBiYWNraW5nCmdlbSBvYmplY3RzIG91dCBvZiBsb2NhbCBtZW1vcnkuCgpJZiBsb2NhbCBt
ZW1vcnkgaXMgc3VwcG9ydGVkIGFuZCBnZW0gb2JqZWN0IGlmIG5vdCBmcm9tIGxvY2FsIG1lbW9y
eSB3ZQptaWdyYXRlIHRoZSBvYmogaW50byBsb2NhbCBtZW1vcnkuIEFuZCBvbmNlIGZyYW1lYnVm
ZmVyIGlzIGNyZWF0ZWQgd2UKYmxvY2sgdGhlIG1pZ3JhdGlvbiBvZiB0aGUgYXNzb2NpYXRlZCBv
YmplY3Qgb3V0IG9mIGxvY2FsIG1lbW9yeS4KClRoaXMgaXMgZGV2ZWxvcGVkIG9uIHRvcCBvZiB2
MyBMTUVNIHNlcmllcwpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU2
NjgzLwoKY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjUgKysrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICB8IDU4ICsrKysrKysrKysr
Ky0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICB8
ICAzICsKIDMgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAx
Y2M3NDg0NGQzZWEuLmQxOTIxYTMxNzA2NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTU2LDYgKzU2LDggQEAKICNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX3R2LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF92ZHNjLmgiCiAKKyNpbmNsdWRl
ICJnZW0vaTkxNV9nZW1fb2JqZWN0LmgiCisKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1
ZGUgImk5MTVfdHJhY2UuaCIKICNpbmNsdWRlICJpbnRlbF9hY3BpLmgiCkBAIC0xNTQ5Niw2ICsx
NTQ5OCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIHN0YXRpYyB2b2lkIGludGVsX3VzZXJfZnJhbWVidWZmZXJf
ZGVzdHJveShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYikKIHsKIAlzdHJ1Y3QgaW50ZWxfZnJh
bWVidWZmZXIgKmludGVsX2ZiID0gdG9faW50ZWxfZnJhbWVidWZmZXIoZmIpOworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZmItPmRldik7CisKKwkvKiByZW1v
dmluZyB0aGUgRkIgbWVtb3J5IHJlZ2lvbiByZXN0cmljdGlvbiBvbiBvYmosIGlmIGFueSAqLwor
CWludGVsX2ZiLT5mcm9udF9idWZmZXItPm9iaiA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5tZW1v
cnlfcmVnaW9uczsKIAogCWRybV9mcmFtZWJ1ZmZlcl9jbGVhbnVwKGZiKTsKIAlpbnRlbF9mcm9u
dGJ1ZmZlcl9wdXQoaW50ZWxfZmItPmZyb250YnVmZmVyKTsKQEAgLTE1NTQzLDExICsxNTU0OSwy
NiBAQCBzdGF0aWMgaW50IGludGVsX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1l
YnVmZmVyICppbnRlbF9mYiwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOwogCXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0g
JmludGVsX2ZiLT5iYXNlOworCXUzMiAqcmVnaW9uX21hcDsKIAl1MzIgbWF4X3N0cmlkZTsKIAl1
bnNpZ25lZCBpbnQgdGlsaW5nLCBzdHJpZGU7CiAJaW50IHJldCA9IC1FSU5WQUw7CiAJaW50IGk7
CiAKKwkvKiBHRU0gT2JqIGZvciBmcmFtZSBidWZmZXIgaXMgZXhwZWN0ZWQgdG8gYmUgaW4gTE1F
TS4gKi8KKwlpZiAoSEFTX0xNRU0oZGV2X3ByaXYpKQorCQlpZiAob2JqLT5tbS5yZWdpb24tPnR5
cGUgIT0gSU5URUxfTE1FTSkgeworCQkJcmVnaW9uX21hcCA9ICZpbnRlbF9yZWdpb25fbWFwW0lO
VEVMX01FTU9SWV9MTUVNXTsKKwkJCXJldCA9IGk5MTVfZ2VtX29iamVjdF9tZW1fcmVnaW9uX21p
Z3JhdGUoZGV2X3ByaXYsIG9iaiwKKwkJCQkJCQkJIHJlZ2lvbl9tYXAsCisJCQkJCQkJCSAxKTsK
KwkJCWlmIChyZXQpIHsKKwkJCQlEUk1fRVJST1IoIkZCIG1pZ3JhdGlvbiB0byBMTUVNIEZhaWxl
ZCglZClcbiIsCisJCQkJCSAgcmV0KTsKKwkJCQlyZXR1cm4gcmV0OworCQkJfQorCQl9CisKIAlp
bnRlbF9mYi0+ZnJvbnRidWZmZXIgPSBpbnRlbF9mcm9udGJ1ZmZlcl9nZXQob2JqKTsKIAlpZiAo
IWludGVsX2ZiLT5mcm9udGJ1ZmZlcikKIAkJcmV0dXJuIC1FTk9NRU07CkBAIC0xNTY2Niw2ICsx
NTY4NywxMCBAQCBzdGF0aWMgaW50IGludGVsX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVs
X2ZyYW1lYnVmZmVyICppbnRlbF9mYiwKIAkJZ290byBlcnI7CiAJfQogCisJLyogQmxvY2tpbmcg
dGhlIG1pZ3JhdGlvbiBvZiBnZW0gb2JqIG91dCBvZiBMTUVNICovCisJaWYgKEhBU19MTUVNKGRl
dl9wcml2KSkKKwkJb2JqLT5tZW1vcnlfcmVnaW9ucyA9IFJFR0lPTl9MTUVNOworCiAJcmV0dXJu
IDA7CiAKIGVycjoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpp
bmRleCBlNmY4NDI2ZGVkZmYuLjY1YjQ3MDU0MTMwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtNTAxLDMwICs1MDEsMTEgQEAgX19yZWdpb25faWQo
dTMyIHJlZ2lvbikKIAlyZXR1cm4gSU5URUxfTUVNT1JZX1VLTk9XTjsKIH0KIAotc3RhdGljIGlu
dCBpOTE1X2dlbV9vYmplY3RfcmVnaW9uX3NlbGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCi0JCQkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9wYXJhbSAqYXJncywK
LQkJCQkJIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKLQkJCQkJIHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopCitpbnQgaTkxNV9nZW1fb2JqZWN0X21lbV9yZWdpb25fbWlncmF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJICAgICAgIHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCisJCQkJICAgICAgIHUzMiAqdXJlZ2lvbnMsIHUzMiByZWdpb25f
Y291bnQpCiB7CiAJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gZGV2X3ByaXYtPmVuZ2luZVtC
Q1MwXS0+a2VybmVsX2NvbnRleHQ7Ci0JdTMyIF9fdXNlciAqdXJlZ2lvbnMgPSB1NjRfdG9fdXNl
cl9wdHIoYXJncy0+ZGF0YSk7Ci0JdTMyIHVyZWdpb25zX2NvcHlbSU5URUxfTUVNT1JZX1VLTk9X
Tl07Ci0JaW50IGksIHJldDsKLQotCWlmIChhcmdzLT5zaXplID4gSU5URUxfTUVNT1JZX1VLTk9X
TikKLQkJcmV0dXJuIC1FSU5WQUw7Ci0KLQltZW1zZXQodXJlZ2lvbnNfY29weSwgMCwgc2l6ZW9m
KHVyZWdpb25zX2NvcHkpKTsKLQlmb3IgKGkgPSAwOyBpIDwgYXJncy0+c2l6ZTsgaSsrKSB7Ci0J
CXUzMiByZWdpb247Ci0KLQkJcmV0ID0gZ2V0X3VzZXIocmVnaW9uLCB1cmVnaW9ucyk7Ci0JCWlm
IChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCXVyZWdpb25zX2NvcHlbaV0gPSByZWdpb247Ci0J
CSsrdXJlZ2lvbnM7Ci0JfQogCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0
ZXgpOwogCXJldCA9IGk5MTVfZ2VtX29iamVjdF9wcmVwYXJlX21vdmUob2JqKTsKQEAgLTUzMyw4
ICs1MTQsOCBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF9yZWdpb25fc2VsZWN0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkgICAgICAgIGdvdG8gZXJyOwogCX0KIAot
CWZvciAoaSA9IDA7IGkgPCBhcmdzLT5zaXplOyBpKyspIHsKLQkJdTMyIHJlZ2lvbiA9IHVyZWdp
b25zX2NvcHlbaV07CisJZm9yIChpID0gMDsgaSA8IHJlZ2lvbl9jb3VudDsgaSsrKSB7CisJCXUz
MiByZWdpb24gPSB1cmVnaW9uc1tpXTsKIAkJZW51bSBpbnRlbF9yZWdpb25faWQgaWQgPSBfX3Jl
Z2lvbl9pZChyZWdpb24pOwogCiAJCWlmICghKG9iai0+bWVtb3J5X3JlZ2lvbiAmIHJlZ2lvbikp
IHsKQEAgLTU3Niw2ICs1NTcsMzUgQEAgc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfcmVnaW9u
X3NlbGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJuIHJldDsK
IH0KIAorc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfcmVnaW9uX3NlbGVjdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dF9wYXJhbSAqYXJncywKKwkJCQkJIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKKwkJCQkJIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
ID0gZGV2X3ByaXYtPmVuZ2luZVtCQ1MwXS0+a2VybmVsX2NvbnRleHQ7CisJdTMyIF9fdXNlciAq
dXJlZ2lvbnMgPSB1NjRfdG9fdXNlcl9wdHIoYXJncy0+ZGF0YSk7CisJdTMyIHVyZWdpb25zX2Nv
cHlbSU5URUxfTUVNT1JZX1VLTk9XTl07CisJaW50IGksIHJldDsKKworCWlmIChhcmdzLT5zaXpl
ID4gSU5URUxfTUVNT1JZX1VLTk9XTikKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwltZW1zZXQodXJl
Z2lvbnNfY29weSwgMCwgc2l6ZW9mKHVyZWdpb25zX2NvcHkpKTsKKwlmb3IgKGkgPSAwOyBpIDwg
YXJncy0+c2l6ZTsgaSsrKSB7CisJCXUzMiByZWdpb247CisKKwkJcmV0ID0gZ2V0X3VzZXIocmVn
aW9uLCB1cmVnaW9ucyk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCisJCXVyZWdpb25z
X2NvcHlbaV0gPSByZWdpb247CisJCSsrdXJlZ2lvbnM7CisJfQorCisJcmV0dXJuIGk5MTVfZ2Vt
X29iamVjdF9tZW1fcmVnaW9uX21pZ3JhdGUoZGV2X3ByaXYsIG9iaiwgdXJlZ2lvbnNfY29weSwK
KwkJCQkJCSAgYXJncy0+c2l6ZSk7Cit9CisKIGludCBpOTE1X2dlbV9vYmplY3Rfc2V0cGFyYW1f
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJCQkgICBzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGUpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmgKaW5kZXggYTdjMDczYWViNzc3Li5kMDlhOWM3NDFiNDEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTQ3LDYgKzQ3LDkgQEAgaW50IGk5MTVf
Z2VtX29iamVjdF9taWdyYXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkg
ICAgZW51bSBpbnRlbF9yZWdpb25faWQgaWQpOwogCiB2b2lkIGk5MTVfZ2VtX2ZsdXNoX2ZyZWVf
b2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CitpbnQgaTkxNV9nZW1fb2Jq
ZWN0X21lbV9yZWdpb25fbWlncmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CisJCQkJICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkJICAgICAg
IHUzMiAqdXJlZ2lvbnMsIHUzMiByZWdpb25fY291bnQpOwogCiB2b2lkIF9faTkxNV9nZW1fb2Jq
ZWN0X3Jlc2V0X3BhZ2VfaXRlcihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKIAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
