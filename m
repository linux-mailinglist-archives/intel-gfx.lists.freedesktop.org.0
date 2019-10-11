Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBD2D36B8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 03:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0966E0D7;
	Fri, 11 Oct 2019 01:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FA76E3F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 01:09:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394243445"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 18:09:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 18:09:02 -0700
Message-Id: <20191011010907.103309-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011010907.103309-1-lucas.demarchi@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: cleanup unused returns on DP-MST
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

VGhvc2UgaW5pdCBmdW5jdGlvbnMgbWFyayB0aGVpciBzdWNjZXNzIGluIHRoZSBpbnRlbF9kaWdf
cG9ydApzdHJ1Y3QsIHRoZSByZXR1cm4gdmFsdWVzIGFyZSBub3QgcmVhbGx5IHVzZWQuCgpTaWdu
ZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMTEgKysrKyst
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmggfCAgMiAr
LQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKaW5kZXggMjIwM2JlMjhl
YTAxLi5jMmJiYmExZWZmYzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYwpAQCAtNjM0LDcgKzYzNCw3IEBAIGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9l
bmNvZGVyKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBlbnVtCiAK
IH0KIAotc3RhdGljIGJvb2wKK3N0YXRpYyB2b2lkCiBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3Rf
ZW5jb2RlcnMoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiB7CiAJ
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZpbnRlbF9kaWdfcG9ydC0+ZHA7CkBAIC02NDMs
NyArNjQzLDYgQEAgaW50ZWxfZHBfY3JlYXRlX2Zha2VfbXN0X2VuY29kZXJzKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQogCiAJZm9yX2VhY2hfcGlwZShkZXZfcHJp
diwgcGlwZSkKIAkJaW50ZWxfZHAtPm1zdF9lbmNvZGVyc1twaXBlXSA9IGludGVsX2RwX2NyZWF0
ZV9mYWtlX21zdF9lbmNvZGVyKGludGVsX2RpZ19wb3J0LCBwaXBlKTsKLQlyZXR1cm4gdHJ1ZTsK
IH0KIAogaW50CkBAIC02NTIsMTQgKzY1MSwxMyBAQCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9hY3Rp
dmVfbGlua3Moc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiAJcmV0
dXJuIGludGVsX2RpZ19wb3J0LT5kcC5hY3RpdmVfbXN0X2xpbmtzOwogfQogCi1pbnQKK3ZvaWQK
IGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50
ZWxfZGlnX3BvcnQsIGludCBjb25uX2Jhc2VfaWQpCiB7CiAJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9ICZpbnRlbF9kaWdfcG9ydC0+ZHA7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGlu
dGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2OwogCWludCByZXQ7CiAKLQlpbnRlbF9kcC0+Y2Fu
X21zdCA9IHRydWU7CiAJaW50ZWxfZHAtPm1zdF9tZ3IuY2JzID0gJm1zdF9jYnM7CiAKIAkvKiBj
cmVhdGUgZW5jb2RlcnMgKi8KQEAgLTY2OCw5ICs2NjYsMTAgQEAgaW50ZWxfZHBfbXN0X2VuY29k
ZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgaW50IGNv
bm5fYmEKIAkJCQkJICAgJmludGVsX2RwLT5hdXgsIDE2LCAzLCBjb25uX2Jhc2VfaWQpOwogCWlm
IChyZXQpIHsKIAkJaW50ZWxfZHAtPmNhbl9tc3QgPSBmYWxzZTsKLQkJcmV0dXJuIHJldDsKKwkJ
cmV0dXJuOwogCX0KLQlyZXR1cm4gMDsKKworCWludGVsX2RwLT5jYW5fbXN0ID0gdHJ1ZTsKIH0K
IAogdm9pZApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmgKaW5k
ZXggZjY2MGFkODBkYjA0Li5mMjQ3OGMxN2E4ZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuaApAQCAtOCw3ICs4LDcgQEAKIAogc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydDsKIAotaW50IGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsIGludCBjb25uX2lkKTsKK3ZvaWQgaW50ZWxf
ZHBfbXN0X2VuY29kZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdf
cG9ydCwgaW50IGNvbm5faWQpOwogdm9pZCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9jbGVhbnVwKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KTsKIGludCBpbnRlbF9kcF9t
c3RfZW5jb2Rlcl9hY3RpdmVfbGlua3Moc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxf
ZGlnX3BvcnQpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
