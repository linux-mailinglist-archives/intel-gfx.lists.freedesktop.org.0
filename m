Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D20D102788
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 16:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7ED6E258;
	Tue, 19 Nov 2019 15:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797F56E258
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 15:01:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 07:01:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="209219052"
Received: from azahera-mobl1.amr.corp.intel.com (HELO
 mwahaha-bdw.amr.corp.intel.com) ([10.254.102.149])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 07:01:54 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 15:01:54 +0000
Message-Id: <20191119150154.18249-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: make pool objects read-only
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

Rm9yIG91ciBjdXJyZW50IHVzZXJzIHdlIGRvbid0IGV4cGVjdCBwb29sIG9iamVjdHMgdG8gYmUg
d3JpdGFibGUgZnJvbQp0aGUgZ3B1LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuYyB8
IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuYwppbmRleCAzY2RiZDVmOGI1YmUuLjM5NzE4Njgx
ODMwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bv
b2wuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jCkBA
IC0xMDQsNiArMTA0LDggQEAgbm9kZV9jcmVhdGUoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpw
b29sLCBzaXplX3Qgc3opCiAJCXJldHVybiBFUlJfQ0FTVChvYmopOwogCX0KIAorCWk5MTVfZ2Vt
X29iamVjdF9zZXRfcmVhZG9ubHkob2JqKTsKKwogCW5vZGUtPm9iaiA9IG9iajsKIAlyZXR1cm4g
bm9kZTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
