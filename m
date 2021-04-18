Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5219A3632D0
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Apr 2021 02:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0CE6E059;
	Sun, 18 Apr 2021 00:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6016E06D
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Apr 2021 00:19:10 +0000 (UTC)
IronPort-SDR: t8BpMybdw7EcWvitNPxfRb9zAJSXH4egt0dSNNlDUMUSK4QDmnbuMoRV3bwhWlTiW2JqARcnf+
 +JQBIrFNdAgg==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="182687384"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="182687384"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:09 -0700
IronPort-SDR: TUq3VGZSEHSlHrNdfUg2rfIXvWkZoFh8Hi3oJ+VUfLEeGDbEhe8osNvxqmTViMSOBUbEg3wFsd
 Lxk1jXH722MA==
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="426049793"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.36.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Apr 2021 17:21:25 -0700
Message-Id: <20210418002126.87882-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
References: <20210418002126.87882-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display: Drop dead code from
 hsw_read_infoframe()
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

SFNXX1RWSURFT19ESVBfQ1RMIGlzIHJlYWQgYnV0IG5vdCB1c2VkLgoKU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDQ3YThmMGExYzVlMi4uZGU3MzI4Njg1ZDQwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtNTQyLDExICs1
NDIsOSBAQCB2b2lkIGhzd19yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVu
Y29kZXItPmJhc2UuZGV2KTsKIAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsKLQl1MzIgdmFsLCAqZGF0YSA9IGZyYW1lOworCXUzMiAq
ZGF0YSA9IGZyYW1lOwogCWludCBpOwogCi0JdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwg
SFNXX1RWSURFT19ESVBfQ1RMKGNwdV90cmFuc2NvZGVyKSk7Ci0KIAlmb3IgKGkgPSAwOyBpIDwg
bGVuOyBpICs9IDQpCiAJCSpkYXRhKysgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAogCQkJCSAg
ICAgICAgaHN3X2RpcF9kYXRhX3JlZyhkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHR5cGUsIGkg
Pj4gMikpOwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
