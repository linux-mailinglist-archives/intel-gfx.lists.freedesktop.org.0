Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C28B3BC847
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 11:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31A189D46;
	Tue,  6 Jul 2021 09:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CF189D4A;
 Tue,  6 Jul 2021 09:07:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="230810019"
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; d="scan'208";a="230810019"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 02:07:11 -0700
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; d="scan'208";a="486078866"
Received: from yunhanch-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.214.173.133])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 02:07:07 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jul 2021 10:05:59 +0100
Message-Id: <20210706090559.1589544-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210706090559.1589544-1-matthew.auld@intel.com>
References: <20210706090559.1589544-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: prefer dma_fence_might_wait in
 wait_migration
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZG1hX2ZlbmNlX21pZ2h0X3dhaXQgaXMgbW9yZSBpbnRlcmVzdGluZyBoZXJlLCBzaW5jZSBpdCBh
bHNvIHRlYWNoZXMKbG9ja2RlcCBhYm91dCB0aGUgZmVuY2UgY3JpdGljYWwgc2VjdGlvbiBhbmQg
d2FpdF9taWdyYXRpb24gZGVwZW5kZW5jeS4KClN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV93YWl0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2Fp
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwppbmRleCBmOTA5
YWFhMDlkOWMuLjE5MGUyMjFlYWY4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fd2FpdC5jCkBAIC0zMDUsNyArMzA1LDcgQEAgaTkxNV9nZW1fd2FpdF9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiBpbnQg
aTkxNV9nZW1fb2JqZWN0X3dhaXRfbWlncmF0aW9uKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCiAJCQkJICAgdW5zaWduZWQgaW50IGZsYWdzKQogewotCW1pZ2h0X3NsZWVwKCk7CisJ
ZG1hX2ZlbmNlX21pZ2h0X3dhaXQoKTsKIAkvKiBOT1AgZm9yIG5vdy4gKi8KIAlyZXR1cm4gMDsK
IH0KLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
