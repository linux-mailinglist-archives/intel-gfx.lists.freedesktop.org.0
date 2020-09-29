Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AB927D9F9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 23:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A856E1E8;
	Tue, 29 Sep 2020 21:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0306E1E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 21:26:05 +0000 (UTC)
IronPort-SDR: ufiLjuFZfpaPwsJnLXoiXaNZC8Kuwo4VietpcWDSk/mvrWmD5iS4uEqlZpmHHwct04XaUGoUX2
 rCyYLWKn53og==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="162353201"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="162353201"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:26:05 -0700
IronPort-SDR: rkPHYC9zXoLWzXTUIi7T9ZV2oQIvL1+bb11PWMZecSvncZ61HUiJ+XEKMT04+VvUR6vAcMwxdo
 ilCrigj6AlSA==
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="514032283"
Received: from jaborah-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.33.153])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:26:04 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 14:29:11 -0700
Message-Id: <20200929212912.108706-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929212912.108706-1-jose.souza@intel.com>
References: <20200929212912.108706-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/vbt: Update the version and
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
ZGV4IGZhN2E5M2YxMThmNC4uMDUzYzkwYWJiODcwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTkxMCw3ICsxOTEwLDcgQEAgcGFyc2VfZ2VuZXJhbF9k
ZWZpbml0aW9ucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWV4cGVjdGVk
X3NpemUgPSAzNzsKIAl9IGVsc2UgaWYgKGJkYi0+dmVyc2lvbiA8PSAyMTUpIHsKIAkJZXhwZWN0
ZWRfc2l6ZSA9IDM4OwotCX0gZWxzZSBpZiAoYmRiLT52ZXJzaW9uIDw9IDIyOSkgeworCX0gZWxz
ZSBpZiAoYmRiLT52ZXJzaW9uIDw9IDIzNykgewogCQlleHBlY3RlZF9zaXplID0gMzk7CiAJfSBl
bHNlIHsKIAkJZXhwZWN0ZWRfc2l6ZSA9IHNpemVvZigqY2hpbGQpOwotLSAKMi4yOC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
