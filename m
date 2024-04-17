Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772D28A8AC9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 20:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E4C10F323;
	Wed, 17 Apr 2024 18:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2885F10F323;
 Wed, 17 Apr 2024 18:07:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_BXT/GLK_?=
 =?utf-8?q?per-lane_vswing_and_PHY_reg_cleanup_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Apr 2024 18:07:40 -0000
Message-ID: <171337726016.1482849.7143915324324093528@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/132390/
State : warning

== Summary ==

Error: dim checkpatch failed
95fc61527473 drm/i915/dpio: Clean up bxt/glk PHY registers
e50c7e29b0ff drm/i915/dpio: Add per-lane PHY TX register definitons for bxt/glk
-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#93: FILE: drivers/gpu/drm/i915/i915_reg.h:558:
+#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 + \
+					  ((lane) & 1) * 0x80)

total: 0 errors, 0 warnings, 1 checks, 171 lines checked
bdfcb64b6c69 drm/i915/dpio: Extract bxt_dpio_phy_regs.h
-:17: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#17: 
new file mode 100644

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/display/bxt_dpio_phy_regs.h:28:
+#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 + \
+					  ((lane) & 1) * 0x80)

total: 0 errors, 1 warnings, 1 checks, 589 lines checked
6357d153d841 drm/i915/dpio: Introdude bxt_ddi_phy_rmw_grp()
811248f59d6f drm/i915/dpio: Use intel_de_rmw() for BXT DPIO latency optim setup
b31079a95220 drm/i915/dpio: s/ddi/dpio/ for bxt/glk PHY stuff
-:462: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#462: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:80:
 }
+static inline void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,

-:467: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#467: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:84:
 }
+static inline void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)

-:471: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#471: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:87:
 }
+static inline void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)

-:476: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#476: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:90:
 }
+static inline bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,

-:483: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#483: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:95:
 }
+static inline bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,

-:489: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#489: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:100:
 }
+static inline u8 bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count)

-:495: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#495: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:104:
 }
+static inline void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,

-:500: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#500: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:108:
 }
+static inline u8 bxt_dpio_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)

total: 0 errors, 0 warnings, 8 checks, 444 lines checked
2fd0c9c5ec0f drm/i915/dpio: Program bxt/glk PHY TX registers per-lane
0a53f6553a0d drm/i915: Enable per-lane DP drive settings for bxt/glk


