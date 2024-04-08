Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E1389CB7F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2141127F9;
	Mon,  8 Apr 2024 18:09:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nsBG/N9x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1733F11292A;
 Mon,  8 Apr 2024 18:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599772; x=1744135772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0DCzZLT3sobPAGaYtFNQ6HrbO2asFP+p8bGJwr4lkeA=;
 b=nsBG/N9xGoBWLR/2aJVDANi2VecCXe3B9Te/1KBr9sXBmyT+o7x0rvFP
 J43DYNKDM2i4dPtEMMRVydrcXAUz4T8ldxbyFaiEzVQ75WE1XVodhRvbF
 GK1nuOzeFGKLvXxHgCK/LeXZvksR8ZmxN/2dFl8nQX/Yt7hHhkb5NyYBX
 EkjELEq92AIDSyJUnntzHYcb1Rn+L4pLathqbsH62JBaU67iEbKisQK9O
 CueVjunaMym8KwbY1y9pszBnHW/U7FuGEuw7CxRGPTVhYL8ATB87IYjcf
 2xJGkgg04WH6jhtb2yqhWDTtUjZd5kpFHPBJu9EEDrccujssRgMt2wnjD w==;
X-CSE-ConnectionGUID: IVGUJ8chRC+2HNL+sx0UCg==
X-CSE-MsgGUID: VRYT+EfxTcGbVMyMTtTBEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11730243"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="11730243"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:32 -0700
X-CSE-ConnectionGUID: rBrV2cpUTiGrxGsJh8Fj7Q==
X-CSE-MsgGUID: Rnz/u5yPR4O5PM4T2pl4Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="20022179"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 8/8] drm/xe/display: remove unused xe->enabled_irq_mask
Date: Mon,  8 Apr 2024 21:08:43 +0300
Message-Id: <104f4ac786b7c7eb2ed575670568b96ffb2d2f78.1712599671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The xe->enabled_irq_mask member has never been used for anything.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 1 -
 drivers/gpu/drm/xe/xe_device_types.h    | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 6ec375c1c4b6..32a8242e1ef4 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -108,7 +108,6 @@ int xe_display_create(struct xe_device *xe)
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
 	drmm_mutex_init(&xe->drm, &xe->sb_lock);
-	xe->enabled_irq_mask = ~0;
 
 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 	if (err)
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index faa32407efa5..536cb8a44ea4 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -503,8 +503,6 @@ struct xe_device {
 	/* only to allow build, not used functionally */
 	u32 irq_mask;
 
-	u32 enabled_irq_mask;
-
 	struct intel_uncore {
 		spinlock_t lock;
 	} uncore;
-- 
2.39.2

