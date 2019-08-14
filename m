Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A538E15C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 01:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77EAA6E872;
	Wed, 14 Aug 2019 23:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43736E872
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 23:51:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 16:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,387,1559545200"; d="scan'208";a="328217755"
Received: from devpc.jf.intel.com ([10.7.197.51])
 by orsmga004.jf.intel.com with ESMTP; 14 Aug 2019 16:51:03 -0700
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Aug 2019 16:51:17 -0700
Message-Id: <20190814235117.11304-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVtb3ZpbmcgcmVzdHJpY3Rpb24gb24gUGlwZSBBIGFzIFRpZ2VyTGFrZSBvbndhcmRzLCBhbGwg
dGhlIHBpcGVzIHN1cHBvcnQgRFNDLgoKQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFy
ZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFk
ZWVwIDxtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTYgKysrKysrKysrKysrLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDQ4ODRjODdjOGVkNy4uYTVi
NTBmOTNmYWM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0x
NzM5LDggKzE3MzksMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc291cmNlX3N1cHBvcnRzX2Zl
YyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCi0JcmV0dXJuIElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEgJiYKLQkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5T
Q09ERVJfQTsKKwkvKiBPbiBUR0wsIERTQyBpcyBzdXBwb3J0ZWQgb24gYWxsIFBpcGVzICovCisJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCXJldHVybiB0cnVlOworCWVsc2UKKwkJ
cmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEgJiYKKwkJCXBpcGVfY29uZmlnLT5jcHVf
dHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7CiB9CiAKIHN0YXRpYyBib29sIGludGVsX2RwX3N1
cHBvcnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLApAQCAtMTc1NSw4ICsxNzU5LDEy
IEBAIHN0YXRpYyBib29sIGludGVsX2RwX3NvdXJjZV9zdXBwb3J0c19kc2Moc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBk
cF90b19pOTE1KGludGVsX2RwKTsKIAotCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEw
ICYmCi0JCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7CisJLyog
T24gVEdMLCBEU0MgaXMgc3VwcG9ydGVkIG9uIGFsbCBQaXBlcyAqLworCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKQorCQlyZXR1cm4gdHJ1ZTsKKwllbHNlCisJCXJldHVybiAoSU5URUxf
R0VOKGRldl9wcml2KSA9PSAxMCB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExKSAmJgorCQkJ
cGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsKIH0KIAogc3RhdGlj
IGJvb2wgaW50ZWxfZHBfc3VwcG9ydHNfZHNjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
