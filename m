Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A1442EA33
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788E76ECE8;
	Fri, 15 Oct 2021 07:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C8446ECE7;
 Fri, 15 Oct 2021 07:31:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2468EA7DFB;
 Fri, 15 Oct 2021 07:31:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 07:31:10 -0000
Message-ID: <163428307014.29318.5761747054750276963@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_PCH_modeset_code_into_its_own_file?=
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

Series: drm/i915: Move PCH modeset code into its own file
URL   : https://patchwork.freedesktop.org/series/95863/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ae28f635f0fc drm/i915: Move PCH refclok stuff into its own file
-:802: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#802: 
new file mode 100644

-:1002: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1002: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:196:
+	udelay(24);

-:1069: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1069: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:263:
+	udelay(24);

-:1105: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1105: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:299:
+			udelay(32);

-:1117: ERROR:SPACING: space prohibited after that open parenthesis '('
#1117: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:311:
+	[BEND_IDX( 50)] = 0x3B23,

-:1118: ERROR:SPACING: space prohibited after that open parenthesis '('
#1118: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:312:
+	[BEND_IDX( 45)] = 0x3B23,

-:1119: ERROR:SPACING: space prohibited after that open parenthesis '('
#1119: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:313:
+	[BEND_IDX( 40)] = 0x3C23,

-:1120: ERROR:SPACING: space prohibited after that open parenthesis '('
#1120: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:314:
+	[BEND_IDX( 35)] = 0x3C23,

-:1121: ERROR:SPACING: space prohibited after that open parenthesis '('
#1121: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:315:
+	[BEND_IDX( 30)] = 0x3D23,

-:1122: ERROR:SPACING: space prohibited after that open parenthesis '('
#1122: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:316:
+	[BEND_IDX( 25)] = 0x3D23,

-:1123: ERROR:SPACING: space prohibited after that open parenthesis '('
#1123: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:317:
+	[BEND_IDX( 20)] = 0x3E23,

-:1124: ERROR:SPACING: space prohibited after that open parenthesis '('
#1124: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:318:
+	[BEND_IDX( 15)] = 0x3E23,

-:1125: ERROR:SPACING: space prohibited after that open parenthesis '('
#1125: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:319:
+	[BEND_IDX( 10)] = 0x3F23,

-:1126: ERROR:SPACING: space prohibited after that open parenthesis '('
#1126: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:320:
+	[BEND_IDX(  5)] = 0x3F23,

-:1127: ERROR:SPACING: space prohibited after that open parenthesis '('
#1127: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:321:
+	[BEND_IDX(  0)] = 0x0025,

-:1128: ERROR:SPACING: space prohibited after that open parenthesis '('
#1128: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:322:
+	[BEND_IDX( -5)] = 0x0025,

-:1394: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1394: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:588:
+		udelay(200);

-:1413: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1413: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:607:
+		udelay(200);

-:1424: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1424: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:618:
+		udelay(200);

-:1438: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1438: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:632:
+			udelay(200);

-:1442: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#1442: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:636:
+	BUG_ON(val != final);

total: 12 errors, 2 warnings, 7 checks, 1411 lines checked
0a9f7351d945 drm/i915: Move PCH modeset code to its own file
-:453: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#453: 
new file mode 100644

-:764: CHECK:SPACING: No space is necessary after a cast
#764: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:307:
+	assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);

total: 0 errors, 1 warnings, 1 checks, 796 lines checked
03d86e18ea3e drm/i915: Clean up the {ilk, lpt}_pch_enable() calling convention
32638e909748 drm/i915: Move LPT PCH readout code
a92a0a2e979c drm/i915: Extract ilk_pch_get_config()
-:192: CHECK:SPACING: No space is necessary after a cast
#192: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:346:
+		pll_id = (enum intel_dpll_id) pipe;

total: 0 errors, 0 warnings, 1 checks, 188 lines checked
03365a324a75 drm/i915: Move iCLKIP readout to the pch code
b9dd6f1b71d4 drm/i915: Introduce ilk_pch_disable() and ilk_pch_post_disable()
bc37d7855c26 drm/i915: Move intel_ddi_fdi_post_disable() to fdi code
4d8f6f29f43b drm/i915: Introduce lpt_pch_disable()


