Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 574B918A28F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 19:45:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9AA6E88C;
	Wed, 18 Mar 2020 18:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63A296E059;
 Wed, 18 Mar 2020 18:45:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BCDDA0088;
 Wed, 18 Mar 2020 18:45:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 18:45:53 -0000
Message-ID: <158455715334.25099.4160330828717420043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Port_sync_for_skl+_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Port sync for skl+ (rev2)
URL   : https://patchwork.freedesktop.org/series/74691/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d2cdf91643a0 drm/i915/mst: Use .compute_config_late() to compute master transcoder
2c7d28920dca drm/i915: Move TRANS_DDI_FUNC_CTL2 programming where it belongs
632673745f50 drm/i915: Drop usless master_transcoder assignments
61ac37e65386 drm/i915: Move icl_get_trans_port_sync_config() into the DDI code
ec27107db7e7 drm/i915: Use REG_FIELD_PREP() & co. for TRANS_DDI_FUNC_CTL2
-:55: WARNING:LONG_LINE: line over 100 characters
#55: FILE: drivers/gpu/drm/i915/i915_reg.h:9734:
+#define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
03e8d170af68 drm/i915: Include port sync state in the state dump
c806976a0077 drm/i915: Store cpu_transcoder_mask in device info
-:96: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#96: FILE: drivers/gpu/drm/i915/display/intel_display.h:323:
+#define for_each_cpu_transcoder(__dev_priv, __t) \
 	for ((__t) = 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
+		for_each_if (INTEL_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:96: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__t' - possible side-effects?
#96: FILE: drivers/gpu/drm/i915/display/intel_display.h:323:
+#define for_each_cpu_transcoder(__dev_priv, __t) \
 	for ((__t) = 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
+		for_each_if (INTEL_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:99: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#99: FILE: drivers/gpu/drm/i915/display/intel_display.h:325:
+		for_each_if (INTEL_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:101: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#101: FILE: drivers/gpu/drm/i915/display/intel_display.h:327:
+#define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
+	for_each_cpu_transcoder(__dev_priv, __t) \
+		for_each_if ((__mask) & BIT(__t))

-:101: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__t' - possible side-effects?
#101: FILE: drivers/gpu/drm/i915/display/intel_display.h:327:
+#define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
+	for_each_cpu_transcoder(__dev_priv, __t) \
+		for_each_if ((__mask) & BIT(__t))

-:103: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#103: FILE: drivers/gpu/drm/i915/display/intel_display.h:329:
+		for_each_if ((__mask) & BIT(__t))

-:116: WARNING:LONG_LINE: line over 100 characters
#116: FILE: drivers/gpu/drm/i915/i915_drv.h:1605:
+#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)

total: 2 errors, 3 warnings, 2 checks, 242 lines checked
6a7a32a49547 drm/i915: Implement port sync for SKL+
-:209: WARNING:LONG_LINE: line over 100 characters
#209: FILE: drivers/gpu/drm/i915/i915_reg.h:9704:
+#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 165 lines checked
66a94a458d39 drm/i915: Eliminate port sync copy pasta
04906e4ea040 drm/i915: Fix port sync code to work with >2 pipes
f6dcd889212e drm/i915: Do pipe updates after enables for everyone
50501c73ea1c drm/i915: Pass atomic state to encoder hooks
-:558: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#558: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:149:
+	void (*pre_pll_enable)(struct intel_atomic_state *,

-:558: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#558: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:149:
+	void (*pre_pll_enable)(struct intel_atomic_state *,

-:558: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#558: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:149:
+	void (*pre_pll_enable)(struct intel_atomic_state *,

-:558: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#558: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:149:
+	void (*pre_pll_enable)(struct intel_atomic_state *,

-:563: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#563: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:153:
+	void (*pre_enable)(struct intel_atomic_state *,

-:563: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#563: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:153:
+	void (*pre_enable)(struct intel_atomic_state *,

-:563: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#563: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:153:
+	void (*pre_enable)(struct intel_atomic_state *,

-:563: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#563: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:153:
+	void (*pre_enable)(struct intel_atomic_state *,

-:568: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#568: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:157:
+	void (*enable)(struct intel_atomic_state *,

-:568: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#568: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:157:
+	void (*enable)(struct intel_atomic_state *,

-:568: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#568: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:157:
+	void (*enable)(struct intel_atomic_state *,

-:568: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#568: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:157:
+	void (*enable)(struct intel_atomic_state *,

-:576: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#576: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:164:
+	void (*disable)(struct intel_atomic_state *,

-:576: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#576: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:164:
+	void (*disable)(struct intel_atomic_state *,

-:576: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#576: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:164:
+	void (*disable)(struct intel_atomic_state *,

-:576: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#576: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:164:
+	void (*disable)(struct intel_atomic_state *,

-:581: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#581: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:168:
+	void (*post_disable)(struct intel_atomic_state *,

-:581: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#581: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:168:
+	void (*post_disable)(struct intel_atomic_state *,

-:581: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#581: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:168:
+	void (*post_disable)(struct intel_atomic_state *,

-:581: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#581: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:168:
+	void (*post_disable)(struct intel_atomic_state *,

-:586: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#586: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:172:
+	void (*post_pll_disable)(struct intel_atomic_state *,

-:586: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#586: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:172:
+	void (*post_pll_disable)(struct intel_atomic_state *,

-:586: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#586: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:172:
+	void (*post_pll_disable)(struct intel_atomic_state *,

-:586: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#586: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:172:
+	void (*post_pll_disable)(struct intel_atomic_state *,

-:591: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_atomic_state *' should also have an identifier name
#591: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:176:
+	void (*update_pipe)(struct intel_atomic_state *,

-:591: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_encoder *' should also have an identifier name
#591: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:176:
+	void (*update_pipe)(struct intel_atomic_state *,

-:591: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_crtc_state *' should also have an identifier name
#591: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:176:
+	void (*update_pipe)(struct intel_atomic_state *,

-:591: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_connector_state *' should also have an identifier name
#591: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:176:
+	void (*update_pipe)(struct intel_atomic_state *,

total: 0 errors, 28 warnings, 0 checks, 1136 lines checked
02e6871f0ae3 drm/i915: Move the port sync DP_TP_CTL stuff to the encoder hook

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
