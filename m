Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5FD832761
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800F910E9BC;
	Fri, 19 Jan 2024 10:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD6510E9AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659055; x=1737195055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6RGmfab5eC6oQdEaKpzwlf5TsuVYVryN2OOxQhJac8c=;
 b=kOQTelKGRO8TP/DV1k9gGmc0VGEJUZe7ak+mfcM9fEFSTSXhhXryVjCk
 OpbALbFmMLL3LONJQZhd/CXIfxFMToQmfNjMPGbgfxnqq17ZV3h4FzTT7
 AGbRF0bpG9PmO09FQ0g+Uo/t2qc81gXa0DJwU/JhVZ+vVqoSUT6BscZGp
 u8BgJkBLIurHhO4cds88pHewaK5sWwKuHRifObIA4tUAP/9CvHqI/cLM3
 tHaVKtl2JwtgO99VZ+/iJk0dA+U2IbV+WTIF5kFEDbB7xUzavV03y055r
 oFRGZaP72fyj3wSYFtrfKNvjtKOW/gvY4oYA1hJB+nobEW/g6UbwhHH6q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070732"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070732"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563204"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Date: Fri, 19 Jan 2024 12:10:07 +0200
Message-Id: <20240119101024.1060812-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Intel_psr_enabled is now misleading name as we are using main link on with
panel replay. I.e. link retraining is not controlled by hardware. Rename
intel_psr_enabled as intel_psr_hw_controls_link_retrain.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab415f41924d..e7cda3162ea2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4951,7 +4951,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	 * Also when exiting PSR, HW will retrain the link anyways fixing
 	 * any link status error.
 	 */
-	if (intel_psr_enabled(intel_dp))
+	if (intel_psr_hw_controls_link_retrain(intel_dp))
 		return false;
 
 	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d11f8ea6e0a9..7b3290f4e0b4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3011,7 +3011,7 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
-bool intel_psr_enabled(struct intel_dp *intel_dp)
+bool intel_psr_hw_controls_link_retrain(struct intel_dp *intel_dp)
 {
 	bool ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index cde781df84d5..f7c5cc07864f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -45,7 +45,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
 void intel_psr_short_pulse(struct intel_dp *intel_dp);
 void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state);
-bool intel_psr_enabled(struct intel_dp *intel_dp);
+bool intel_psr_hw_controls_link_retrain(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

