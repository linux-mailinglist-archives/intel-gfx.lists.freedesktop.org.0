Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6C0CAFC6E
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FB910E529;
	Tue,  9 Dec 2025 11:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KffwKVsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6E510E522;
 Tue,  9 Dec 2025 11:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279870; x=1796815870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qb5vmnsqu0ZYlOkWipPllAHZb0Qa3ij0szE7b9R8W2c=;
 b=KffwKVszbNOF/hNOQ/o59s6chv/DuLWWV7QYl+9F6y5QlW/pZJhXawE/
 UGJPpVghAfeUfALgped+qMk6UMVdRJzfjIVFTJ1hHB0+5MdjikgAZwgVo
 c3oD8rrmmaOA0sEs5LlQFFWqcskSCd9Vh47H+pNe7NO3GGXtg0e5YWzAu
 LrjdtZJX8x9chWBqs6EMYxyedJuXrrztl1JvPbS/66cw+BmEslyAk4heH
 J051M3v/PQg57EM2m/ZVHSIULJlnMO57523EF5csDdnPC5GKE499fvOOr
 Qioz9a2r0KdUUP+wpUBl2LSpXDKDuFhWN0fjRH/ebK/479bI3s9Me/nUf A==;
X-CSE-ConnectionGUID: 7QvnCjQoRLi7HEdPdB5Yjg==
X-CSE-MsgGUID: nu3EOPpLQmG6YTnHOT8D2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699685"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699685"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:10 -0800
X-CSE-ConnectionGUID: U/u297W/QFK9zFEQHcQvSQ==
X-CSE-MsgGUID: yPqBZuLfTD6Q7D2UbiV3pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213509"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:08 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 9/9] drm/i915/display: Add DC3CO disable handling for psr2
Date: Tue,  9 Dec 2025 17:03:32 +0530
Message-ID: <20251209113332.2770263-10-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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

dc6 should be enabled instead of dc3co after  6 idle frames
while in psr2.(re enable part of tgl dc3co handling)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 78 ++++++++++++++++++-
 2 files changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 27f69df7ee9c..6ff53cd58052 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1759,6 +1759,7 @@ struct intel_psr {
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
+	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
 
 	u8 io_wake_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 18bf45455ea2..4be709d1d324 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
 
+static void psr2_dc3co_disable(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &display->power.domains;
+
+	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
+	/* Todo restore PSR2 idle frames , ALPM control*/
+}
+
+static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &display->power.domains;
+
+	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	cancel_delayed_work(&intel_dp->psr.dc3co_work);
+	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
+}
+
+static void psr2_dc3co_disable_work(struct work_struct *work)
+{
+	struct intel_dp *intel_dp =
+		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
+
+	mutex_lock(&intel_dp->psr.lock);
+	/* If delayed work is pending, it is not idle */
+	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
+		goto unlock;
+	/* enable DC6 after idle frames*/
+	psr2_dc3co_disable(intel_dp);
+
+unlock:
+	mutex_unlock(&intel_dp->psr.lock);
+}
+
+/*
+ * When we will be completely rely on PSR2 S/W tracking in future,
+ * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
+ * event also therefore psr2_dc3co_flush_locked() require to be changed
+ * accordingly in future.
+ */
+
+static void
+psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
+			enum fb_op_origin origin)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &display->power.domains;
+
+	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO))
+		return;
+
+	if (!intel_dp->psr.sel_update_enabled ||
+	    !intel_dp->psr.active)
+		return;
+	/*
+	 * At every frontbuffer flush flip event modified delay of delayed work,
+	 * when delayed work schedules that means display has been idle.
+	 */
+	if (!(frontbuffer_bits &
+	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
+		return;
+
+	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
+			 intel_dp->psr.dc3co_exit_delay);
+}
+
 static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state)
 {
@@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
 	} else if (intel_dp->psr.sel_update_enabled) {
-
+		psr2_dc3co_disable_on_exit(intel_dp);
 		val = intel_de_rmw(display,
 				   EDP_PSR2_CTL(display, cpu_transcoder),
 				   EDP_PSR2_ENABLE, 0);
@@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_unlock(&intel_dp->psr.lock);
 	cancel_work_sync(&intel_dp->psr.work);
+	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
 }
 
 /**
@@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 
 	cancel_work_sync(&psr->work);
+	cancel_delayed_work_sync(&psr->dc3co_work);
 }
 
 /**
@@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display *display,
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
 		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
+			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
 
@@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
 
 	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
+	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, psr2_dc3co_disable_work);
 	mutex_init(&intel_dp->psr.lock);
 }
 
-- 
2.43.0

