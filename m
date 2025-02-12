Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA5EA32062
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E58510E7DF;
	Wed, 12 Feb 2025 07:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YDMiib0D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E2F10E7DC;
 Wed, 12 Feb 2025 07:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347075; x=1770883075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fb2VzKoGy5Zu6h7c81y/zHG24YywWQ3zgPH5xp4uFB4=;
 b=YDMiib0DkoSBPO7yJRZ4HictPywQh8iCm2j0nWg6OZfOp2KOKNPhgTZo
 PP/zlfH5hTZhtRj1Kt8kX9kpAVdKNfqwXAsQLQ0IBCOgKpwc7c65CFOPk
 yG0Twi0UmardBObqAruP8fdyrh5RB042zvHojUietxaEeud0m38bGNChy
 UJWh0aomVclTUNQGgjKY7XUOLADuF6+9lJ277K8FZZakeC4mG1GGUd+2N
 fiTkewVcxDtO5BnoW+Wesx/tL+/myPhw+XbqLzb3L2pVoU5AeEaQj/87H
 Pqqqu15Quo4xsslURrf3eVYPaBGooi6cibCht9hW3lsTtO/mQo6bPqFl9 w==;
X-CSE-ConnectionGUID: SJo//tIqQuGE3ql3srqiRA==
X-CSE-MsgGUID: 57ZpuR2hRKCCqHUW/V99EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973627"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973627"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:54 -0800
X-CSE-ConnectionGUID: ErqJita9TG2jYN3fk5GZKw==
X-CSE-MsgGUID: kLuNHscVS5SCt1rNVMcZtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836877"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:53 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 02/13] drm/i915/psr: Rename psr_force_hw_tracking_exit as
 intel_psr_force_update
Date: Wed, 12 Feb 2025 09:57:30 +0200
Message-ID: <20250212075742.995022-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

psr_force_hw_tracking_exit is misleading name as it is used for PSR1, PSR2
HW tracking and PSR2 selective fetch. Due to this rename it as
intel_psr_force_update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 64e03d19cad5..16d125f51ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2324,7 +2324,7 @@ static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
 
-static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
+static void intel_psr_force_update(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -2869,7 +2869,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
-			psr_force_hw_tracking_exit(intel_dp);
+			intel_psr_force_update(intel_dp);
 
 		/*
 		 * Clear possible busy bits in case we have
@@ -3266,10 +3266,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 			 * continuous full frame is disabled, only a single full
 			 * frame is required
 			 */
-			psr_force_hw_tracking_exit(intel_dp);
+			intel_psr_force_update(intel_dp);
 		}
 	} else {
-		psr_force_hw_tracking_exit(intel_dp);
+		intel_psr_force_update(intel_dp);
 
 		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
 			queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
-- 
2.43.0

