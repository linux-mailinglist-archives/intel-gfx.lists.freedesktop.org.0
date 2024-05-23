Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CBB8CD304
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C0510E539;
	Thu, 23 May 2024 13:00:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncUEfxXP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5477210E64B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469227; x=1748005227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fcyXY19VOgX+TGhhERMZ+msas78RRAv592fg6OtAxFA=;
 b=ncUEfxXPlmTsVyg/kneF0DxpzJXeGYuGb6QujshIiyey9LOJpIQzznSZ
 1CK5c9kFbuEYE8b92aR2+On29rJ5Bap5W3wLiZOO11F4vcDF2QHdnDpMW
 gaDHUokDunHsd40gcYERT+807c6RajP4wA0D7uGGopbkUkEdaVDdFpRW8
 YEjY5fLe7UpmgXIyvA04JDAMTHuLLw/QsxkcSyjeD797u75vfyCOCmLiI
 swm3asN3Q6OnEE/ztw3nfru40+D9mC7uuPmZtA2iHyed1vB5nwUka3h6Y
 T0oJQbmHetXwGQaoyb5qM5CpXTSve47IJHa+/PnDXZWvQ8pg8oa907ljE w==;
X-CSE-ConnectionGUID: t0zAI1mYRiyUh8Lbowkb9A==
X-CSE-MsgGUID: J3Qq6El3SmCh8hXgJFmyTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610014"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610014"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:25 -0700
X-CSE-ConnectionGUID: Q6x0VaRrTU+o3vCbLmjNUg==
X-CSE-MsgGUID: yJZsIapXTteJ+JwTnFmPxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672301"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 09/16] drm/i915: pass dev_priv explicitly to DSPTILEOFF
Date: Thu, 23 May 2024 15:59:37 +0300
Message-Id: <4736b2d65ca3be3e9eb5a835ddac801ba99e1e6b.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DSPTILEOFF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 4 ++--
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c          | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 7adaf8cbd945..36225c2aa1c8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -487,7 +487,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		intel_de_write_fw(dev_priv, DSPLINOFF(dev_priv, i9xx_plane),
 				  linear_offset);
-		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPTILEOFF(dev_priv, i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	}
 
@@ -1038,7 +1038,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		if (plane_config->tiling)
 			offset = intel_de_read(dev_priv,
-					       DSPTILEOFF(i9xx_plane));
+					       DSPTILEOFF(dev_priv, i9xx_plane));
 		else
 			offset = intel_de_read(dev_priv,
 					       DSPLINOFF(dev_priv, i9xx_plane));
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 2771f2a7645b..baa3d348c77e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -71,7 +71,7 @@
 #define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
 
 #define _DSPATILEOFF				0x701A4 /* i965+ */
-#define DSPTILEOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
+#define DSPTILEOFF(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
 #define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
 #define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 6c3a0f160bea..0afde865a7de 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -274,7 +274,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 			_PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
 	plane->height += 1;	/* raw height is one minus the real value */
 
-	val = vgpu_vreg_t(vgpu, DSPTILEOFF(pipe));
+	val = vgpu_vreg_t(vgpu, DSPTILEOFF(dev_priv, pipe));
 	plane->x_offset = (val & _PRI_PLANE_X_OFF_MASK) >>
 		_PRI_PLANE_X_OFF_SHIFT;
 	plane->y_offset = (val & _PRI_PLANE_Y_OFF_MASK) >>
-- 
2.39.2

