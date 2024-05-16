Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3158C7338
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA06910EC3B;
	Thu, 16 May 2024 08:50:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O2yvnrGv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6450910EC36
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849434; x=1747385434;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bq/D7BbdjAuJ8EKsdKwWCL+pTY7yR5cj4lX5DKdp6UI=;
 b=O2yvnrGvwb7FFuRcPpZgXFETdLhmyd714ivhGnx2rKM/+jlHEpBHnOVQ
 TDlOnQSLkCFCZ5tURwqCZyqFpawpUucJLCl4r4v6Cno4OzUdicdZrx1L1
 wL4cJLz7e9s0/lf1L81Lqdj+46OyCLVrdFF3RsFSluUY9AAUdeoncDd/n
 JW1UnIFLX1e3n42WJCW6dKhM33cw/kr7Dy4btGjT0ErXn3VLjew5f0cPd
 braTubDSezru1AwkDAmgwWVXFvvL2b9BMHrWo/FS8nB3eK2k4tICrQTz6
 V9CDijVWGn5QIDY9+vam+UL+5dV0UMkMw+HfWUtcKzVYcnougJXu1OpVq g==;
X-CSE-ConnectionGUID: QwXz7LPRTPaeihQi1QDfJQ==
X-CSE-MsgGUID: SV8XKG/VRze+jnS5bcnW8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756105"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756105"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:34 -0700
X-CSE-ConnectionGUID: 6ap8hSfMQt2AxB9IIihOlQ==
X-CSE-MsgGUID: nAgVIW3mQPa2XfrpkMni+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398242"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 16/17] drm/i915/psr: Add new debug bit to disable Panel Replay
Date: Thu, 16 May 2024 11:49:56 +0300
Message-Id: <20240516084957.1557028-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

Currently there is no way to disable Panel Replay without disabling
PSR. Add new debug bit to be used with i915_edp_psr_debug debugfs
interface.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 6 ++++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6fbfe8a18f45..f8863510e722 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1687,6 +1687,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
 #define I915_PSR_DEBUG_IRQ			0x10
 #define I915_PSR_DEBUG_SU_REGION_ET_DISABLE	0x20
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 647e5cd70cc8..6a66e738aeb3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1752,7 +1752,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
+	if (CAN_PANEL_REPLAY(intel_dp) &&
+	    !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
 		crtc_state->has_panel_replay = true;
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
@@ -3063,7 +3064,8 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 	u32 old_mode;
 	int ret;
 
-	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_MODE_MASK) ||
+	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_PANEL_REPLAY_DISABLE |
+		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
 		return -EINVAL;
-- 
2.34.1

