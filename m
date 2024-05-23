Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC908CD30C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2837510E629;
	Thu, 23 May 2024 13:00:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ekMF6tdg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447D610E649
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469217; x=1748005217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VT2zD+BP5YNiXZXKeb+po5NltI6zzreJngolr8nZm40=;
 b=ekMF6tdgkTTRJQmzcB9GRgOmXorXNCbDdkVKITm3V43VVyYE+0+NFOl9
 Y/IUfvR0Q0Qx0zPi2ROljI2jAkwAQya2MJvtGaoIZOT8LV8D39ytDYdKj
 UAbB2MJUT1UYvvIywPa8mAlPoflKtGg+MQOg2CAP+INZ5sfBuKY9oPq1j
 ytIoN9934gjEyNvsVO5DvvBUkCd6piMgk2NrBHfRD0zV+J/OKQqKwhpUy
 iQhIvAkBcLLY9PPxLaW/L87z+hMvNASRwVcY9lD2+5TfoTr43WVhttNll
 A9zSGR8Tor+ZFo/wo389ruIYA6VkKciEg9jTwGTdhnshrntj+prZ11cKG w==;
X-CSE-ConnectionGUID: MCKBW3LcQVyQdDrfDMGXKA==
X-CSE-MsgGUID: T9ZJ05LxRxm0CezqmX5mgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164709"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164709"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:17 -0700
X-CSE-ConnectionGUID: yBgO3RAxRLql3tdl0bKttQ==
X-CSE-MsgGUID: L6sMuDGFQMOX3e+YfqHo4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731797"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 07/16] drm/i915: pass dev_priv explicitly to DSPSIZE
Date: Thu, 23 May 2024 15:59:35 +0300
Message-Id: <d24ee614cac29ccc3917f9cba1ce03ce54fb7d8b.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPSIZE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 2 +-
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index b23135ed1a38..42175cb74d5d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -439,7 +439,7 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 		 */
 		intel_de_write_fw(dev_priv, DSPPOS(dev_priv, i9xx_plane),
 				  DISP_POS_Y(crtc_y) | DISP_POS_X(crtc_x));
-		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPSIZE(dev_priv, i9xx_plane),
 				  DISP_HEIGHT(crtc_h - 1) | DISP_WIDTH(crtc_w - 1));
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 13a49550c456..5a1f45eceed4 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -60,7 +60,7 @@
 #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
 
 #define _DSPASIZE				0x70190 /* pre-g4x */
-#define DSPSIZE(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
+#define DSPSIZE(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
 #define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
 #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
 #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 00dd2b647c83..e047928c3ea0 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -169,7 +169,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPADDR(dev_priv, PIPE_A));
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_A));
 	MMIO_D(DSPPOS(dev_priv, PIPE_A));
-	MMIO_D(DSPSIZE(PIPE_A));
+	MMIO_D(DSPSIZE(dev_priv, PIPE_A));
 	MMIO_D(DSPSURF(PIPE_A));
 	MMIO_D(DSPOFFSET(PIPE_A));
 	MMIO_D(DSPSURFLIVE(PIPE_A));
@@ -178,7 +178,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPADDR(dev_priv, PIPE_B));
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_B));
 	MMIO_D(DSPPOS(dev_priv, PIPE_B));
-	MMIO_D(DSPSIZE(PIPE_B));
+	MMIO_D(DSPSIZE(dev_priv, PIPE_B));
 	MMIO_D(DSPSURF(PIPE_B));
 	MMIO_D(DSPOFFSET(PIPE_B));
 	MMIO_D(DSPSURFLIVE(PIPE_B));
@@ -187,7 +187,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPADDR(dev_priv, PIPE_C));
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_C));
 	MMIO_D(DSPPOS(dev_priv, PIPE_C));
-	MMIO_D(DSPSIZE(PIPE_C));
+	MMIO_D(DSPSIZE(dev_priv, PIPE_C));
 	MMIO_D(DSPSURF(PIPE_C));
 	MMIO_D(DSPOFFSET(PIPE_C));
 	MMIO_D(DSPSURFLIVE(PIPE_C));
-- 
2.39.2

