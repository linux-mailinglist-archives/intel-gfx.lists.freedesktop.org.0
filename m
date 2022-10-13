Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848CB5FDFDE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 19:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5CC710E225;
	Thu, 13 Oct 2022 17:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262F410E225
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 17:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665683971; x=1697219971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=StOGRbpoaffnfQtHYv8xqMPjKxwuiAPPMumFlIUQxRQ=;
 b=d1hK+k+nZiB9fBfdk4kKj3YFCAmzfWTIHfyRjK3LaAvLDLPpNpzor6FT
 hqoutrd2U7wDlEX7/rqWPcd8f51GHhGWHFU7XYPCKTL8v8JvCNMuwEiVN
 VrSjnSZiBfG5x9/58/+shbkneijZtG/JRkClUngYE0dCgMOIKOd5KIGcM
 wN8BLGBK0viznCuD1ffehlX470o+qkyC5u2uruNbDy0HOpKF35MR3eTES
 InO8ubIN4UnEtf2fnY2jjSf5d/MO1+CLMRoPxp76K/WkPhnhtSWgtX1xH
 ss9zaO4yf9ju1lhK5MPhQ/b4sGN8Hpby8zNxhV6VrnHmNBeT19mgcVG4d Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="302773723"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="302773723"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 10:59:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="605074744"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="605074744"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 10:59:30 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 10:56:50 -0700
Message-Id: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null pointer
 exception
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
Cc: jonathan.cavitt@intel.com, matthew.auld@intel.com, andrzej.hajda@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_ttm_to_gem can return a NULL pointer, which is
dereferenced in i915_ttm_access_memory without first
checking if it is NULL.  Inspecting
i915_ttm_io_mem_reserve, it appears the correct
behavior in this case is to return -EINVAL.

Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Suggested-by: John C Harrison <John.C.Harrison@intel.com>
CC: Matthew Auld <matthew.auld@intel.com>
CC: Andrzej Hajda <andrzej.hajda@intel.com>
CC: Nirmoy Das <nirmoy.das@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index d63f30efd631..b569624f2ed9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
 				  int len, int write)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	resource_size_t iomap = obj->mm.region->iomap.base -
-		obj->mm.region->region.start;
+	resource_size_t iomap;
 	unsigned long page = offset >> PAGE_SHIFT;
 	unsigned long bytes_left = len;
 
+	if (!obj)
+		return -EINVAL;
+
+	iomap = obj->mm.region->iomap.base -
+		obj->mm.region->region.start;
+
 	/*
 	 * TODO: For now just let it fail if the resource is non-mappable,
 	 * otherwise we need to perform the memcpy from the gpu here, without
-- 
2.25.1

