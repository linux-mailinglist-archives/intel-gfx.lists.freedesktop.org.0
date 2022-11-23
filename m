Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AF6636C36
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1372E10E63F;
	Wed, 23 Nov 2022 21:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9AAF10E63E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238324; x=1700774324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RWsM+XolrK1YmEFciSP0sxxm3I/iRuX+2ADKfmmEpaY=;
 b=MYeP9wMi6ITMea5/EWjgrESZAkKUmIszyJ4ivmpy8w56MY0QJkPMVo5F
 TSuTUswtfsKD8CCCZVZit7ZKo2BfSwpDJmDiJUC0GlkEbHcMZ/gPKeL2l
 DwYf//OgFnWtDCEj35MlKnwFadJmnYsSQtcuwWPU1soJat4O9qfJJ7ndw
 AR5m+QletteK11Q8i5rn7aUzfBB0Ln9tDzowWKkc3Mc4XN0+bDjNMwevP
 JrUFEt7S7nbTs+r3iREVyaQQB9mQ3TzKVcePaS5KVsSWkBCFyEMWQldJB
 JcJwUzJQUIBNaBlqLj3uRcqYNOraRi22bJglPVIV1l1+spCdPwVwfwnXw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400453625"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400453625"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="641985166"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="641985166"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:16 +0200
Message-Id: <745043d6282bdc8a1a06dadf5e27fe04d7ec728f.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915/crt: drop a bunch of unnecessary
 register variables
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

