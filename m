Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6316AA35D7F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:23:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78B410EC85;
	Fri, 14 Feb 2025 12:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iu20fIw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7931A10EC85;
 Fri, 14 Feb 2025 12:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535785; x=1771071785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ko14Zu4tcKSO3YTV8dZOR9s8iHSjb19FHofbZ5xWkNA=;
 b=Iu20fIw0Sd52Ck0dv8SsvOQ+rQ39A/QHQu9Uw/ro+/W5REN6f75HWAOO
 ZCyHe+Y8jy6GEg3I5h52d5eiJy6tDYflmoF3l7SH44ZHKGDCsKluKMxqR
 uCE7EK6ZOjDcwVc6K9uY0Q1aWxLXersxdA3JLz7eWQPLERVuEDRh5i7lA
 6c1ujgzlYZqpG8kgnOF6OXAsiHPGV1KXTcJWHShP5Box+uMBE5thudbBm
 wF+VIxuYxsRsShE0bevw7HZicZ9lmUPvu8KheLJ7sUZ/oJvkT6OjyTMJM
 PIvp317FLd3InGYlbeTTeJxRaaHkTSNbqFJ2mNpMvx/iNbGA7JNsOjgKx A==;
X-CSE-ConnectionGUID: lRxan1j5Rq2XmQ8muIqgnA==
X-CSE-MsgGUID: O/2/W66QQk2ANKhMydbocQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256040"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256040"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:23:04 -0800
X-CSE-ConnectionGUID: 7Q/3einSRjmjSzBkwe8ZaA==
X-CSE-MsgGUID: +nXxjzE3RWWYQIExulqWkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309620"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:23:02 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 19/19] drm/i915/display: Add fixed_rr to crtc_state dump
Date: Fri, 14 Feb 2025 17:41:29 +0530
Message-ID: <20250214121130.1808451-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

Add fixed refresh rate mode in crtc_state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c             | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 599ddce96371..f204a5830c29 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -294,8 +294,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
+	drm_printf(&p, "vrr: %s, fixed_rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(intel_vrr_is_fixed_rr(pipe_config)),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.vsync_start, pipe_config->vrr.vsync_end);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d0b18102ef2c..e0821069a9a1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -641,7 +641,6 @@ void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
 
-static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 9259964978b1..b894c27ba5c7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -38,5 +38,6 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

