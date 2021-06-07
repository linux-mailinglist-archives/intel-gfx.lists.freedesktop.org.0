Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C739E697
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 20:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D476E9BF;
	Mon,  7 Jun 2021 18:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125236E9BA;
 Mon,  7 Jun 2021 18:24:07 +0000 (UTC)
IronPort-SDR: +MlhNWzIcapWKya2sQelK7twgDKwsV4vtNdiOUg+9OEONrQXlN9QWXuLYxGKN1nXt1Zza0ZAW9
 VfkH6Q6vLYcg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="185051960"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="185051960"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:24:06 -0700
IronPort-SDR: ZSmdPkteSJUr8Hpz/PJ7KlmsHoBJNBe8GRN2jHQPwnqlRj04KWYiP59pj3dHXm5oBH3Zbu232J
 zJ9jiIhs1W/Q==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="476295055"
Received: from iwilsonx-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.48])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:24:05 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Jun 2021 19:22:08 +0100
Message-Id: <20210607182210.99036-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210607182210.99036-1-matthew.auld@intel.com>
References: <20210607182210.99036-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/ttm: pass along the
 I915_BO_ALLOC_CONTIGUOUS
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHdlIGp1c3QgaWdub3JlIHRoZSBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMgZmxh
Zywgd2hpY2ggaXMKZmluZSBzaW5jZSBldmVyeXRoaW5nIGlzIGFscmVhZHkgY29udGlndW91cyB3
aXRoIHRoZSB0dG0gcmFuZ2UgbWFuYWdlci4KSG93ZXZlciBpbiB0aGUgbmV4dCBwYXRjaCB3ZSB3
YW50IHRvIHN3aXRjaCBvdmVyIHRvIHRoZSB0dG0gYnVkZHkKbWFuYWdlciwgd2hlcmUgYWxsb2Nh
dGlvbnMgYXJlIGJ5IGRlZmF1bHQgbm90IGNvbnRpZ3VvdXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIHwgMTUgKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fdHRtLmMKaW5kZXggNzNkNTJkZjhmMmJlLi4wYjBmY2U0NDVlOWIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAgLTg2LDEwICs4NiwxOCBAQCBp
OTE1X3R0bV9zZWxlY3RfdHRfY2FjaGluZyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQogCiBzdGF0aWMgdm9pZAogaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24oY29uc3Qg
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yLAotCQkJICAgc3RydWN0IHR0bV9wbGFjZSAq
cGxhY2UpCisJCQkgICBzdHJ1Y3QgdHRtX3BsYWNlICpwbGFjZSwKKwkJCSAgIHVuc2lnbmVkIGlu
dCBmbGFncykKIHsKIAltZW1zZXQocGxhY2UsIDAsIHNpemVvZigqcGxhY2UpKTsKIAlwbGFjZS0+
bWVtX3R5cGUgPSBpbnRlbF9yZWdpb25fdG9fdHRtX3R5cGUobXIpOworCisJc3dpdGNoKG1yLT50
eXBlKSB7CisJY2FzZSBJTlRFTF9NRU1PUllfTE9DQUw6CisJCWlmIChmbGFncyAmIEk5MTVfQk9f
QUxMT0NfQ09OVElHVU9VUykKKwkJCXBsYWNlLT5mbGFncyA9IFRUTV9QTF9GTEFHX0NPTlRJR1VP
VVM7CisJCWJyZWFrOworCX0KIH0KIAogc3RhdGljIHZvaWQKQEAgLTEwMCwxNSArMTA4LDE2IEBA
IGk5MTVfdHRtX3BsYWNlbWVudF9mcm9tX29iaihjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAogewogCXVuc2lnbmVkIGludCBpOwogCXVuc2lnbmVkIGludCBudW1fYWxsb3dl
ZCA9IG9iai0+bW0ubl9wbGFjZW1lbnRzOworCXVuc2lnbmVkIGludCBmbGFncyA9IG9iai0+Zmxh
Z3M7CiAKIAlwbGFjZW1lbnQtPm51bV9wbGFjZW1lbnQgPSAxOwogCWk5MTVfdHRtX3BsYWNlX2Zy
b21fcmVnaW9uKG51bV9hbGxvd2VkID8gb2JqLT5tbS5wbGFjZW1lbnRzWzBdIDoKLQkJCQkgICBv
YmotPm1tLnJlZ2lvbiwgcmVxdWVzdGVkKTsKKwkJCQkgICBvYmotPm1tLnJlZ2lvbiwgcmVxdWVz
dGVkLCBmbGFncyk7CiAKIAkvKiBDYWNoZSB0aGlzIG9uIG9iamVjdD8gKi8KIAlwbGFjZW1lbnQt
Pm51bV9idXN5X3BsYWNlbWVudCA9IG51bV9hbGxvd2VkOwogCWZvciAoaSA9IDA7IGkgPCBwbGFj
ZW1lbnQtPm51bV9idXN5X3BsYWNlbWVudDsgKytpKQotCQlpOTE1X3R0bV9wbGFjZV9mcm9tX3Jl
Z2lvbihvYmotPm1tLnBsYWNlbWVudHNbaV0sIGJ1c3kgKyBpKTsKKwkJaTkxNV90dG1fcGxhY2Vf
ZnJvbV9yZWdpb24ob2JqLT5tbS5wbGFjZW1lbnRzW2ldLCBidXN5ICsgaSwgZmxhZ3MpOwogCiAJ
aWYgKG51bV9hbGxvd2VkID09IDApIHsKIAkJKmJ1c3kgPSAqcmVxdWVzdGVkOwotLSAKMi4yNi4z
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
