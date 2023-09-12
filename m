Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DECF79D960
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 21:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A265E10E084;
	Tue, 12 Sep 2023 19:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCA8E10E084;
 Tue, 12 Sep 2023 19:13:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9A16AADD7;
 Tue, 12 Sep 2023 19:13:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 12 Sep 2023 19:13:49 -0000
Message-ID: <169454602972.31797.523850679228680483@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1694514689.git.jani.nikula@intel.com>
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_prepare_for_xe_driver_display_integration?=
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

Series: drm/i915: prepare for xe driver display integration
URL   : https://patchwork.freedesktop.org/series/123595/
State : warning

== Summary ==

Error: dim checkpatch failed
f4942d5a5a1e drm/i915: define I915 during i915 driver build
b938b39e0624 drm/i915/display: add I915 conditional build to intel_lvds.h
-:30: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#30: FILE: drivers/gpu/drm/i915/display/intel_lvds.h:28:
+}
+static inline void intel_lvds_init(struct drm_i915_private *dev_priv)

-:33: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#33: FILE: drivers/gpu/drm/i915/display/intel_lvds.h:31:
+}
+static inline struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *dev_priv)

-:37: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#37: FILE: drivers/gpu/drm/i915/display/intel_lvds.h:35:
+}
+static inline bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)

total: 0 errors, 0 warnings, 3 checks, 29 lines checked
a69f63e53be3 drm/i915/display: add I915 conditional build to hsw_ips.h
-:31: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#31: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:32:
+}
+static inline bool hsw_ips_pre_update(struct intel_atomic_state *state,

-:36: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#36: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:37:
+}
+static inline void hsw_ips_post_update(struct intel_atomic_state *state,

-:40: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#40: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:41:
+}
+static inline bool hsw_crtc_supports_ips(struct intel_crtc *crtc)

-:44: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#44: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:45:
+}
+static inline bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)

-:48: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#48: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:49:
+}
+static inline int hsw_ips_compute_config(struct intel_atomic_state *state,

-:53: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#53: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:54:
+}
+static inline void hsw_ips_get_config(struct intel_crtc_state *crtc_state)

-:56: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#56: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:57:
+}
+static inline void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc)

total: 0 errors, 0 warnings, 7 checks, 46 lines checked
2e9a86422513 drm/i915/display: add I915 conditional build to i9xx_plane.h
-:33: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#33: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:36:
+}
+static inline int i9xx_check_plane_surface(struct intel_plane_state *plane_state)

-:37: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#37: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:40:
+}
+static inline struct intel_plane *

-:42: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#42: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:45:
+}
+static inline void i9xx_get_initial_plane_config(struct intel_crtc *crtc,

total: 0 errors, 0 warnings, 3 checks, 33 lines checked
4fc83ec3987d drm/i915/display: add I915 conditional build to intel_lpe_audio.h
-:31: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#31: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.h:27:
+}
+static inline void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)

-:34: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#34: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.h:30:
+}
+static inline void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)

-:37: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#37: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.h:33:
+}
+static inline void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,

total: 0 errors, 0 warnings, 3 checks, 29 lines checked
7682469d640d drm/i915/display: add I915 conditional build to intel_pch_refclk.h
-:31: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#31: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:26:
+}
+static inline void lpt_disable_iclkip(struct drm_i915_private *dev_priv)

-:34: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#34: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:29:
+}
+static inline int lpt_get_iclkip(struct drm_i915_private *dev_priv)

-:38: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#38: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:33:
+}
+static inline int lpt_iclkip(const struct intel_crtc_state *crtc_state)

-:42: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#42: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:37:
+}
+static inline void intel_init_pch_refclk(struct drm_i915_private *dev_priv)

-:45: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#45: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:40:
+}
+static inline void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)

total: 0 errors, 0 warnings, 5 checks, 34 lines checked
64120f26f107 drm/i915/display: add I915 conditional build to intel_pch_display.h
-:33: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#33: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:51:
+}
+static inline int intel_crtc_pch_transcoder(struct intel_crtc *crtc)

-:37: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#37: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:55:
+}
+static inline void ilk_pch_pre_enable(struct intel_atomic_state *state,

-:41: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#41: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:59:
+}
+static inline void ilk_pch_enable(struct intel_atomic_state *state,

-:45: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#45: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:63:
+}
+static inline void ilk_pch_disable(struct intel_atomic_state *state,

-:49: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#49: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:67:
+}
+static inline void ilk_pch_post_disable(struct intel_atomic_state *state,

-:53: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#53: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:71:
+}
+static inline void ilk_pch_get_config(struct intel_crtc_state *crtc_state)

-:56: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#56: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:74:
+}
+static inline void lpt_pch_enable(struct intel_atomic_state *state,

-:60: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#60: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:78:
+}
+static inline void lpt_pch_disable(struct intel_atomic_state *state,

-:64: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#64: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:82:
+}
+static inline void lpt_pch_get_config(struct intel_crtc_state *crtc_state)

-:67: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#67: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:85:
+}
+static inline void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,

-:71: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#71: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:89:
+}
+static inline void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,

-:75: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#75: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:93:
+}
+static inline void intel_pch_sanitize(struct drm_i915_private *i915)

total: 0 errors, 0 warnings, 12 checks, 64 lines checked
ef9a2c8cbd58 drm/i915/display: add I915 conditional build to intel_sprite.h
932758835aca drm/i915/display: add I915 conditional build to intel_overlay.h
-:31: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#31: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:33:
+}
+static inline void intel_overlay_cleanup(struct drm_i915_private *dev_priv)

-:34: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#34: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:36:
+}
+static inline int intel_overlay_switch_off(struct intel_overlay *overlay)

-:38: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#38: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:40:
+}
+static inline int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,

-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:41:
+static inline int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
+				  struct drm_file *file_priv)

-:43: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#43: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:45:
+}
+static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,

-:48: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#48: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:50:
+}
+static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)

-:51: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#51: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:53:
+}
+static inline struct intel_overlay_error_state *

-:56: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#56: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:58:
+}
+static inline void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,

total: 0 errors, 0 warnings, 8 checks, 46 lines checked
36381483b96f drm/i915/display: add I915 conditional build to g4x_dp.h
-:31: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#31: FILE: drivers/gpu/drm/i915/display/g4x_dp.h:35:
+}
+static inline int vlv_active_pipe(struct intel_dp *intel_dp)

-:35: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#35: FILE: drivers/gpu/drm/i915/display/g4x_dp.h:39:
+}
+static inline void g4x_dp_set_clock(struct intel_encoder *encoder,

-:39: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#39: FILE: drivers/gpu/drm/i915/display/g4x_dp.h:43:
+}
+static inline bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,

-:45: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#45: FILE: drivers/gpu/drm/i915/display/g4x_dp.h:49:
+}
+static inline bool g4x_dp_init(struct drm_i915_private *dev_priv,

total: 0 errors, 0 warnings, 4 checks, 37 lines checked
5f3e7c3412a1 drm/i915/display: add I915 conditional build to intel_dpio_phy.h
-:32: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:79:
+}
+static inline void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,

-:36: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#36: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:83:
+}
+static inline void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)

-:39: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#39: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:86:
+}
+static inline void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)

-:42: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#42: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:89:
+}
+static inline bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,

-:47: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#47: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:94:
+}
+static inline bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,

-:52: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#52: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:99:
+}
+static inline u8 bxt_ddi_phy_calc_lane_lat_optim_mask(u8 lane_count)

-:56: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#56: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:103:
+}
+static inline void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,

-:60: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#60: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:107:
+}
+static inline u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)

-:64: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#64: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:111:
+}
+static inline enum dpio_channel vlv_dig_port_to_channel(struct intel_digital_port *dig_port)

-:68: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#68: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:115:
+}
+static inline enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port)

-:72: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#72: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:119:
+}
+static inline enum dpio_channel vlv_pipe_to_channel(enum pipe pipe)

-:76: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#76: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:123:
+}
+static inline void chv_set_phy_signal_level(struct intel_encoder *encoder,

-:82: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#82: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:129:
+}
+static inline void chv_data_lane_soft_reset(struct intel_encoder *encoder,

-:87: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#87: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:134:
+}
+static inline void chv_phy_pre_pll_enable(struct intel_encoder *encoder,

-:91: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#91: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:138:
+}
+static inline void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,

-:95: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#95: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:142:
+}
+static inline void chv_phy_release_cl2_override(struct intel_encoder *encoder)

-:98: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#98: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:145:
+}
+static inline void chv_phy_post_pll_disable(struct intel_encoder *encoder,

-:109: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#109: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:156:
+}
+static inline void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,

-:113: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#113: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:160:
+}
+static inline void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,

-:117: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#117: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:164:
+}
+static inline void vlv_phy_reset_lanes(struct intel_encoder *encoder,

total: 0 errors, 0 warnings, 20 checks, 107 lines checked
cc3672160057 drm/i915/display: add I915 conditional build to intel_crt.h
-:29: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#29: FILE: drivers/gpu/drm/i915/display/intel_crt.h:26:
+}
+static inline void intel_crt_init(struct drm_i915_private *dev_priv)

-:32: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_crt.h:29:
+}
+static inline void intel_crt_reset(struct drm_encoder *encoder)

total: 0 errors, 0 warnings, 2 checks, 23 lines checked
01cfb3f97e2e drm/i915/display: add I915 conditional build to vlv_dsi.h
-:26: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#26: FILE: drivers/gpu/drm/i915/display/vlv_dsi.h:23:
+}
+static inline enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)

-:30: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#30: FILE: drivers/gpu/drm/i915/display/vlv_dsi.h:27:
+}
+static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)

total: 0 errors, 0 warnings, 2 checks, 21 lines checked
32958b459b1f drm/i915/display: add I915 conditional build to i9xx_wm.h
-:28: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#28: FILE: drivers/gpu/drm/i915/display/i9xx_wm.h:25:
+}
+static inline void ilk_wm_sanitize(struct drm_i915_private *i915)

-:31: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#31: FILE: drivers/gpu/drm/i915/display/i9xx_wm.h:28:
+}
+static inline bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable)

-:35: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#35: FILE: drivers/gpu/drm/i915/display/i9xx_wm.h:32:
+}
+static inline void i9xx_wm_init(struct drm_i915_private *i915)

total: 0 errors, 0 warnings, 3 checks, 26 lines checked
28f5fd631911 drm/i915/display: add I915 conditional build to g4x_hdmi.h
-:28: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#28: FILE: drivers/gpu/drm/i915/display/g4x_hdmi.h:28:
+}
+static inline int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
0e6bc53de51f drm/i915/display: add I915 conditional build to intel_dvo.h
9f1b9f41ce43 drm/i915/display: add I915 conditional build to intel_sdvo.h
-:29: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#29: FILE: drivers/gpu/drm/i915/display/intel_sdvo.h:28:
+}
+static inline bool intel_sdvo_init(struct drm_i915_private *dev_priv,

total: 0 errors, 0 warnings, 1 checks, 22 lines checked
f5116722d649 drm/i915/display: add I915 conditional build to intel_tv.h
b1d4bd296c0f drm/i915/display: add I915 conditional build to vlv_dsi_pll.h
-:25: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#25: FILE: drivers/gpu/drm/i915/display/vlv_dsi_pll.h:42:
+}
+static inline void assert_dsi_pll_disabled(struct drm_i915_private *i915)

total: 0 errors, 0 warnings, 1 checks, 16 lines checked


