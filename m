Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47504645FE7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806DA89452;
	Wed,  7 Dec 2022 17:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2AD10E409
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433468; x=1701969468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RWsM+XolrK1YmEFciSP0sxxm3I/iRuX+2ADKfmmEpaY=;
 b=deECcvGWe6Pc8nwcv1Jnw9jNspBOKHnF8eKzHw/QyF0iP3o+y/iQjx+J
 /Fy1BL11U6ZNEfQUcJ0n8ATaw9g9gg2iaUOxIveOzkfFGvQaE6FInu0n4
 wKUTGDkL4qEG5a4KSxUK7gx36sY13bzDs8D+th/sCC3tDBkwScXvqp5wN
 SSOzIt/EdY9bNrq+5z8/OEBXuDE8z1AJyd3eRxxKNXHfFVItmDJ6O2S8N
 6gA5ftVECK81UX24V+La9WkBjP+f4LY6E/2FiPEBeeAUgO8Ejn7J6zjqr
 BPyFVp/4QwF328uyZ0jJfqx++WX0EX3eltzAKt4lGHF8Zm2rwBuTvsbRs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315663385"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315663385"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="648813916"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="648813916"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:20 +0200
Message-Id: <3493286ecd1ae166e1e15235d31115f766f7c878.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/11] drm/i915/crt: drop a bunch of
 unnecessary register variables
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's no need to save the register offsets. Drop the variables.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 39 +++++++++---------------
 1 file changed, 15 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 797ad9489f7e..ed94ba5c0302 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -689,23 +689,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	u32 vsample;
 	u32 vblank, vblank_start, vblank_end;
 	u32 dsl;
-	i915_reg_t bclrpat_reg, vtotal_reg,
-		vblank_reg, vsync_reg, pipeconf_reg, pipe_dsl_reg;
 	u8 st00;
 	enum drm_connector_status status;
 
 	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
 
-	bclrpat_reg = BCLRPAT(pipe);
-	vtotal_reg = VTOTAL(pipe);
-	vblank_reg = VBLANK(pipe);
-	vsync_reg = VSYNC(pipe);
-	pipeconf_reg = PIPECONF(pipe);
-	pipe_dsl_reg = PIPEDSL(pipe);
-
-	save_bclrpat = intel_uncore_read(uncore, bclrpat_reg);
-	save_vtotal = intel_uncore_read(uncore, vtotal_reg);
-	vblank = intel_uncore_read(uncore, vblank_reg);
+	save_bclrpat = intel_uncore_read(uncore, BCLRPAT(pipe));
+	save_vtotal = intel_uncore_read(uncore, VTOTAL(pipe));
+	vblank = intel_uncore_read(uncore, VBLANK(pipe));
 
 	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
 	vactive = (save_vtotal & 0x7ff) + 1;
@@ -714,14 +705,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	vblank_end = ((vblank >> 16) & 0xfff) + 1;
 
 	/* Set the border color to purple. */
-	intel_uncore_write(uncore, bclrpat_reg, 0x500050);
+	intel_uncore_write(uncore, BCLRPAT(pipe), 0x500050);
 
 	if (DISPLAY_VER(dev_priv) != 2) {
-		u32 pipeconf = intel_uncore_read(uncore, pipeconf_reg);
+		u32 pipeconf = intel_uncore_read(uncore, PIPECONF(pipe));
 		intel_uncore_write(uncore,
-				   pipeconf_reg,
+				   PIPECONF(pipe),
 				   pipeconf | PIPECONF_FORCE_BORDER);
-		intel_uncore_posting_read(uncore, pipeconf_reg);
+		intel_uncore_posting_read(uncore, PIPECONF(pipe));
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
@@ -730,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 			connector_status_connected :
 			connector_status_disconnected;
 
-		intel_uncore_write(uncore, pipeconf_reg, pipeconf);
+		intel_uncore_write(uncore, PIPECONF(pipe), pipeconf);
 	} else {
 		bool restore_vblank = false;
 		int count, detect;
@@ -740,12 +731,12 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		* Yes, this will flicker
 		*/
 		if (vblank_start <= vactive && vblank_end >= vtotal) {
-			u32 vsync = intel_de_read(dev_priv, vsync_reg);
+			u32 vsync = intel_de_read(dev_priv, VSYNC(pipe));
 			u32 vsync_start = (vsync & 0xffff) + 1;
 
 			vblank_start = vsync_start;
 			intel_uncore_write(uncore,
-					   vblank_reg,
+					   VBLANK(pipe),
 					   (vblank_start - 1) |
 					   ((vblank_end - 1) << 16));
 			restore_vblank = true;
@@ -759,9 +750,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		/*
 		 * Wait for the border to be displayed
 		 */
-		while (intel_uncore_read(uncore, pipe_dsl_reg) >= vactive)
+		while (intel_uncore_read(uncore, PIPEDSL(pipe)) >= vactive)
 			;
-		while ((dsl = intel_uncore_read(uncore, pipe_dsl_reg)) <=
+		while ((dsl = intel_uncore_read(uncore, PIPEDSL(pipe))) <=
 		       vsample)
 			;
 		/*
@@ -775,11 +766,11 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 			st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
 			if (st00 & (1 << 4))
 				detect++;
-		} while ((intel_uncore_read(uncore, pipe_dsl_reg) == dsl));
+		} while ((intel_uncore_read(uncore, PIPEDSL(pipe)) == dsl));
 
 		/* restore vblank if necessary */
 		if (restore_vblank)
-			intel_uncore_write(uncore, vblank_reg, vblank);
+			intel_uncore_write(uncore, VBLANK(pipe), vblank);
 		/*
 		 * If more than 3/4 of the scanline detected a monitor,
 		 * then it is assumed to be present. This works even on i830,
@@ -792,7 +783,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	}
 
 	/* Restore previous settings */
-	intel_uncore_write(uncore, bclrpat_reg, save_bclrpat);
+	intel_uncore_write(uncore, BCLRPAT(pipe), save_bclrpat);
 
 	return status;
 }
-- 
2.34.1

