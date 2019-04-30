Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FF210311
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 01:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E5189242;
	Tue, 30 Apr 2019 23:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE69890BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 23:06:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="320394788"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2019 16:06:06 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 16:06:01 -0700
Message-Id: <20190430230606.8421-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190430230606.8421-1-stuart.summers@intel.com>
References: <20190430230606.8421-1-stuart.summers@intel.com>
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
bnNvbGlkYXRlCnVzYWdlIG9mIFNTRVUgcnVudGltZSBpbmZvLgoKQ2M6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDExICsrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmlu
ZGV4IGFhY2M4ZGQ2ZWNmZC4uYjZjZTc1ODBkNDE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
QEAgLTMyMSw2ICszMjEsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZf
cHJpdi0+ZHJtLnBkZXY7CisJc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElNRV9J
TkZPKGRldl9wcml2KS0+c3NldTsKIAlkcm1faTkxNV9nZXRwYXJhbV90ICpwYXJhbSA9IGRhdGE7
CiAJaW50IHZhbHVlOwogCkBAIC0zNzQsMTIgKzM3NSwxMiBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0
cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJdmFsdWUg
PSBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24oZGV2X3ByaXYpOwogCQlicmVhazsKIAljYXNl
IEk5MTVfUEFSQU1fU1VCU0xJQ0VfVE9UQUw6Ci0JCXZhbHVlID0gc3NldV9zdWJzbGljZV90b3Rh
bCgmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldSk7CisJCXZhbHVlID0gc3NldV9zdWJzbGlj
ZV90b3RhbChzc2V1KTsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5PREVWOwogCQlicmVh
azsKIAljYXNlIEk5MTVfUEFSQU1fRVVfVE9UQUw6Ci0JCXZhbHVlID0gUlVOVElNRV9JTkZPKGRl
dl9wcml2KS0+c3NldS5ldV90b3RhbDsKKwkJdmFsdWUgPSBzc2V1LT5ldV90b3RhbDsKIAkJaWYg
KCF2YWx1ZSkKIAkJCXJldHVybiAtRU5PREVWOwogCQlicmVhazsKQEAgLTM5Niw3ICszOTcsNyBA
QCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKIAkJdmFsdWUgPSBIQVNfUE9PTEVEX0VVKGRldl9wcml2KTsKIAkJYnJlYWs7
CiAJY2FzZSBJOTE1X1BBUkFNX01JTl9FVV9JTl9QT09MOgotCQl2YWx1ZSA9IFJVTlRJTUVfSU5G
TyhkZXZfcHJpdiktPnNzZXUubWluX2V1X2luX3Bvb2w7CisJCXZhbHVlID0gc3NldS0+bWluX2V1
X2luX3Bvb2w7CiAJCWJyZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9IVUNfU1RBVFVTOgogCQl2YWx1
ZSA9IGludGVsX2h1Y19jaGVja19zdGF0dXMoJmRldl9wcml2LT5odWMpOwpAQCAtNDQ2LDEyICs0
NDcsMTIgQEAgc3RhdGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEsCiAJCXZhbHVlID0gaW50ZWxfZW5naW5lc19oYXNfY29udGV4dF9p
c29sYXRpb24oZGV2X3ByaXYpOwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFSQU1fU0xJQ0VfTUFT
SzoKLQkJdmFsdWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnNsaWNlX21hc2s7CisJ
CXZhbHVlID0gc3NldS0+c2xpY2VfbWFzazsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5P
REVWOwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFSQU1fU1VCU0xJQ0VfTUFTSzoKLQkJdmFsdWUg
PSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnN1YnNsaWNlX21hc2tbMF07CisJCXZhbHVl
ID0gc3NldS0+c3Vic2xpY2VfbWFza1swXTsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5P
REVWOwogCQlicmVhazsKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
