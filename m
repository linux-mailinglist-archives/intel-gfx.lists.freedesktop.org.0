Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F5758C46
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5FDB6E863;
	Thu, 27 Jun 2019 20:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23E206E84F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:56:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455669"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:56:55 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:13 +0100
Message-Id: <20190627205633.1143-18-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/37] drm/i915/lmem: support pwrite
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

V2UgbmVlZCB0byBhZGQgc3VwcG9ydCBmb3IgcHdyaXRlJ2luZyBhbiBMTUVNIG9iamVjdC4KClNp
Z25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IEFiZGll
bCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jIHwgNzUgKysrKysrKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCmluZGV4IDU0YjJjN2JmMTc3ZC4uZDBhNTMxMWNmMjM1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMKQEAgLTgxLDEyICs4
MSw4NyBAQCBzdGF0aWMgaW50IGxtZW1fcHJlYWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMgaW50IGxtZW1fcHdyaXRlKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCSAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX3B3cml0ZSAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9f
aTkxNShvYmotPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtID0gJmk5
MTUtPnJ1bnRpbWVfcG07CisJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CisJc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7CisJY2hhciBfX3VzZXIgKnVzZXJfZGF0YTsKKwl1bnNpZ25lZCBpbnQgb2Zm
c2V0OworCXVuc2lnbmVkIGxvbmcgaWR4OworCXU2NCByZW1haW47CisJaW50IHJldDsKKworCXJl
dCA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKKwlpZiAocmV0KQorCQlyZXR1cm4g
cmV0OworCisJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwlyZXQgPSBpOTE1X2dlbV9vYmpl
Y3Rfc2V0X3RvX3djX2RvbWFpbihvYmosIHRydWUpOworCWlmIChyZXQpIHsKKwkJaTkxNV9nZW1f
b2JqZWN0X3VubG9jayhvYmopOworCQlnb3RvIG91dF91bnBpbjsKKwl9CisKKwlmZW5jZSA9IGk5
MTVfZ2VtX29iamVjdF9sb2NrX2ZlbmNlKG9iaik7CisJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhv
YmopOworCWlmICghZmVuY2UpIHsKKwkJcmV0ID0gLUVOT01FTTsKKwkJZ290byBvdXRfdW5waW47
CisJfQorCisJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHJwbSk7CisKKwlyZW1haW4g
PSBhcmctPnNpemU7CisJdXNlcl9kYXRhID0gdTY0X3RvX3VzZXJfcHRyKGFyZy0+ZGF0YV9wdHIp
OworCW9mZnNldCA9IG9mZnNldF9pbl9wYWdlKGFyZy0+b2Zmc2V0KTsKKwlmb3IgKGlkeCA9IGFy
Zy0+b2Zmc2V0ID4+IFBBR0VfU0hJRlQ7IHJlbWFpbjsgaWR4KyspIHsKKwkJdW5zaWduZWQgbG9u
ZyB1bndyaXR0ZW47CisJCXZvaWQgX19pb21lbSAqdmFkZHI7CisJCWludCBsZW5ndGg7CisKKwkJ
bGVuZ3RoID0gcmVtYWluOworCQlpZiAob2Zmc2V0ICsgbGVuZ3RoID4gUEFHRV9TSVpFKQorCQkJ
bGVuZ3RoID0gUEFHRV9TSVpFIC0gb2Zmc2V0OworCisJCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0
X2xtZW1faW9fbWFwX3BhZ2Uob2JqLCBpZHgpOworCQlpZiAoIXZhZGRyKSB7CisJCQlyZXQgPSAt
RU5PTUVNOworCQkJZ290byBvdXRfcHV0OworCQl9CisKKwkJdW53cml0dGVuID0gY29weV9mcm9t
X3VzZXIoKHZvaWQgX19mb3JjZSopdmFkZHIgKyBvZmZzZXQsCisJCQkJCSAgIHVzZXJfZGF0YSwK
KwkJCQkJICAgbGVuZ3RoKTsKKwkJaW9fbWFwcGluZ191bm1hcF9hdG9taWModmFkZHIpOworCQlp
ZiAodW53cml0dGVuKSB7CisJCQlyZXQgPSAtRUZBVUxUOworCQkJZ290byBvdXRfcHV0OworCQl9
CisKKwkJcmVtYWluIC09IGxlbmd0aDsKKwkJdXNlcl9kYXRhICs9IGxlbmd0aDsKKwkJb2Zmc2V0
ID0gMDsKKwl9CisKK291dF9wdXQ6CisJaW50ZWxfcnVudGltZV9wbV9wdXQocnBtLCB3YWtlcmVm
KTsKKwlpOTE1X2dlbV9vYmplY3RfdW5sb2NrX2ZlbmNlKG9iaiwgZmVuY2UpOworb3V0X3VucGlu
OgorCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCisJcmV0dXJuIHJldDsKK30K
Kwogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyByZWdpb25fbG1l
bV9vYmpfb3BzID0gewogCS5nZXRfcGFnZXMgPSBpOTE1X21lbW9yeV9yZWdpb25fZ2V0X3BhZ2Vz
X2J1ZGR5LAogCS5wdXRfcGFnZXMgPSBpOTE1X21lbW9yeV9yZWdpb25fcHV0X3BhZ2VzX2J1ZGR5
LAogCS5yZWxlYXNlID0gaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lvbiwKIAog
CS5wcmVhZCA9IGxtZW1fcHJlYWQsCisJLnB3cml0ZSA9IGxtZW1fcHdyaXRlLAogfTsKIAogc3Rh
dGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
