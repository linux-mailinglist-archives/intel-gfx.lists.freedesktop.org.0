Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF25F18F354
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 12:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 327B789F08;
	Mon, 23 Mar 2020 11:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDAC89F08
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 11:03:04 +0000 (UTC)
IronPort-SDR: LZcbXAf7hTQvelPC89HpBVxZ+pA2bL+TcIwmtobwN48tgDTcbysgdU6Wzby/iN/BaWAjGcXHeb
 O1N9i02KVLNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 04:03:03 -0700
IronPort-SDR: XdOFv/vmeqOcRJjUs+zi0rtIgHIxhlK1aB5iXrR4r0Bt13yevlXl2Dm6nl4MNWaOkZxWoQ3BMr
 SjhKZttHs7Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="269839673"
Received: from enamer-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.251.181.156])
 by fmsmga004.fm.intel.com with ESMTP; 23 Mar 2020 04:03:02 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 11:03:01 +0000
Message-Id: <20200323110301.38806-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests/perf: watch out for stolen
 objects
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stolen memory is allocated at creation, returning -ENOSPC if we run out
space.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1424
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/selftests/intel_memory_region.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 2a1d4ba1f9f3..6e80d99048e4 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -594,8 +594,11 @@ create_region_for_mapping(struct intel_memory_region *mr, u64 size, u32 type,
 	void *addr;
 
 	obj = i915_gem_object_create_region(mr, size, 0);
-	if (IS_ERR(obj))
+	if (IS_ERR(obj)) {
+		if (PTR_ERR(obj) == -ENOSPC) /* Stolen memory */
+			return ERR_PTR(-ENODEV);
 		return obj;
+	}
 
 	addr = i915_gem_object_pin_map(obj, type);
 	if (IS_ERR(addr)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
