Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A0B500630
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 08:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEDF10FF05;
	Thu, 14 Apr 2022 06:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 99C3510FEFC;
 Thu, 14 Apr 2022 06:36:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 972D9A363D;
 Thu, 14 Apr 2022 06:36:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jigar Bhatt" <jigar.bhatt@intel.com>
Date: Thu, 14 Apr 2022 06:36:08 -0000
Message-ID: <164991816861.1348.2552982764023744942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414060729.1973394-1-jigar.bhatt@intel.com>
In-Reply-To: <20220414060729.1973394-1-jigar.bhatt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Communicate_display_configuration_to_pc?=
 =?utf-8?q?ode?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: Communicate display configuration to pcode
URL   : https://patchwork.freedesktop.org/series/102678/
State : warning

== Summary ==

Error: dim checkpatch failed
a4a6dfddbdd5 drm/i915/display: Communicate display configuration to pcode
-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2074:
+static void intel_display_to_pcode(struct drm_i915_private *dev_priv,
+					unsigned int cdclk, u8 voltage_level,

-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2088:
+			drm_err(&dev_priv->drm,
+					"Failed to inform PCU about display config (err %d)\n",

-:107: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'new_cdclk_state->active_pipes ==
 				old_cdclk_state->active_pipes'
#107: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2177:
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				&new_cdclk_state->actual) &&
+				(new_cdclk_state->active_pipes ==
+				old_cdclk_state->active_pipes))

-:108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#108: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2178:
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				&new_cdclk_state->actual) &&

-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2184:
+		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
+					new_cdclk_state->actual.voltage_level,

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2190:
+		intel_display_to_pcode(dev_priv, old_cdclk_state->actual.cdclk,
+					old_cdclk_state->actual.voltage_level,

-:126: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#126: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2196:
+		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
+					new_cdclk_state->actual.voltage_level,

-:131: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#131: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2201:
+	intel_display_to_pcode(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
+				new_cdclk_state->actual.voltage_level,

-:145: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#145: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2215:
+		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
+					new_cdclk_state->actual.voltage_level,

-:198: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'cdclk' may be better as '(cdclk)' to avoid precedence issues
#198: FILE: drivers/gpu/drm/i915/i915_reg.h:6721:
+#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
+		((1 << 31) | (num_pipes << 28) | \
+		(cdclk << 16) | (1 << 27) | voltage_level)

-:198: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'num_pipes' may be better as '(num_pipes)' to avoid precedence issues
#198: FILE: drivers/gpu/drm/i915/i915_reg.h:6721:
+#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
+		((1 << 31) | (num_pipes << 28) | \
+		(cdclk << 16) | (1 << 27) | voltage_level)

-:198: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'voltage_level' may be better as '(voltage_level)' to avoid precedence issues
#198: FILE: drivers/gpu/drm/i915/i915_reg.h:6721:
+#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
+		((1 << 31) | (num_pipes << 28) | \
+		(cdclk << 16) | (1 << 27) | voltage_level)

total: 0 errors, 0 warnings, 12 checks, 165 lines checked


