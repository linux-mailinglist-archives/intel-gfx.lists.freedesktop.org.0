Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7177391654
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECC526ECB5;
	Wed, 26 May 2021 11:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE906ECAC;
 Wed, 26 May 2021 11:33:38 +0000 (UTC)
IronPort-SDR: CzIdZn684NXx8TC/DoKrwhZ/xDLYIV00cwBbieS6Ik8UVSnurB5YFz9EsFT7+SBQj8+CsHOoeF
 mS80hR4dwwvQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627319"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627319"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:38 -0700
IronPort-SDR: 0jvgJSOmzMYltXKHV0oshgCSdl7o3DmD/EUD0NM/fzastpOgsiBbz9V7oWzlRJUGpAtPi1yNbG
 PMGaxzqT5+Og==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457967"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:37 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:57 +0200
Message-Id: <20210526113259.1661914-14-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13/15] drm/i915: Disable mmap ioctl for gen12+
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

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KClRoZSBwYWx0Zm9ybSBzaG91bGQgZXhjbHVzaXZlbHkgdXNlIG1tYXBfb2Zmc2V0LCBvbmUg
bGVzcyBwYXRoIHRvIHdvcnJ5CmFib3V0IGZvciBkaXNjcmV0ZS4KClNpZ25lZC1vZmYtYnk6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDcgKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jCmluZGV4IGY2ZmU1Y2IwMTQzOC4uZmQxYzk3MTRmOGQ4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTU2LDEwICs1Niwx
NyBAQCBpbnQKIGk5MTVfZ2VtX21tYXBfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9p
ZCAqZGF0YSwKIAkJICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIHsKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21t
YXAgKmFyZ3MgPSBkYXRhOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJdW5z
aWduZWQgbG9uZyBhZGRyOwogCisJLyogbW1hcCBpb2N0bCBpcyBkaXNhbGxvd2VkIGZvciBhbGwg
cGxhdGZvcm1zIGFmdGVyIFRHTC1MUC4gIFRoaXMgYWxzbworCSAqIGNvdmVycyBhbGwgcGxhdGZv
cm1zIHdpdGggbG9jYWwgbWVtb3J5LgorCSAqLworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIg
JiYgIUlTX1RJR0VSTEFLRShpOTE1KSkKKwkJcmV0dXJuIC1FT1BOT1RTVVBQOworCiAJaWYgKGFy
Z3MtPmZsYWdzICYgfihJOTE1X01NQVBfV0MpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotLSAKMi4z
MS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
