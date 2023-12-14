Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19A1812F59
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D30710E904;
	Thu, 14 Dec 2023 11:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B52610E2C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554534; x=1734090534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KCM9Ag3Ssf5W+xZZ8VMq5Kfpu6VfZrhJrtKkisf8jQA=;
 b=MlTJixNVWPazsnTZC0YQq0Zg1Zrj5bl6cvbFwABQ+7/yEoVwoENXdc/X
 e90MsNhsbof5qCJk7NB9GY7oP5g1AzUoJfCtPKlbIB1ffqjrCeMmL8ALi
 LfPzUsDsrO9iP2ttLFHEmAexNT5LiULTC1uO0LTrrpcpuA7mMjAnXoqKB
 /Z62RMWb0R0MDVyu5Rq17NYwCncnM9M3vvYLszgWcQeKsFcTcS9Ditqtg
 bOZXBo6Rc+7KEFFkIbmtBZOOAaB2sMCK1xO2CYLJrTgBZNX59EaGLkheo
 SjGX06loVae/PneZfE+bMXQXaPZX7YFR8bsPlGafEK1NsdcMW3g1rSb8x A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658683"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658683"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678850"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678850"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915/display: Remove intel_crtc_state->psr_vsc
Date: Thu, 14 Dec 2023 13:48:32 +0200
Message-Id: <20231214114838.1113648-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
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

There is no really need to have separate vsc for psr usage. Use
intel_crtc_state->infoframes.vsc instead.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_psr.c           | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 341d80c2b9de..a9c9b6edcc25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1220,7 +1220,6 @@ struct intel_crtc_state {
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
-	struct drm_dp_vsc_sdp psr_vsc;
 
 	/*
 	 * Frequence the dpll for the port should run at. Differs from the
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b6e2e70e1290..9d5dc3fb6f20 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1380,7 +1380,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
-				     &crtc_state->psr_vsc);
+				     &crtc_state->infoframes.vsc);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1652,7 +1652,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
-	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
+	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->infoframes.vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
-- 
2.34.1

