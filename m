Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4515C57DC9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E9A6E828;
	Thu, 27 Jun 2019 08:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83A86E828
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:03:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="152959478"
Received: from lswidere-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.121])
 by orsmga007.jf.intel.com with ESMTP; 27 Jun 2019 01:03:42 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 11:03:37 +0300
Message-Id: <20190627080339.9178-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: timeline semaphore support
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

SGksCgpUaGlzIHJldmlzaW9uIGdldHMgcmlkIG9mIHRoZSBzeW5jaHJvbm91cyB3YWl0LiBXZSBu
b3cgaW1wbGVtZW50IHRoZQpzeW5jaHJvbm91cyB3YWl0IGFzIHBhcnQgb2YgdGhlIHVzZXJzcGFj
ZSBkcml2ZXIuIEEgdGhyZWFkIGlzIHNwYXduZWQKZm9yIGVhY2ggZW5naW5lIGFuZCB3YWl0cyBm
b3IgYXZhaWxhYmlsaXR5IG9mIHRoZSBzeW5jb2JqcyBiZWZvcmUKY2FsbGluZyBpbnRvIGV4ZWNi
dWZmZXIuCgpDaGVlcnMsCgpMaW9uZWwgTGFuZHdlcmxpbiAoMik6CiAgZHJtL2k5MTU6IGludHJv
ZHVjZSBhIG1lY2hhbmlzbSB0byBleHRlbmQgZXhlY2J1ZjIKICBkcm0vaTkxNTogYWRkIHN5bmNv
YmogdGltZWxpbmUgc3VwcG9ydAoKIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYyAgICB8IDMxMCArKysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICAgMiArCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggICAgICAgICAgICAgICAgICAgfCAgNjIgKysrLQogMyBmaWxlcyBjaGFuZ2VkLCAzMTQg
aW5zZXJ0aW9ucygrKSwgNjAgZGVsZXRpb25zKC0pCgotLQoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5
ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
