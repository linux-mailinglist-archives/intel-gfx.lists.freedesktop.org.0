Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADF12F6DD5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 23:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBB389FCC;
	Thu, 14 Jan 2021 22:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAA5C89FCC;
 Thu, 14 Jan 2021 22:13:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CED4A7DFB;
 Thu, 14 Jan 2021 22:13:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 14 Jan 2021 22:13:55 -0000
Message-ID: <161066243561.19646.3099107455097966407@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Shuffle_DP_code_around?=
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

Series: drm/i915: Shuffle DP code around
URL   : https://patchwork.freedesktop.org/series/85878/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c22a0db410f drm/i915: Fix the training pattern debug print
e5f62898fdee drm/i915: Remove dead TPS3->TPS2 fallback code
77a30579d793 drm/i915: Remove dead signal level debugs
2d486f60d7dd drm/i915: Relocate intel_dp_program_link_training_pattern()
88f2b4fea349 drm/i915: Split intel_ddi_encoder_reset() from intel_dp_encoder_reset()
90067b76465c drm/i915: Fix the PHY compliance test vs. hotplug mishap
303d614cbb64 drm/i915: Introduce g4x_dp.c
-:29: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#29: 
new file mode 100644

-:225: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#225: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:192:
+}
+#define assert_dp_port_disabled(d) assert_dp_port((d), false)

-:235: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#235: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:202:
+}
+#define assert_edp_pll_enabled(d) assert_edp_pll((d), true)

-:260: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#260: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:227:
+	udelay(500);

-:275: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#275: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:242:
+	udelay(200);

-:294: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#294: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:261:
+	udelay(200);

-:538: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#538: FILE: drivers/gpu/drm/i915/display/g4x_dp.c:505:
+	 * ensure that we have vdd while we switch off the panel. */

-:2899: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#2899: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2961:
+								   DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);

-:2931: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2931: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2983:
+		drm_dbg_kms(&i915->drm,
+			   "Failed to set protocol converter RGB->YCbCr conversion mode to %s\n",

total: 0 errors, 3 warnings, 6 checks, 3261 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
