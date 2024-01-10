Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2133829AF7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C19410E5D4;
	Wed, 10 Jan 2024 13:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9328910E5C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892408; x=1736428408;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DEyt5lAmkbLFxiVIaf6tdvR0+B7DF8cpjt5iO/fI6Hc=;
 b=n7f9WgGWSiPBfiwJinqO78/QF7iqOyosfMwq5GRpNyJnPuX3cbFo8PTs
 51b7zFd8405kx1++vkXMnslAVO7yU0kjL8ERWH44YCpbehV8SxKEkNziQ
 n3YJL+WQX58MHILtHesdsnb1Ffa+BMzc4/VVQVYyMliJPjsIkOlzUE9Sz
 1Q2/cUpb5Eq2CxPwEmXQlJ3BvccZiUNPVY1hzJJnSoDlx97J5MVmdiTaJ
 ja3HW2GdNW8HTvqke9f7/xyqxeKAoqnpSqtzwN77hFWz+uHY40qb65/o0
 7Y5lyc8F9yhZ6KD7x0RC2ghwB7Rajcei+sSr+fwTv0DBAwzr8l1iO5qeX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464913998"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464913998"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347017"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347017"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 01/13] drm/i915/psr: Disable panel replay for now
Date: Wed, 10 Jan 2024 15:12:52 +0200
Message-Id: <20240110131304.2470006-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

Panel replay is not completely validated yet. Let's disable it for now.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 10 +++++++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ae2e8cff9d69..6340fabd045c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1692,6 +1692,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
 #define I915_PSR_DEBUG_IRQ			0x10
 #define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index dff21a5edeb7..9705a75e063a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -214,6 +214,11 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
+{
+	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
+}
+
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1386,7 +1391,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+		crtc_state->has_panel_replay = panel_replay_global_enabled(intel_dp);
 	else
 		crtc_state->has_psr = _psr_compute_config(intel_dp, crtc_state);
 
@@ -2845,6 +2850,9 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	/* Disable early transport for now */
 	intel_dp->psr.debug |= I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
 
+	/* Disable panel replay for now */
+	intel_dp->psr.debug |= I915_PSR_DEBUG_PANEL_REPLAY_DISABLE;
+
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-- 
2.34.1

