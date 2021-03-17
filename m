Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC8333EF5B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 12:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151DF89FAC;
	Wed, 17 Mar 2021 11:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B2F89E9E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 11:17:56 +0000 (UTC)
IronPort-SDR: yzXChfqM5+yw5XXObVvWzvtGB8468TtrUd1plr6ahEAVQTkt4MgExU0PMcsYg4RaZSGhq/rsP1
 DEDGl9ub/SgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="177037075"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="177037075"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 04:17:56 -0700
IronPort-SDR: eVXaBJQz41jrzkayTd3g6wPynZwtbcyK6wur8lJabpyD0ebgYCZbn47NSTa73EcFlKE3nG8Rty
 rGJE2+gYiNCA==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="412606375"
Received: from pompl-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.252.34.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 04:17:55 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 12:17:44 +0100
Message-Id: <20210317111744.97872-2-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210317111744.97872-1-zbigniew.kempczynski@intel.com>
References: <20210317111744.97872-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/gem: Drop relocation support on
 all new hardware
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

RW5zdXJlIHdlIGRvbid0IHBhc3MgYW55IHJlbG9jYXRpb24gZGF0YSBpbiBleGVjYnVmIGZvciBh
bnkKbmV3IGhhcmR3YXJlLgoKUGF0Y2ggbGlrZWx5IGlzIG5vdCBvcHRpbWFsIGJ1dCBpcyBkb2lu
ZyBoYXJkIGN1dCBiZWZvcmUKZW50ZXJpbmcgZXhlY2J1Zi4KCnYyOiBmaXhpbmcgdmVyc2lvbiAo
PCAxMiBpbnN0ZWFkIG9mIGluY2lkZW50YWxseSB0ZXN0ZWQgPCA5KQoKU2lnbmVkLW9mZi1ieTog
WmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+CkNj
OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkNjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyAgICB8IDIyICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAyMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggZmUxNzAxODZkZDQyLi43ZDQyZWM1YjhlYjUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMzM5
NCw2ICszMzk0LDIyIEBAIHN0YXRpYyBib29sIGNoZWNrX2J1ZmZlcl9jb3VudChzaXplX3QgY291
bnQpCiAJcmV0dXJuICEoY291bnQgPCAxIHx8IGNvdW50ID4gSU5UX01BWCB8fCBjb3VudCA+IFNJ
WkVfTUFYIC8gc3ogLSAxKTsKIH0KIAorc3RhdGljIGJvb2wgY2hlY2tfb2JqZWN0c19jb3JyZWN0
bmVzcyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCQkgICAgICBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqb2JqcywKKwkJCQkgICAgICB1aW50
MzJfdCBidWZmZXJfY291bnQpCit7CisJdWludDMyX3QgaTsKKworCWlmIChJTlRFTF9HRU4oaTkx
NSkgPCAxMiB8fCBJU19USUdFUkxBS0UoaTkxNSkpCisJCXJldHVybiB0cnVlOworCisJZm9yIChp
ID0gMDsgaSA8IGJ1ZmZlcl9jb3VudDsgaSsrKQorCQlpZiAob2Jqc1tpXS5yZWxvY2F0aW9uX2Nv
dW50KQorCQkJcmV0dXJuIGZhbHNlOworCisJcmV0dXJuIHRydWU7Cit9CisKIC8qCiAgKiBMZWdh
Y3kgZXhlY2J1ZmZlciBqdXN0IGNyZWF0ZXMgYW4gZXhlYzIgbGlzdCBmcm9tIHRoZSBvcmlnaW5h
bCBleGVjIG9iamVjdAogICogbGlzdCBhcnJheSBhbmQgcGFzc2VzIGl0IHRvIHRoZSByZWFsIGZ1
bmN0aW9uLgpAQCAtMzUyOSw2ICszNTQ1LDEyIEBAIGk5MTVfZ2VtX2V4ZWNidWZmZXIyX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCXJldHVybiAtRUZBVUxUOwog
CX0KIAorCWlmICghY2hlY2tfb2JqZWN0c19jb3JyZWN0bmVzcyhpOTE1LCBleGVjMl9saXN0LCBj
b3VudCkpIHsKKwkJZHJtX2RiZygmaTkxNS0+ZHJtLCAiUmVsb2NhdGlvbnMgYXJlIG5vdCBzdXBw
b3J0ZWRcbiIpOworCQlrdmZyZWUoZXhlYzJfbGlzdCk7CisJCXJldHVybiAtRUlOVkFMOworCX0K
KwogCWVyciA9IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoZGV2LCBmaWxlLCBhcmdzLCBleGVjMl9s
aXN0KTsKIAogCS8qCi0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
