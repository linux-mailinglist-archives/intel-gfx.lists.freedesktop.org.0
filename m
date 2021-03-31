Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B1934524F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 23:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6357B6E817;
	Mon, 22 Mar 2021 22:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46E6B6E7EF;
 Mon, 22 Mar 2021 22:13:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FA81A73C7;
 Mon, 22 Mar 2021 22:13:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 22 Mar 2021 22:13:34 -0000
Message-ID: <161645121423.19230.9961707799138302622@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210320044245.3920043-1-matthew.d.roper@intel.com>
In-Reply-To: <20210320044245.3920043-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Disassociate_display_version_from_INTEL=5FGEN=28=29_=28rev3?=
 =?utf-8?q?=29?=
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

Series: Disassociate display version from INTEL_GEN() (rev3)
URL   : https://patchwork.freedesktop.org/series/88198/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
88dec695fe5e drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE
-:130: CHECK:CAMELCASE: Avoid CamelCase: <ILK_eDP_A_DISABLE>
#130: FILE: drivers/gpu/drm/i915/display/intel_display.c:11604:
+	if (IS_IRONLAKE(dev_priv) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))

total: 0 errors, 0 warnings, 1 checks, 216 lines checked
da1427ec09b6 drm/i915: Add DISPLAY_VER() and related macros
-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_drv.h:1245:
+#define IS_DISPLAY_RANGE(i915, from, until) \
+	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#89: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.version = (x)

total: 0 errors, 0 warnings, 2 checks, 27 lines checked
3626652248c9 drm/i915/display: Eliminate most usage of INTEL_GEN()
-:2043: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'port == PORT_E'
#2043: FILE: drivers/gpu/drm/i915/display/intel_display.c:6717:
+	if (DISPLAY_VER(dev_priv) < 9 &&
 	    (port == PORT_E) && intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) {

-:2631: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 63)
#2631: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:153:
+	if (DISPLAY_VER(dev_priv) >= 9)
 		/* no global SR status; inspect per-plane WM */;

-:4188: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED'
#4188: FILE: drivers/gpu/drm/i915/display/intel_psr.c:324:
+	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED)) {

total: 0 errors, 1 warnings, 2 checks, 4216 lines checked
1f487fdbb53e drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c
d1ad1ea5e307 drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c
ade0f920fa26 drm/i915/display: Simplify GLK display version tests
-:77: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#77: 
        - (IS_DISPLAY_RANGE(dev_priv, 11, E) || IS_DISPLAY_VER(dev_priv, 10))

-:385: WARNING:LONG_LINE: line length of 235 exceeds 100 columns
#385: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2419:
+	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) && ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort && !to_intel_connector(connector)->mst_port) || connector->connector_type == DRM_MODE_CONNECTOR_eDP))

-:571: WARNING:LONG_LINE: line length of 195 exceeds 100 columns
#571: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:349:
+	if ((DISPLAY_VER(i915) >= 11 || IS_CANNONLAKE(i915)) && (pipe != PIPE_A || (cpu_transcoder == TRANSCODER_EDP || cpu_transcoder == TRANSCODER_DSI_0 || cpu_transcoder == TRANSCODER_DSI_1)))

-:738: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#738: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2230:
+	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) && val & PLANE_CTL_FLIP_HORIZONTAL)

total: 0 errors, 4 warnings, 0 checks, 516 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
