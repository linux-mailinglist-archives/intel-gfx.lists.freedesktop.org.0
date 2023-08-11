Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023FC779356
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 17:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1349210E6A8;
	Fri, 11 Aug 2023 15:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4092A10E6A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 15:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691768323; x=1723304323;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a21IUUMRF8btD1SHvo3z2b2mV15i0jdE4/BK1I911V0=;
 b=M7eHsPApE1lrflsefACJKsUV6AssAXHT7VYq7JAXy1OM9OvUDIm8ZNOA
 G84beoAnELjk7Msh8UfuXUDTosgHM8x9SlwcnVc49voycC09DlOE2SZNZ
 jKeXMDUTXIcnD9JYRFJrKGCFQ+XWCqHSTM2o6SZCRlpMISVnEbQNnvHGU
 G7+4roWCRSsarWn7/LpjTGXVmv959IMlAVNsCrAVIJLfSK/SFdyeNsAT8
 SfBMkQxpjm7q6W/EnSDAC44xJ/ZrtQWxcWWQ+8lJmpyTpT8JEVidAZuIZ
 Wdoy6QxuijopG+rOXVJ0/rgz/RL/dISHJAClgQmV/EqXG079o71wm6oOL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="402673039"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="402673039"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 08:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="682581766"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="682581766"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 08:38:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Aug 2023 18:38:54 +0300
Message-Id: <20230811153854.2211050-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/skl+: Disable DC states on DSI ports
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DC*co/5/6 is not supported on DSI ports active in video mode (Bspec
4234, 49193).

On GLK for DSI command mode the "Enter/Exit Low Power Mode" sequence
would need to be programmed around each frame update (Bspec 21356) and
presumedly the same is required on BXT and SKL, even though it's not
stated for those explicitly (BXT: Bspec 13756). The driver doesn't run
these sequences, but command mode on BXT-GLK is not implemented either.

On ICL+ for DSI command mode DC*co/DSI is supported by the HW (Bspec
49195), but this is not implemented in the driver.

Based on the above disable DC states while DSI ports are active.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8419
Cc: <stable@vger.kernel.org>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5ad04cd42c158..1950dae4a7649 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -331,6 +331,7 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
 
 I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
 	SKL_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
@@ -435,6 +436,7 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_pw_2,
 
 I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
 	BXT_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_GMBUS,
 	POWER_DOMAIN_MODESET,
@@ -517,6 +519,7 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_pw_2,
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
 	GLK_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_GMBUS,
 	POWER_DOMAIN_MODESET,
@@ -684,6 +687,7 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
 
 I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
 	ICL_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
@@ -858,6 +862,7 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_pw_2,
 
 I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
 	TGL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
@@ -1056,6 +1061,7 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_pw_3,
 
 I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
 	RKL_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_MODESET,
@@ -1138,6 +1144,7 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_3,
 
 I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
 	DG1_PW_3_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
-- 
2.37.2

