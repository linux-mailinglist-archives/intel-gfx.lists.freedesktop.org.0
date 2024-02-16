Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83752857D76
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 14:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EED10EB5C;
	Fri, 16 Feb 2024 13:15:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OY5++l2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0BA10E904
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 13:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708089300; x=1739625300;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0mNEiG09rOvqohMM/wKrWcfMiB7f6Xi7ipFgIo9qHwg=;
 b=OY5++l2YYjl/fPf3FhQFWw7dckQfStrYhxCeP98YP/35xsVlycu3CgsJ
 fIOqZMB6iYrZzXGWf8213uM0ETpQ0li2bFb+qDf4zlAC+T7GEEG54gmZg
 kGUYg0lIDlpRrIwBkmSgVjNKQ+GuKpFAlr1NaqIDr2oziE5UIoXaiVhk4
 K7mnFb294WTXPcQOIf313F2T4IKszt6ZDeUX8iU4ebpDCKr5M8lXYf4/Q
 WW4Igz2Grb4gSxCBa6+nhkIFS6H0KF6Q3QxCEaA/+c5du4JaHvgwnAmay
 7KHHB+b3wxYugkX040QC0WUuYUekK/1mMF0bGEaEpSFJeI/fb/CDrysrh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="5993494"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="5993494"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 05:15:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="8438721"
Received: from lapeders-mobl1.ger.corp.intel.com (HELO fedora..)
 ([10.249.254.121])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 05:14:59 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/ttm: Allow continued swapout after -ENOSPC falure
Date: Fri, 16 Feb 2024 14:14:46 +0100
Message-ID: <20240216131446.101961-5-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240216131446.101961-1-thomas.hellstrom@linux.intel.com>
References: <20240216131446.101961-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The -ENOSPC failure from ttm_bo_swapout() meant that the lru_lock
was dropped and simply restarting the iteration meant we'd likely
hit the same error again on the same resource. Now that we can
restart the iteration even if the lock was dropped, do that.

Cc: Christian König <christian.koenig@amd.com>
Cc: <dri-devel@lists.freedesktop.org>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/ttm/ttm_device.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index e8a6a1dab669..4a030b4bc848 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -168,15 +168,20 @@ int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
 
 			num_pages = PFN_UP(bo->base.size);
 			ret = ttm_bo_swapout(bo, ctx, gfp_flags);
-			/* ttm_bo_swapout has dropped the lru_lock */
-			if (!ret) {
-				ttm_resource_cursor_fini(&cursor);
-				return num_pages;
-			}
-			if (ret != -EBUSY) {
-				ttm_resource_cursor_fini(&cursor);
-				return ret;
+			/* Couldn't swap out, and retained the lru_lock */
+			if (ret == -EBUSY)
+				continue;
+			/* Couldn't swap out and dropped the lru_lock */
+			if (ret == -ENOSPC) {
+				spin_lock(&bdev->lru_lock);
+				continue;
 			}
+			/*
+			 * Dropped the lock and either succeeded or
+			 * hit an error that forces us to break.
+			 */
+			ttm_resource_cursor_fini(&cursor);
+			return ret ? ret : num_pages;
 		}
 	}
 	ttm_resource_cursor_fini_locked(&cursor);
-- 
2.43.0

