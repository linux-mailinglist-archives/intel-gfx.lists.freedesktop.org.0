Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CD127DC0D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 00:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 770E96E1F7;
	Tue, 29 Sep 2020 22:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3680A6E1F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 22:31:06 +0000 (UTC)
IronPort-SDR: 8WLaGea4OmGl8P1fra/0RvWD4OXUGTZ7X4bxd8qNb6V9KokZXapF6cmgPUk5B//MmVIZzpD6MS
 TntyGlRATk2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="226452568"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="226452568"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 15:31:05 -0700
IronPort-SDR: 1IfBf+/F5VxRzzTogA1mOJVh0soTrJhZg+nTLYb8nVVjr3+H0cSjXm8/GhLUwJpOcqwVlTC7x1
 yBIMu3KrF/vg==
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="351308010"
Received: from jaborah-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.33.153])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 15:31:05 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 15:34:18 -0700
Message-Id: <20200929223419.146925-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929223419.146925-1-jose.souza@intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/vbt: Update the version and
 expected size of BDB_GENERAL_DEFINITIONS map
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyB3aWxsIHJlbW92ZSB0aGUgIkV4cGVjdGVkIGNoaWxkIGRldmljZSBjb25maWcgc2l6ZSBm
b3IgVkJUCnZlcnNpb24gMjM1IG5vdCBrbm93biIgZGVidWcgbWVzc2FnZSBzZWVuIGluIFRHTCwg
YWx0aG91Z2ggdGhpcyBpcyBub3QKZml4aW5nIGFueXRoaW5nIGl0IGdvb2QgdG8ga2VlcCBvdXIg
VkJUIHBhcnNlciB1cGRhdGVkLgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmlu
ZGV4IDU4ZTU2NTdhNzdiYi4uNmNlMGI4NDhlMzQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTkxNSw3ICsxOTE1LDcgQEAgcGFyc2VfZ2VuZXJhbF9k
ZWZpbml0aW9ucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWV4cGVjdGVk
X3NpemUgPSAzNzsKIAl9IGVsc2UgaWYgKGJkYi0+dmVyc2lvbiA8PSAyMTUpIHsKIAkJZXhwZWN0
ZWRfc2l6ZSA9IDM4OwotCX0gZWxzZSBpZiAoYmRiLT52ZXJzaW9uIDw9IDIyOSkgeworCX0gZWxz
ZSBpZiAoYmRiLT52ZXJzaW9uIDw9IDIzNykgewogCQlleHBlY3RlZF9zaXplID0gMzk7CiAJfSBl
bHNlIHsKIAkJZXhwZWN0ZWRfc2l6ZSA9IHNpemVvZigqY2hpbGQpOwotLSAKMi4yOC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
