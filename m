Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C96B808D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 20:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246106F464;
	Thu, 19 Sep 2019 18:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F014E6F464
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 18:04:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 11:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="178133640"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga007.jf.intel.com with ESMTP; 19 Sep 2019 11:04:48 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Date: Thu, 19 Sep 2019 23:34:33 +0530
Message-Id: <20190919180433.12442-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Create dumb buffer from LMEM
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
Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTY2ODMvLgoKU2lnbmVk
LW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgpjYzogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMgfCAxOCArKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4
IGU0NTg1MDdiMTU1OC4uYzBkZWNiZDAyMGNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAg
LTE2MSw3ICsxNjEsNyBAQCBzdGF0aWMgaW50CiBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlLAogCQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXU2NCAq
c2l6ZV9wLAotCQl1MzIgKmhhbmRsZV9wKQorCQl1MzIgKmhhbmRsZV9wLCBlbnVtIGludGVsX3Jl
Z2lvbl9pZCBtZW1fcmVnaW9uKQogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7
CiAJdTMyIGhhbmRsZTsKQEAgLTE3Myw3ICsxNzMsMTIgQEAgaTkxNV9nZW1fY3JlYXRlKHN0cnVj
dCBkcm1fZmlsZSAqZmlsZSwKIAkJcmV0dXJuIC1FSU5WQUw7CiAKIAkvKiBBbGxvY2F0ZSB0aGUg
bmV3IG9iamVjdCAqLwotCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oZGV2X3By
aXYsIHNpemUpOworCWlmIChtZW1fcmVnaW9uID09IElOVEVMX01FTU9SWV9MTUVNKQorCQlvYmog
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oZGV2X3ByaXYsIHNpemUsIDApOworCWVsc2Ug
aWYgKG1lbV9yZWdpb24gPT0gSU5URUxfTUVNT1JZX1NUT0xFTikKKwkJb2JqID0gaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2X3ByaXYsIHNpemUpOworCWVsc2UKKwkJb2JqID0gaTkx
NV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7CiAJaWYgKElTX0VSUihv
YmopKQogCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCkBAIC0xOTMsNiArMTk4LDcgQEAgaTkxNV9n
ZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCQkgICAgIHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCiAJCSAgICAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzKQog
eworCWVudW0gaW50ZWxfcmVnaW9uX2lkIG1lbV9yZWdpb24gPSBJTlRFTF9NRU1PUllfVUtOT1dO
OwogCWludCBjcHAgPSBESVZfUk9VTkRfVVAoYXJncy0+YnBwLCA4KTsKIAl1MzIgZm9ybWF0Owog
CkBAIC0yMTksOCArMjI1LDEyIEBAIGk5MTVfZ2VtX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZSwKIAkJYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT5waXRjaCwgNDA5Nik7CiAKIAlh
cmdzLT5zaXplID0gYXJncy0+cGl0Y2ggKiBhcmdzLT5oZWlnaHQ7CisKKwlpZiAoSEFTX0xNRU0o
dG9faTkxNShkZXYpKSkKKwkJbWVtX3JlZ2lvbiA9IElOVEVMX01FTU9SWV9MTUVNOworCiAJcmV0
dXJuIGk5MTVfZ2VtX2NyZWF0ZShmaWxlLCB0b19pOTE1KGRldiksCi0JCQkgICAgICAgJmFyZ3Mt
PnNpemUsICZhcmdzLT5oYW5kbGUpOworCQkJICAgICAgICZhcmdzLT5zaXplLCAmYXJncy0+aGFu
ZGxlLCBtZW1fcmVnaW9uKTsKIH0KIAogLyoqCkBAIC0yMzksNyArMjQ5LDcgQEAgaTkxNV9nZW1f
Y3JlYXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJaTkxNV9n
ZW1fZmx1c2hfZnJlZV9vYmplY3RzKGRldl9wcml2KTsKIAogCXJldHVybiBpOTE1X2dlbV9jcmVh
dGUoZmlsZSwgZGV2X3ByaXYsCi0JCQkgICAgICAgJmFyZ3MtPnNpemUsICZhcmdzLT5oYW5kbGUp
OworCQkJICAgICAgICZhcmdzLT5zaXplLCAmYXJncy0+aGFuZGxlLCBJTlRFTF9NRU1PUllfVUtO
T1dOKTsKIH0KIAogc3RhdGljIGludAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
