Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 930F6305BF6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA1C6E5C6;
	Wed, 27 Jan 2021 12:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49426E5C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:48:23 +0000 (UTC)
IronPort-SDR: DsjgoG605fBRAVyeQGJehnIvJxLXzpYR808zITqJ5RyZmcJ2Gfkfo0i97hPlpfdwDVlnhjcfEp
 hn38Oti5RrVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244138318"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="244138318"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:48:23 -0800
IronPort-SDR: 6pmeN+fmlo1CvJ82kBo7Te+mxRDWyzJM5LuzjRYLXzUKT7WGKizUqiDX6TZ34vh2JEGSqRzBqj
 m517ui2TgaxQ==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388293699"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:48:22 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:48:09 +0000
Message-Id: <20210127124809.384080-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127124809.384080-1-matthew.auld@intel.com>
References: <20210127124809.384080-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 8/8] drm/i915: allocate cmd ring in lmem
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

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClByZWZlciBh
bGxvY2F0aW5nIHRoZSBjbWQgcmluZyBmcm9tIExNRU0gb24gZGdmeC4KClNpZ25lZC1vZmYtYnk6
IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmcuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jCmlu
ZGV4IDI5Yzg3YjNjMjNiYy4uYWVlMGE3N2M3N2UwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZy5jCkBAIC0zLDYgKzMsNyBAQAogICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29y
cG9yYXRpb24KICAqLwogCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2xtZW0uaCIKICNpbmNsdWRl
ICJnZW0vaTkxNV9nZW1fb2JqZWN0LmgiCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgpAQCAtMTA4
LDggKzEwOSw4IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9yaW5nX3ZtYShzdHJ1
Y3QgaTkxNV9nZ3R0ICpnZ3R0LCBpbnQgc2l6ZSkKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCi0Jb2JqID0gRVJSX1BUUigtRU5PREVW
KTsKLQlpZiAoaTkxNV9nZ3R0X2hhc19hcGVydHVyZShnZ3R0KSkKKwlvYmogPSBpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX2xtZW0oaTkxNSwgc2l6ZSwgSTkxNV9CT19BTExPQ19WT0xBVElMRSk7CisJ
aWYgKElTX0VSUihvYmopICYmIGk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoZ2d0dCkpCiAJCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUpOwogCWlmIChJU19FUlIo
b2JqKSkKIAkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXpl
KTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
