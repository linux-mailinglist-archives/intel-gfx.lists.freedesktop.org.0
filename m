Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02393A23635
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3351410E9D2;
	Thu, 30 Jan 2025 21:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DHs8lBQ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2CF10E9D2;
 Thu, 30 Jan 2025 21:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738270851; x=1769806851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T3RVDVVhqmqzK9z+/Rcfq2H+TPS1qVjh8vsTVSfmpd4=;
 b=DHs8lBQ7weeWsDphBen3vyCgIJJdiUAw1e9274lHb7eDxybHwn9VQrzM
 GL2fK/nR1fp2nt1HA96Qc4siXkSuQ2U530OsYzZkvHIUw4nauEoKIPWBD
 4OUBee4wYFwTHlQjtls/8C7zsMq7HLYfTLJa0P6T+k69hHekGydSI14Qt
 pqY/f2ABWLU/CxO8aJW9wgNeRneR+XZKTz1tdNryCfV+RfX3r4qc6/oOC
 0gmqYcytkBxMczPikADeBkG5bmr0ESW9I5PWKZinBGUmKFmiXtdUXNpFM
 RLsZfPqvCPwZah+xMP5ADrMSP1fHw/5GY9g7YKlOwOvi9shqtcR8u1o9j w==;
X-CSE-ConnectionGUID: w88cL1ypSyG9jRXjqCxJ0Q==
X-CSE-MsgGUID: oJp61w1AQVGmuFHAgnZqhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42491547"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="42491547"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:00:51 -0800
X-CSE-ConnectionGUID: OAqrTbhPTrSmlFIJGKAVqw==
X-CSE-MsgGUID: +xJ6vPUVTmq80nUp0mWwfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="110015873"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.118])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:00:48 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v6 3/7] drm/damage-helper: add const qualifier in
 drm_atomic_helper_damage_merged()
Date: Thu, 30 Jan 2025 23:00:22 +0200
Message-ID: <20250130210027.591927-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250130210027.591927-1-vinod.govindapillai@intel.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
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

Add a const qualifier for the "state" parameter as well as we could
use this helper to get the combined damage in cases of const
drm_plane_state as well. Needed mainly for xe driver big joiner cases
where we need to track the damage from immutable plane state.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/drm_damage_helper.c | 2 +-
 include/drm/drm_damage_helper.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
index afb02aae707b..44a5a36806e3 100644
--- a/drivers/gpu/drm/drm_damage_helper.c
+++ b/drivers/gpu/drm/drm_damage_helper.c
@@ -308,7 +308,7 @@ EXPORT_SYMBOL(drm_atomic_helper_damage_iter_next);
  * True if there is valid plane damage otherwise false.
  */
 bool drm_atomic_helper_damage_merged(const struct drm_plane_state *old_state,
-				     struct drm_plane_state *state,
+				     const struct drm_plane_state *state,
 				     struct drm_rect *rect)
 {
 	struct drm_atomic_helper_damage_iter iter;
diff --git a/include/drm/drm_damage_helper.h b/include/drm/drm_damage_helper.h
index effda42cce31..a58cbcd11276 100644
--- a/include/drm/drm_damage_helper.h
+++ b/include/drm/drm_damage_helper.h
@@ -78,7 +78,7 @@ bool
 drm_atomic_helper_damage_iter_next(struct drm_atomic_helper_damage_iter *iter,
 				   struct drm_rect *rect);
 bool drm_atomic_helper_damage_merged(const struct drm_plane_state *old_state,
-				     struct drm_plane_state *state,
+				     const struct drm_plane_state *state,
 				     struct drm_rect *rect);
 
 #endif
-- 
2.43.0

