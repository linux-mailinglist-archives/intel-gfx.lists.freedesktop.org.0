Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB8B10A22
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 17:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398F9892BD;
	Wed,  1 May 2019 15:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C444892D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 15:34:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 08:34:51 -0700
X-ExtLoop1: 1
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga002.jf.intel.com with ESMTP; 01 May 2019 08:34:50 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 08:34:45 -0700
Message-Id: <20190501153450.30494-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190501153450.30494-1-stuart.summers@intel.com>
References: <20190501153450.30494-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Use local variable for SSEU info
 in GETPARAM ioctl
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

SW4gdGhlIEdFVFBBUkFNIGlvY3RsIGhhbmRsZXIsIHVzZSBhIGxvY2FsIHZhcmlhYmxlIHRvIGNv
bnNvbGlkYXRlCnVzYWdlIG9mIFNTRVUgcnVudGltZSBpbmZvLgoKdjI6IGFkZCBjb25zdCB0byBz
c2V1X2Rldl9pbmZvIHZhcmlhYmxlCgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMg
PHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jIHwgMTEgKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMjFkYWM1YTA5ZmJl
Li5jMzc2MjQ0YzE5YzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMzI0LDYgKzMyNCw3
IEBAIHN0YXRpYyBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZGV2KTsKIAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsK
Kwljb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3By
aXYpLT5zc2V1OwogCWRybV9pOTE1X2dldHBhcmFtX3QgKnBhcmFtID0gZGF0YTsKIAlpbnQgdmFs
dWU7CiAKQEAgLTM3NywxMiArMzc4LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQl2YWx1ZSA9IGk5MTVfY21k
X3BhcnNlcl9nZXRfdmVyc2lvbihkZXZfcHJpdik7CiAJCWJyZWFrOwogCWNhc2UgSTkxNV9QQVJB
TV9TVUJTTElDRV9UT1RBTDoKLQkJdmFsdWUgPSBzc2V1X3N1YnNsaWNlX3RvdGFsKCZSVU5USU1F
X0lORk8oZGV2X3ByaXYpLT5zc2V1KTsKKwkJdmFsdWUgPSBzc2V1X3N1YnNsaWNlX3RvdGFsKHNz
ZXUpOwogCQlpZiAoIXZhbHVlKQogCQkJcmV0dXJuIC1FTk9ERVY7CiAJCWJyZWFrOwogCWNhc2Ug
STkxNV9QQVJBTV9FVV9UT1RBTDoKLQkJdmFsdWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5z
c2V1LmV1X3RvdGFsOworCQl2YWx1ZSA9IHNzZXUtPmV1X3RvdGFsOwogCQlpZiAoIXZhbHVlKQog
CQkJcmV0dXJuIC1FTk9ERVY7CiAJCWJyZWFrOwpAQCAtMzk5LDcgKzQwMCw3IEBAIHN0YXRpYyBp
bnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRh
LAogCQl2YWx1ZSA9IEhBU19QT09MRURfRVUoZGV2X3ByaXYpOwogCQlicmVhazsKIAljYXNlIEk5
MTVfUEFSQU1fTUlOX0VVX0lOX1BPT0w6Ci0JCXZhbHVlID0gUlVOVElNRV9JTkZPKGRldl9wcml2
KS0+c3NldS5taW5fZXVfaW5fcG9vbDsKKwkJdmFsdWUgPSBzc2V1LT5taW5fZXVfaW5fcG9vbDsK
IAkJYnJlYWs7CiAJY2FzZSBJOTE1X1BBUkFNX0hVQ19TVEFUVVM6CiAJCXZhbHVlID0gaW50ZWxf
aHVjX2NoZWNrX3N0YXR1cygmZGV2X3ByaXYtPmh1Yyk7CkBAIC00NDksMTIgKzQ1MCwxMiBAQCBz
dGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9p
ZCAqZGF0YSwKIAkJdmFsdWUgPSBpbnRlbF9lbmdpbmVzX2hhc19jb250ZXh0X2lzb2xhdGlvbihk
ZXZfcHJpdik7CiAJCWJyZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9TTElDRV9NQVNLOgotCQl2YWx1
ZSA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNzZXUuc2xpY2VfbWFzazsKKwkJdmFsdWUgPSBz
c2V1LT5zbGljZV9tYXNrOwogCQlpZiAoIXZhbHVlKQogCQkJcmV0dXJuIC1FTk9ERVY7CiAJCWJy
ZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9TVUJTTElDRV9NQVNLOgotCQl2YWx1ZSA9IFJVTlRJTUVf
SU5GTyhkZXZfcHJpdiktPnNzZXUuc3Vic2xpY2VfbWFza1swXTsKKwkJdmFsdWUgPSBzc2V1LT5z
dWJzbGljZV9tYXNrWzBdOwogCQlpZiAoIXZhbHVlKQogCQkJcmV0dXJuIC1FTk9ERVY7CiAJCWJy
ZWFrOwotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
