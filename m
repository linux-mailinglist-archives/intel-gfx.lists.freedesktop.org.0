Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1531BEDC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 22:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6D689235;
	Mon, 13 May 2019 20:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 578FC89235
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 20:56:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 13:56:44 -0700
X-ExtLoop1: 1
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by fmsmga007.fm.intel.com with ESMTP; 13 May 2019 13:56:44 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2019 13:56:39 -0700
Message-Id: <20190513205643.16488-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190513205643.16488-1-stuart.summers@intel.com>
References: <20190513205643.16488-1-stuart.summers@intel.com>
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
IDJjN2E0MzE4ZDEzYy4uZjE2YjUzNTY1NWFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAg
LTMyOSw2ICszMjksNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZfcHJp
di0+ZHJtLnBkZXY7CisJY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElN
RV9JTkZPKGRldl9wcml2KS0+c3NldTsKIAlkcm1faTkxNV9nZXRwYXJhbV90ICpwYXJhbSA9IGRh
dGE7CiAJaW50IHZhbHVlOwogCkBAIC0zODIsMTIgKzM4MywxMiBAQCBzdGF0aWMgaW50IGk5MTVf
Z2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJdmFs
dWUgPSBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24oZGV2X3ByaXYpOwogCQlicmVhazsKIAlj
YXNlIEk5MTVfUEFSQU1fU1VCU0xJQ0VfVE9UQUw6Ci0JCXZhbHVlID0gc3NldV9zdWJzbGljZV90
b3RhbCgmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldSk7CisJCXZhbHVlID0gc3NldV9zdWJz
bGljZV90b3RhbChzc2V1KTsKIAkJaWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5PREVWOwogCQli
cmVhazsKIAljYXNlIEk5MTVfUEFSQU1fRVVfVE9UQUw6Ci0JCXZhbHVlID0gUlVOVElNRV9JTkZP
KGRldl9wcml2KS0+c3NldS5ldV90b3RhbDsKKwkJdmFsdWUgPSBzc2V1LT5ldV90b3RhbDsKIAkJ
aWYgKCF2YWx1ZSkKIAkJCXJldHVybiAtRU5PREVWOwogCQlicmVhazsKQEAgLTQwNCw3ICs0MDUs
NyBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKIAkJdmFsdWUgPSBIQVNfUE9PTEVEX0VVKGRldl9wcml2KTsKIAkJYnJl
YWs7CiAJY2FzZSBJOTE1X1BBUkFNX01JTl9FVV9JTl9QT09MOgotCQl2YWx1ZSA9IFJVTlRJTUVf
SU5GTyhkZXZfcHJpdiktPnNzZXUubWluX2V1X2luX3Bvb2w7CisJCXZhbHVlID0gc3NldS0+bWlu
X2V1X2luX3Bvb2w7CiAJCWJyZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9IVUNfU1RBVFVTOgogCQl2
YWx1ZSA9IGludGVsX2h1Y19jaGVja19zdGF0dXMoJmRldl9wcml2LT5odWMpOwpAQCAtNDU0LDEy
ICs0NTUsMTIgQEAgc3RhdGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2
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
