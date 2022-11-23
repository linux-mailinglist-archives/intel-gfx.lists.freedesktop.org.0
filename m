Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE10636C3A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E1710E644;
	Wed, 23 Nov 2022 21:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F1B10E640
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238328; x=1700774328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y37lOV9HnZBHDTxMgADS57ifTmN1sgIDOvaAxwsULmQ=;
 b=S/eopkdndQm2FIro02MmBLvFAn0G6RINBgkUkvKFnKHOumb5dQ8bg6SB
 kg+W1zTm9cLnuShS5S+w2sFZH6DQy6znXeSXTI/AC9K2PwwGJODu0iDNO
 Mr1lsx8BRpUSb4knPpMoA2t9DZEaavUir0EQFR+nqAAY9n43Dgc73zbih
 8ob/VDc52bJmDXJeLpf46yXEunopqsjbHsUluJPUnaH4nsbjWVJI42059
 joAPxml3Z0KfPhaFnEWJ6DZf70KwhD8/17b/3tY1RN38yO2YhSTo1UJCk
 Qozn+5RaMpc1601DMyYlZ+v4Emhf18LSmMVdkWjoKAPly8icpmC+f+Gbf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400453643"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400453643"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="641985197"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="641985197"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:17 +0200
Message-Id: <a829bf4e35494bf4f53e697ee80d691b5b0db8a9.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/crt: switch to intel_de_*
 register accessors in display code
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

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 42 +++++++++++-------------
 1 file changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index ed94ba5c0302..7267ffc7f539 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -682,7 +682,6 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 {
 	struct drm_device *dev = crt->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 save_bclrpat;
 	u32 save_vtotal;
 	u32 vtotal, vactive;
@@ -694,9 +693,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 
 	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
 
-	save_bclrpat = intel_uncore_read(uncore, BCLRPAT(pipe));
-	save_vtotal = intel_uncore_read(uncore, VTOTAL(pipe));
-	vblank = intel_uncore_read(uncore, VBLANK(pipe));
+	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(pipe));
+	save_vtotal = intel_de_read(dev_priv, VTOTAL(pipe));
+	vblank = intel_de_read(dev_priv, VBLANK(pipe));
 
 	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
 	vactive = (save_vtotal & 0x7ff) + 1;
@@ -705,23 +704,23 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	vblank_end = ((vblank >> 16) & 0xfff) + 1;
 
 	/* Set the border color to purple. */
-	intel_uncore_write(uncore, BCLRPAT(pipe), 0x500050);
+	intel_de_write(dev_priv, BCLRPAT(pipe), 0x500050);
 
 	if (DISPLAY_VER(dev_priv) != 2) {
-		u32 pipeconf = intel_uncore_read(uncore, PIPECONF(pipe));
-		intel_uncore_write(uncore,
-				   PIPECONF(pipe),
-				   pipeconf | PIPECONF_FORCE_BORDER);
-		intel_uncore_posting_read(uncore, PIPECONF(pipe));
+		u32 pipeconf = intel_de_read(dev_priv, PIPECONF(pipe));
+
+		intel_de_write(dev_priv, PIPECONF(pipe),
+			       pipeconf | PIPECONF_FORCE_BORDER);
+		intel_de_posting_read(dev_priv, PIPECONF(pipe));
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
-		st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
+		st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
 		status = ((st00 & (1 << 4)) != 0) ?
 			connector_status_connected :
 			connector_status_disconnected;
 
-		intel_uncore_write(uncore, PIPECONF(pipe), pipeconf);
+		intel_de_write(dev_priv, PIPECONF(pipe), pipeconf);
 	} else {
 		bool restore_vblank = false;
 		int count, detect;
@@ -735,10 +734,8 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 			u32 vsync_start = (vsync & 0xffff) + 1;
 
 			vblank_start = vsync_start;
-			intel_uncore_write(uncore,
-					   VBLANK(pipe),
-					   (vblank_start - 1) |
-					   ((vblank_end - 1) << 16));
+			intel_de_write(dev_priv, VBLANK(pipe),
+				       (vblank_start - 1) | ((vblank_end - 1) << 16));
 			restore_vblank = true;
 		}
 		/* sample in the vertical border, selecting the larger one */
@@ -750,10 +747,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		/*
 		 * Wait for the border to be displayed
 		 */
-		while (intel_uncore_read(uncore, PIPEDSL(pipe)) >= vactive)
+		while (intel_de_read(dev_priv, PIPEDSL(pipe)) >= vactive)
 			;
-		while ((dsl = intel_uncore_read(uncore, PIPEDSL(pipe))) <=
-		       vsample)
+		while ((dsl = intel_de_read(dev_priv, PIPEDSL(pipe))) <= vsample)
 			;
 		/*
 		 * Watch ST00 for an entire scanline
@@ -763,14 +759,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		do {
 			count++;
 			/* Read the ST00 VGA status register */
-			st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
+			st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
 			if (st00 & (1 << 4))
 				detect++;
-		} while ((intel_uncore_read(uncore, PIPEDSL(pipe)) == dsl));
+		} while ((intel_de_read(dev_priv, PIPEDSL(pipe)) == dsl));
 
 		/* restore vblank if necessary */
 		if (restore_vblank)
-			intel_uncore_write(uncore, VBLANK(pipe), vblank);
+			intel_de_write(dev_priv, VBLANK(pipe), vblank);
 		/*
 		 * If more than 3/4 of the scanline detected a monitor,
 		 * then it is assumed to be present. This works even on i830,
@@ -783,7 +779,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	}
 
 	/* Restore previous settings */
-	intel_uncore_write(uncore, BCLRPAT(pipe), save_bclrpat);
+	intel_de_write(dev_priv, BCLRPAT(pipe), save_bclrpat);
 
 	return status;
 }
-- 
2.34.1

