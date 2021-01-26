Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0155D30394E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6207389991;
	Tue, 26 Jan 2021 09:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B3188C07
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:43 +0000 (UTC)
IronPort-SDR: 3XboU6ujETIK6ULrAI08XLe3j9KcACpYDxlIH6GoQq5lGarkdHxaS+bpVLiKLTIAXvic6SvWKE
 B4iUVqV30uzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651572"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651572"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:43 -0800
IronPort-SDR: shvIdFv23loXVhpN0vXmKUwkpedimm2Wjay094lEb4Ye5KFyPk9YK+1AL+8uKmvTTXRpyqKrJB
 4s+t5XBgDW3g==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766449"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:42 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:10 +0000
Message-Id: <20210126094612.163290-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: allocate context from LMEM
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

UHJlZmVyIGFsbG9jYXRpbmcgdGhlIGNvbnRleHQgZnJvbSBMTUVNIG9uIGRnZnguCgpCYXNlZCBv
biBhIHBhdGNoIGZyb20gTWljaGVsIFRoaWVycnkuCgp2MjogZmxhdHRlbiB0aGUgY2hhaW4KClNp
Z25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDYgKysrKystCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwppbmRleCAzM2I1MjlkY2IwNWYuLjg1MDhiOGQ3MDFjMSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTMsNiArMyw4IEBACiAgKiBDb3B5cmlnaHQgwqkgMjAx
NCBJbnRlbCBDb3Jwb3JhdGlvbgogICovCiAKKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fbG1lbS5o
IgorCiAjaW5jbHVkZSAiZ2VuOF9lbmdpbmVfY3MuaCIKICNpbmNsdWRlICJpOTE1X2Rydi5oIgog
I2luY2x1ZGUgImk5MTVfcGVyZi5oIgpAQCAtODA4LDcgKzgxMCw5IEBAIF9fbHJjX2FsbG9jX3N0
YXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogCQljb250ZXh0X3NpemUgKz0gUEFHRV9TSVpFOwogCX0KIAotCW9iaiA9IGk5MTVfZ2Vt
X29iamVjdF9jcmVhdGVfc2htZW0oZW5naW5lLT5pOTE1LCBjb250ZXh0X3NpemUpOworCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShlbmdpbmUtPmk5MTUsIGNvbnRleHRfc2l6ZSwg
MCk7CisJaWYgKElTX0VSUihvYmopKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3No
bWVtKGVuZ2luZS0+aTkxNSwgY29udGV4dF9zaXplKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCXJl
dHVybiBFUlJfQ0FTVChvYmopOwogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
