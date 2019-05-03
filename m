Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C5134E5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 23:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C13E89830;
	Fri,  3 May 2019 21:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4C018982F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 21:30:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 14:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="167474014"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by fmsmga004.fm.intel.com with ESMTP; 03 May 2019 14:30:20 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 14:30:16 -0700
Message-Id: <20190503213020.25628-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190503213020.25628-1-stuart.summers@intel.com>
References: <20190503213020.25628-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Use local variable for SSEU info
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
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0
dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDExICsrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4
IDVlZDg2NDc1MmM3Yi4uZGNjODcyZjljNjc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAg
LTMyOCw2ICszMjgsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZfcHJp
di0+ZHJtLnBkZXY7CisJY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElN
RV9JTkZPKGRldl9wcml2KS0+c3NldTsKIAlkcm1faTkxNV9nZXRwYXJhbV90ICpwYXJhbSA9IGRh
dGE7CiAJaW50IHZhbHVlOwogCkBAIC0zODEsMTIgKzM4MiwxMiBAQCBzdGF0aWMgaW50IGk5MTVf
Z2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJdmFs
dWUgPSBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24oZGV2X3ByaXYpOwogCQlicmVhazsKIAlj
YXNlIEk5MTVfUEFSQU1fU1VCU0xJQ0VfVE9UQUw6Ci0JCXZhbHVlID0gc3NldV9zdWJzbGljZV90
b3RhbCgmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldSk7CisJCXZhbHVlID0gc3NldV9zdWJz
bGljZV90b3RhbChzc2V1KTsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5PREVWOwogCQli
cmVhazsKIAljYXNlIEk5MTVfUEFSQU1fRVVfVE9UQUw6Ci0JCXZhbHVlID0gUlVOVElNRV9JTkZP
KGRldl9wcml2KS0+c3NldS5ldV90b3RhbDsKKwkJdmFsdWUgPSBzc2V1LT5ldV90b3RhbDsKIAkJ
aWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5PREVWOwogCQlicmVhazsKQEAgLTQwMyw3ICs0MDQs
NyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKIAkJdmFsdWUgPSBIQVNfUE9PTEVEX0VVKGRldl9wcml2KTsKIAkJYnJl
YWs7CiAJY2FzZSBJOTE1X1BBUkFNX01JTl9FVV9JTl9QT09MOgotCQl2YWx1ZSA9IFJVTlRJTUVf
SU5GTyhkZXZfcHJpdiktPnNzZXUubWluX2V1X2luX3Bvb2w7CisJCXZhbHVlID0gc3NldS0+bWlu
X2V1X2luX3Bvb2w7CiAJCWJyZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9IVUNfU1RBVFVTOgogCQl2
YWx1ZSA9IGludGVsX2h1Y19jaGVja19zdGF0dXMoJmRldl9wcml2LT5odWMpOwpAQCAtNDUzLDEy
ICs0NTQsMTIgQEAgc3RhdGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCXZhbHVlID0gaW50ZWxfZW5naW5lc19oYXNfY29udGV4
dF9pc29sYXRpb24oZGV2X3ByaXYpOwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFSQU1fU0xJQ0Vf
TUFTSzoKLQkJdmFsdWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnNsaWNlX21hc2s7
CisJCXZhbHVlID0gc3NldS0+c2xpY2VfbWFzazsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAt
RU5PREVWOwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFSQU1fU1VCU0xJQ0VfTUFTSzoKLQkJdmFs
dWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnN1YnNsaWNlX21hc2tbMF07CisJCXZh
bHVlID0gc3NldS0+c3Vic2xpY2VfbWFza1swXTsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAt
RU5PREVWOwogCQlicmVhazsKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
