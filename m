Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ABE596E93
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51CC90EB5;
	Wed, 17 Aug 2022 12:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E9A1121F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660740326; x=1692276326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9K/lFeRtlWxOhhAh2LKpfPEUNVV2xuK7q/Sym0bCce0=;
 b=TsbFh/m4sYuSOIKoi2+uVZzXJ+5XT0zL4ydk0hfa+MaFS7EhgmogfVfS
 aGKlCHKTcwiRzkIQHDU1V5VuUuBbzcyShechrzJuj+w7QiurdqbSVy0qx
 +14lF53KSk2d3fjxhAXu6u6waFlmv0EQ4huKLHADEqh84nwFyKMqgJwN0
 ito9gb9YT4gEumWEalxD0DPoBIJ+ZO8JdBwVlt+3ep4IburEBh0Nl+f/r
 3g6jzha8yfB+uUIcZmnG/oR4S9GK22O1+u3LDy0jSlVfjNThCJXerxus6
 ph69gPUjEMKlpn2m5IbrVXJmh0tHzEjaBat5G1cSwclGvuU22eCpFHVMx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="356478280"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="356478280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:45:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="636364039"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:45:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 15:45:16 +0300
Message-Id: <20220817124516.284456-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817124516.284456-1-jani.nikula@intel.com>
References: <20220817124516.284456-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dsc/mtl: Enable alternate ICH
 method
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

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

DSC 1.2 is supported from MTL, hence program ICH accordingly.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 ++
 drivers/gpu/drm/i915/i915_reg.h           | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 43e1bbc1e303..ac4ba7ac85c6 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -597,6 +597,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_VER_MIN_SHIFT |
 		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
 		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
+	if (vdsc_cfg->dsc_version_minor == 2)
+		pps_val |= DSC_ALT_ICH_SEL;
 	if (vdsc_cfg->block_pred_enable)
 		pps_val |= DSC_BLOCK_PREDICTION;
 	if (vdsc_cfg->convert_rgb)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 50d7bfd541ad..2e3aa684cf1b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8003,6 +8003,7 @@ enum skl_power_gate {
 #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
 							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
+#define  DSC_ALT_ICH_SEL		(1 << 20)
 #define  DSC_VBR_ENABLE			(1 << 19)
 #define  DSC_422_ENABLE			(1 << 18)
 #define  DSC_COLOR_SPACE_CONVERSION	(1 << 17)
-- 
2.34.1

