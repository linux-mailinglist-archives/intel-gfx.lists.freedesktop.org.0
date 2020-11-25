Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F05D2C3E07
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:40:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D534D6E8E2;
	Wed, 25 Nov 2020 10:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2F16E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:12 +0100
Message-Id: <20201125104011.606641-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 04/63] drm/i915: Add missing -EDEADLK
 handling to execbuf pinning, v2.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aTkxNV92bWFfcGluIG1heSBmYWlsIHdpdGggLUVERUFETEsgd2hlbiB3ZSBzdGFydCBsb2NraW5n
IHBhZ2UgdGFibGVzLApzbyBlbnN1cmUgd2UgaGFuZGxlIHRoaXMgY29ycmVjdGx5LgoKQ2hhbmdl
cyBzaW5jZSB2MToKLSBEcm9wIC1FREVBRExLIHRvZG8sIHRoaXMgY29tbWl0IGhhbmRsZXMgaXQu
Ci0gQ2hhbmdlIGViX3Bpbl92bWEgZnJvbSBzb3J0LW9mLWJvb2wgKyAtRURFQURMSyB0byBhIHBy
b3BlciBpbnQuIChNYXR0KQoKQ2M6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyAgICB8IDM1ICsrKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyNCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCBhMTk5MzM2NzkyZmIuLjYy
YjY2NGRkNDUzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCkBAIC00MTksMTMgKzQxOSwxNCBAQCBzdGF0aWMgdTY0IGViX3Bpbl9mbGFncyhj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnksCiAJcmV0dXJuIHBp
bl9mbGFnczsKIH0KIAotc3RhdGljIGlubGluZSBib29sCitzdGF0aWMgaW5saW5lIGludAogZWJf
cGluX3ZtYShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkgICBjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnksCiAJICAgc3RydWN0IGViX3ZtYSAqZXYpCiB7
CiAJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwogCXU2NCBwaW5fZmxhZ3M7CisJaW50
IGVycjsKIAogCWlmICh2bWEtPm5vZGUuc2l6ZSkKIAkJcGluX2ZsYWdzID0gdm1hLT5ub2RlLnN0
YXJ0OwpAQCAtNDM3LDI0ICs0MzgsMjkgQEAgZWJfcGluX3ZtYShzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwKIAkJcGluX2ZsYWdzIHw9IFBJTl9HTE9CQUw7CiAKIAkvKiBBdHRlbXB0IHRvIHJl
dXNlIHRoZSBjdXJyZW50IGxvY2F0aW9uIGlmIGF2YWlsYWJsZSAqLwotCS8qIFRPRE86IEFkZCAt
RURFQURMSyBoYW5kbGluZyBoZXJlICovCi0JaWYgKHVubGlrZWx5KGk5MTVfdm1hX3Bpbl93dyh2
bWEsICZlYi0+d3csIDAsIDAsIHBpbl9mbGFncykpKSB7CisJZXJyID0gaTkxNV92bWFfcGluX3d3
KHZtYSwgJmViLT53dywgMCwgMCwgcGluX2ZsYWdzKTsKKwlpZiAoZXJyID09IC1FREVBRExLKQor
CQlyZXR1cm4gZXJyOworCisJaWYgKHVubGlrZWx5KGVycikpIHsKIAkJaWYgKGVudHJ5LT5mbGFn
cyAmIEVYRUNfT0JKRUNUX1BJTk5FRCkKLQkJCXJldHVybiBmYWxzZTsKKwkJCXJldHVybiBlcnI7
CiAKIAkJLyogRmFpbGluZyB0aGF0IHBpY2sgYW55IF9mcmVlXyBzcGFjZSBpZiBzdWl0YWJsZSAq
LwotCQlpZiAodW5saWtlbHkoaTkxNV92bWFfcGluX3d3KHZtYSwgJmViLT53dywKKwkJZXJyID0g
aTkxNV92bWFfcGluX3d3KHZtYSwgJmViLT53dywKIAkJCQkJICAgICBlbnRyeS0+cGFkX3RvX3Np
emUsCiAJCQkJCSAgICAgZW50cnktPmFsaWdubWVudCwKIAkJCQkJICAgICBlYl9waW5fZmxhZ3Mo
ZW50cnksIGV2LT5mbGFncykgfAotCQkJCQkgICAgIFBJTl9VU0VSIHwgUElOX05PRVZJQ1QpKSkK
LQkJCXJldHVybiBmYWxzZTsKKwkJCQkJICAgICBQSU5fVVNFUiB8IFBJTl9OT0VWSUNUKTsKKwkJ
aWYgKHVubGlrZWx5KGVycikpCisJCQlyZXR1cm4gZXJyOwogCX0KIAogCWlmICh1bmxpa2VseShl
di0+ZmxhZ3MgJiBFWEVDX09CSkVDVF9ORUVEU19GRU5DRSkpIHsKLQkJaWYgKHVubGlrZWx5KGk5
MTVfdm1hX3Bpbl9mZW5jZSh2bWEpKSkgeworCQllcnIgPSBpOTE1X3ZtYV9waW5fZmVuY2Uodm1h
KTsKKwkJaWYgKHVubGlrZWx5KGVycikpIHsKIAkJCWk5MTVfdm1hX3VucGluKHZtYSk7Ci0JCQly
ZXR1cm4gZmFsc2U7CisJCQlyZXR1cm4gZXJyOwogCQl9CiAKIAkJaWYgKHZtYS0+ZmVuY2UpCkBA
IC00NjIsNyArNDY4LDEwIEBAIGViX3Bpbl92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIs
CiAJfQogCiAJZXYtPmZsYWdzIHw9IF9fRVhFQ19PQkpFQ1RfSEFTX1BJTjsKLQlyZXR1cm4gIWVi
X3ZtYV9taXNwbGFjZWQoZW50cnksIHZtYSwgZXYtPmZsYWdzKTsKKwlpZiAoZWJfdm1hX21pc3Bs
YWNlZChlbnRyeSwgdm1hLCBldi0+ZmxhZ3MpKQorCQlyZXR1cm4gLUVCQURTTFQ7CisKKwlyZXR1
cm4gMDsKIH0KIAogc3RhdGljIGlubGluZSB2b2lkCkBAIC05MDAsNyArOTA5LDExIEBAIHN0YXRp
YyBpbnQgZWJfdmFsaWRhdGVfdm1hcyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAkJaWYg
KGVycikKIAkJCXJldHVybiBlcnI7CiAKLQkJaWYgKGViX3Bpbl92bWEoZWIsIGVudHJ5LCBldikp
IHsKKwkJZXJyID0gZWJfcGluX3ZtYShlYiwgZW50cnksIGV2KTsKKwkJaWYgKGVyciA9PSAtRURF
QURMSykKKwkJCXJldHVybiBlcnI7CisKKwkJaWYgKCFlcnIpIHsKIAkJCWlmIChlbnRyeS0+b2Zm
c2V0ICE9IHZtYS0+bm9kZS5zdGFydCkgewogCQkJCWVudHJ5LT5vZmZzZXQgPSB2bWEtPm5vZGUu
c3RhcnQgfCBVUERBVEU7CiAJCQkJZWItPmFyZ3MtPmZsYWdzIHw9IF9fRVhFQ19IQVNfUkVMT0M7
Ci0tIAoyLjI5LjIuMjIyLmc1ZDJhOTJkMTBmOAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
