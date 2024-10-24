Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0117E9AE9BF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 17:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD9F10E286;
	Thu, 24 Oct 2024 15:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C924610E286;
 Thu, 24 Oct 2024 15:05:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?convert_I915=5FSTATE=5FWARN=28=29_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 15:05:18 -0000
Message-ID: <172978231881.1328167.6951500774239194287@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024143035.2164165-1-jani.nikula@intel.com>
In-Reply-To: <20241024143035.2164165-1-jani.nikula@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: convert I915_STATE_WARN() to struct intel_display
URL   : https://patchwork.freedesktop.org/series/140444/
State : warning

== Summary ==

Error: dim checkpatch failed
fad43d2bb5bb drm/i915/display: convert I915_STATE_WARN() to struct intel_display
-:151: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#151: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3401:
+			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->mpllb[i] != mpll_sw_state->mpllb[i],

-:162: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3408:
+			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],

-:259: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#259: FILE: drivers/gpu/drm/i915/display/intel_display.h:594:
+#define INTEL_DISPLAY_STATE_WARN(__display, condition, format...) ({	\
 	int __ret_warn_on = !!(condition);				\
 	if (unlikely(__ret_warn_on))					\
+		if (!drm_WARN((__display)->drm, (__display)->params.verbose_state_checks, format)) \
+			drm_err((__display)->drm, format);		\
 	unlikely(__ret_warn_on);					\
 })

-:344: WARNING:LONG_LINE: line length of 154 exceeds 100 columns
#344: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1212:
+				 (intel_de_read(display, UTIL_PIN_CTL) & (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) == (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),

-:544: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#544: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4709:
+					 pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);

-:571: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#571: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:41:
+					  TRANS_DDI_FUNC_CTL(display, cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;

-:909: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#909: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:89:
+				 intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) && port_pipe == pipe,

-:918: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#918: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:94:
+				 intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) && port_pipe == pipe,

-:1028: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1028: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:2024:
+				 "[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \

total: 0 errors, 8 warnings, 1 checks, 947 lines checked


