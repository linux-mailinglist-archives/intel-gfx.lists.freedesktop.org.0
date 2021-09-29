Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E14141CB19
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 19:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BBB6E1ED;
	Wed, 29 Sep 2021 17:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 510236E1ED;
 Wed, 29 Sep 2021 17:34:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A16BA363C;
 Wed, 29 Sep 2021 17:34:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 17:34:25 -0000
Message-ID: <163293686520.27099.698335828379614624@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DP_per-lane_drive_settings_prep_work_=28rev4=29?=
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

Series: drm/i915: DP per-lane drive settings prep work (rev4)
URL   : https://patchwork.freedesktop.org/series/95122/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5ca7aed58062 drm/i915: s/ddi_translations/trans/
-:1809: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1809: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:73:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps.snps_pre_cursor);

-:1810: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1810: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:74:
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snps.snps_post_cursor);

total: 0 errors, 2 warnings, 0 checks, 1677 lines checked
12af5655d6e9 drm/i915: Generalize .set_signal_levels()
148ee4908c2b drm/i915: Nuke usless .set_signal_levels() wrappers
96ccc8d77127 drm/i915: De-wrapper bxt_ddi_phy_set_signal_levels()
40be81462b60 drm/i915: Hoover the level>=n_entries WARN into intel_ddi_level()
025b7bd7473d drm/i915: Nuke intel_ddi_hdmi_num_entries()
68f42730e749 drm/i915: Pass the lane to intel_ddi_level()
24cdd73489e8 drm/i915: Prepare link training for per-lane drive settings
-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'train_set' - possible side-effects?
#95: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:423:
+#define _TRAIN_SET_VSWING_ARGS(train_set) \
+	((train_set) & DP_TRAIN_VOLTAGE_SWING_MASK) >> DP_TRAIN_VOLTAGE_SWING_SHIFT, \
+	(train_set) & DP_TRAIN_MAX_SWING_REACHED ? "(max)" : ""

-:98: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#98: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:426:
+#define TRAIN_SET_VSWING_ARGS(train_set) \
+	_TRAIN_SET_VSWING_ARGS((train_set)[0]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[1]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[2]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[3])

-:98: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'train_set' - possible side-effects?
#98: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:426:
+#define TRAIN_SET_VSWING_ARGS(train_set) \
+	_TRAIN_SET_VSWING_ARGS((train_set)[0]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[1]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[2]), \
+	_TRAIN_SET_VSWING_ARGS((train_set)[3])

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'train_set' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:431:
+#define _TRAIN_SET_PREEMPH_ARGS(train_set) \
+	((train_set) & DP_TRAIN_PRE_EMPHASIS_MASK) >> DP_TRAIN_PRE_EMPHASIS_SHIFT, \
+	(train_set) & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ? "(max)" : ""

-:106: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#106: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:434:
+#define TRAIN_SET_PREEMPH_ARGS(train_set) \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[0]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[1]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[2]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[3])

-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'train_set' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:434:
+#define TRAIN_SET_PREEMPH_ARGS(train_set) \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[0]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[1]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[2]), \
+	_TRAIN_SET_PREEMPH_ARGS((train_set)[3])

total: 2 errors, 0 warnings, 4 checks, 111 lines checked
def5bc2e3c93 drm/i915: Allow per-lane drive settings with LTTPRs


