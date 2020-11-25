Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3282C3E09
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692C06E89B;
	Wed, 25 Nov 2020 10:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837C76E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:14 +0100
Message-Id: <20201125104011.606641-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 06/63] drm/i915: Add gem object locking to
 madvise.
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

RG9lc24ndCBuZWVkIHRoZSBmdWxsIHd3IGxvY2ssIG9ubHkgY2hlY2tpbmcgaWYgcGFnZXMgYXJl
IGJvdW5kLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4gI2lyYwotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggNTgyNzY2OTRj
ODQ4Li5iMDNlMjQ1NjQwYzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTA1MSwxMCAr
MTA1MSwxNCBAQCBpOTE1X2dlbV9tYWR2aXNlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiAJaWYgKCFvYmopCiAJCXJldHVybiAtRU5PRU5UOwogCi0JZXJyID0gbXV0
ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZvYmotPm1tLmxvY2spOworCWVyciA9IGk5MTVfZ2VtX29i
amVjdF9sb2NrX2ludGVycnVwdGlibGUob2JqLCBOVUxMKTsKIAlpZiAoZXJyKQogCQlnb3RvIG91
dDsKIAorCWVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmb2JqLT5tbS5sb2NrKTsKKwlp
ZiAoZXJyKQorCQlnb3RvIG91dF93dzsKKwogCWlmIChpOTE1X2dlbV9vYmplY3RfaGFzX3BhZ2Vz
KG9iaikgJiYKIAkgICAgaTkxNV9nZW1fb2JqZWN0X2lzX3RpbGVkKG9iaikgJiYKIAkgICAgaTkx
NS0+cXVpcmtzICYgUVVJUktfUElOX1NXSVpaTEVEX1BBR0VTKSB7CkBAIC0xMDk5LDYgKzExMDMs
OCBAQCBpOTE1X2dlbV9tYWR2aXNlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCiAJYXJncy0+cmV0YWluZWQgPSBvYmotPm1tLm1hZHYgIT0gX19JOTE1X01BRFZfUFVS
R0VEOwogCW11dGV4X3VubG9jaygmb2JqLT5tbS5sb2NrKTsKIAorb3V0X3d3OgorCWk5MTVfZ2Vt
X29iamVjdF91bmxvY2sob2JqKTsKIG91dDoKIAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CiAJ
cmV0dXJuIGVycjsKLS0gCjIuMjkuMi4yMjIuZzVkMmE5MmQxMGY4CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
