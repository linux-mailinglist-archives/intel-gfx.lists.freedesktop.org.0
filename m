Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904CA5B50F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E864589F61;
	Mon,  1 Jul 2019 06:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AEF89F61
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988655"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:23 +0530
Message-Id: <20190701062632.456-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/15] drm/i915/dsb: Update i915_write to call
 dsb-write.
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

RXhpc3RpbmcgbW1pby1yZWctd3JpdGUgbmVlZCBpbnRlbF91bmNvcmUgaGFuZGxlIHdoaWNoIGlz
IHBhcnQKb2YgZGV2X3ByaXYgc3RydWN0dXJlIGFuZCB0aGUgc2FtZSBkZXNpZ24gaXMgZm9sbG93
ZWQgYnkKYWRkaW5nIGRzYiBoYW5kbGUgaW4gZGV2X3ByaXYgZm9yIHByb2dyYW1taW5nIHJlZ2lz
dGVycyB0aHJvdWdoIERTQi4KCkk5MTVfV1JJVEUgaXMgbW9kaWZpZWQgdG8gY2hlY2sgZm9yIHJl
Z2lzdGVyIGNhcGFiaWxpdHkgYW5kIGNhbGwKZHNiLXJlZy13cml0ZSBiYXNlZCBvbiBpdHMgY2Fw
YWJpbGl0eS4KCk5vIGNoYW5nZXMgaW4gSTkxNV9SRUFEIGRlZmluaXRpb24gYXMgRFNCIGRvIG5v
dCBoYXZlIHN1cHBvcnQgdG8KcmVhZCBhbnkgcmVnaXN0ZXIuCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggIHwgNiArKysrKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RzYi5jIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMjM3
YzE3NDI3NzgwLi5jZDBlYmM2MmZhOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTg4
MCw2ICsxODgwLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCS8qIE11dGV4IHRvIHBy
b3RlY3QgdGhlIGFib3ZlIGhkY3AgY29tcG9uZW50IHJlbGF0ZWQgdmFsdWVzLiAqLwogCXN0cnVj
dCBtdXRleCBoZGNwX2NvbXBfbXV0ZXg7CiAKKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7CisKIAkv
KgogCSAqIE5PVEU6IFRoaXMgaXMgdGhlIGRyaTEvdW1zIGR1bmdlb24sIGRvbid0IGFkZCBzdHVm
ZiBoZXJlLiBZb3VyIHBhdGNoCiAJICogd2lsbCBiZSByZWplY3RlZC4gSW5zdGVhZCBsb29rIGZv
ciBhIGJldHRlciBwbGFjZS4KQEAgLTI3MTYsNyArMjcxOCw5IEBAIGV4dGVybiB2b2lkIGludGVs
X2Rpc3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1
ZiAqZSwKIAlpbnRlbF91bmNvcmVfIyNvcF9fKCYoZGV2X3ByaXZfXyktPnVuY29yZSwgX19WQV9B
UkdTX18pCiAKICNkZWZpbmUgSTkxNV9SRUFEKHJlZ19fKQkgX19JOTE1X1JFR19PUChyZWFkLCBk
ZXZfcHJpdiwgKHJlZ19fKSkKLSNkZWZpbmUgSTkxNV9XUklURShyZWdfXywgdmFsX18pIF9fSTkx
NV9SRUdfT1Aod3JpdGUsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQorI2RlZmluZSBJOTE1
X1dSSVRFKHJlZ19fLCB2YWxfXykgXAorCShyZWdfXy5jYXApID8gaW50ZWxfZHNiX3JlZ193cml0
ZShkZXZfcHJpdi0+ZHNiLCAocmVnX18pLCAodmFsX18pKSA6IFwKKwlfX0k5MTVfUkVHX09QKHdy
aXRlLCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZhbF9fKSkKIAogI2RlZmluZSBQT1NUSU5HX1JFQUQo
cmVnX18pCV9fSTkxNV9SRUdfT1AocG9zdGluZ19yZWFkLCBkZXZfcHJpdiwgKHJlZ19fKSkKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kc2IuYwppbmRleCAzMWUxMDkzOTc3YjYuLmFhNTM2MWMyZDcwZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMKQEAgLTEyMiw3ICsxMjIsNyBAQCB2b2lkIGludGVs
X2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMy
IHZhbCkKIAl1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsKIAogCWlmICghYnVmKSB7Ci0JCUk5MTVf
V1JJVEUocmVnLCB2YWwpOworCQlpbnRlbF91bmNvcmVfd3JpdGUoJihkZXZfcHJpdiktPnVuY29y
ZSwgcmVnLCB2YWwpOwogCQlyZXR1cm47CiAJfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
