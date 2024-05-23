Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4D88CD2FE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1639010E522;
	Thu, 23 May 2024 13:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJvc50Wt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C9210E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469200; x=1748005200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/hgotevditnhV7XobEQNG8LzG9BX4ZzsRJcR+lwrU44=;
 b=kJvc50WtgvDcfqtlQqomUe9t+NLtvnCsHGACNDgWFfgLyNbW3NTB+ZoT
 qeg/B2RH4zkR/wKVVda0mipb2s9C9m+0vkjEwvCi14uKbWGMi6eNQOw7i
 2tcNzI1kAw2CzVA4sDOy4lH63v5C1HThii0tMOfubEYUEtOkMkIb9qbly
 G96u4jLWNHR3jR/mnuWbhQpEirOBWzgYdA7bXVOTXE7fw8g1Ro6c8J31j
 Cqqf82Xh0iUWXJF0mXpboazEf0Ll77TsycakYtzSkks0EiYyDDjQ3JyO7
 gCLWp77AHuLgZaWkx3yrI6p7UfE5SfBhSBuK/QZHf5J/hmBvq16sLl/Lk w==;
X-CSE-ConnectionGUID: l8ayJPR9Ssm2Mg7JNKZ4QQ==
X-CSE-MsgGUID: EOFelE7KQcWSVGdDFC3IEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164668"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164668"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:00 -0700
X-CSE-ConnectionGUID: z6epAkPGTOekpCS+iSlinw==
X-CSE-MsgGUID: YNXvp9hgTLqIsAKRVhSM0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731585"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 03/16] drm/i915: pass dev_priv explicitly to DSPADDR
Date: Thu, 23 May 2024 15:59:31 +0300
Message-Id: <777d4189c18c16392015dd2770f5c56d94bb88a9.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPADDR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 8 ++++----
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c       | 4 ++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    | 6 +++---
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ceb0a969357f..79280fe2662d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -502,7 +502,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
-		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
@@ -544,7 +544,7 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
 	else
-		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane), 0);
 }
 
 static void
@@ -1045,7 +1045,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
 	} else {
 		offset = 0;
-		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPADDR(dev_priv, i9xx_plane));
 	}
 	plane_config->base = base;
 
@@ -1096,7 +1096,7 @@ bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write(dev_priv, DSPSURF(i9xx_plane), base);
 	else
-		intel_de_write(dev_priv, DSPADDR(i9xx_plane), base);
+		intel_de_write(dev_priv, DSPADDR(dev_priv, i9xx_plane), base);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index d483569e4147..a68d7b228187 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -44,7 +44,7 @@
 #define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
 
 #define _DSPAADDR				0x70184 /* pre-i965 */
-#define DSPADDR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
+#define DSPADDR(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
 
 #define _DSPALINOFF				0x70184 /* i965+ */
 #define DSPLINOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 680d7fc39503..f46e01cad053 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -327,8 +327,8 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
-	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
+	intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane),
+			  intel_de_read_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane)));
 }
 
 static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 909823d7ed1b..944765fe22e7 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -166,7 +166,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x70098));
 	MMIO_D(_MMIO(0x7009c));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_A));
-	MMIO_D(DSPADDR(PIPE_A));
+	MMIO_D(DSPADDR(dev_priv, PIPE_A));
 	MMIO_D(DSPSTRIDE(PIPE_A));
 	MMIO_D(DSPPOS(PIPE_A));
 	MMIO_D(DSPSIZE(PIPE_A));
@@ -175,7 +175,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSURFLIVE(PIPE_A));
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
-	MMIO_D(DSPADDR(PIPE_B));
+	MMIO_D(DSPADDR(dev_priv, PIPE_B));
 	MMIO_D(DSPSTRIDE(PIPE_B));
 	MMIO_D(DSPPOS(PIPE_B));
 	MMIO_D(DSPSIZE(PIPE_B));
@@ -184,7 +184,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSURFLIVE(PIPE_B));
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
-	MMIO_D(DSPADDR(PIPE_C));
+	MMIO_D(DSPADDR(dev_priv, PIPE_C));
 	MMIO_D(DSPSTRIDE(PIPE_C));
 	MMIO_D(DSPPOS(PIPE_C));
 	MMIO_D(DSPSIZE(PIPE_C));
-- 
2.39.2

