Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3036743268C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 20:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7503B6EA76;
	Mon, 18 Oct 2021 18:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEB086EA85;
 Mon, 18 Oct 2021 18:37:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A79CCAADE1;
 Mon, 18 Oct 2021 18:37:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 18:37:08 -0000
Message-ID: <163458222868.27087.16242278839458432044@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_PCH_modeset_code_into_its_own_file_=28rev2?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Move PCH modeset code into its own file (rev2)
URL   : https://patchwork.freedesktop.org/series/95863/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fe78f7aa4624 drm/i915: Move PCH refclok stuff into its own file
-:803: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#803: 
new file mode 100644

-:1003: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1003: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:196:
+	udelay(24);

-:1070: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1070: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:263:
+	udelay(24);

-:1106: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1106: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:299:
+			udelay(32);

-:1118: ERROR:SPACING: space prohibited after that open parenthesis '('
#1118: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:311:
+	[BEND_IDX( 50)] = 0x3B23,

-:1119: ERROR:SPACING: space prohibited after that open parenthesis '('
#1119: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:312:
+	[BEND_IDX( 45)] = 0x3B23,

-:1120: ERROR:SPACING: space prohibited after that open parenthesis '('
#1120: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:313:
+	[BEND_IDX( 40)] = 0x3C23,

-:1121: ERROR:SPACING: space prohibited after that open parenthesis '('
#1121: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:314:
+	[BEND_IDX( 35)] = 0x3C23,

-:1122: ERROR:SPACING: space prohibited after that open parenthesis '('
#1122: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:315:
+	[BEND_IDX( 30)] = 0x3D23,

-:1123: ERROR:SPACING: space prohibited after that open parenthesis '('
#1123: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:316:
+	[BEND_IDX( 25)] = 0x3D23,

-:1124: ERROR:SPACING: space prohibited after that open parenthesis '('
#1124: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:317:
+	[BEND_IDX( 20)] = 0x3E23,

-:1125: ERROR:SPACING: space prohibited after that open parenthesis '('
#1125: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:318:
+	[BEND_IDX( 15)] = 0x3E23,

-:1126: ERROR:SPACING: space prohibited after that open parenthesis '('
#1126: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:319:
+	[BEND_IDX( 10)] = 0x3F23,

-:1127: ERROR:SPACING: space prohibited after that open parenthesis '('
#1127: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:320:
+	[BEND_IDX(  5)] = 0x3F23,

-:1128: ERROR:SPACING: space prohibited after that open parenthesis '('
#1128: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:321:
+	[BEND_IDX(  0)] = 0x0025,

-:1129: ERROR:SPACING: space prohibited after that open parenthesis '('
#1129: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:322:
+	[BEND_IDX( -5)] = 0x0025,

-:1395: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1395: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:588:
+		udelay(200);

-:1414: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1414: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:607:
+		udelay(200);

-:1425: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1425: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:618:
+		udelay(200);

-:1439: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#1439: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:632:
+			udelay(200);

-:1443: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#1443: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.c:636:
+	BUG_ON(val != final);

total: 12 errors, 2 warnings, 7 checks, 1411 lines checked
9346281c5925 drm/i915: Move PCH modeset code to its own file
-:454: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#454: 
new file mode 100644

-:765: CHECK:SPACING: No space is necessary after a cast
#765: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:307:
+	assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);

total: 0 errors, 1 warnings, 1 checks, 796 lines checked
3f2c8e4d7c8e drm/i915: Clean up the {ilk, lpt}_pch_enable() calling convention
25072419a975 drm/i915: Move LPT PCH readout code
4bfd17869e11 drm/i915: Extract ilk_pch_get_config()
-:193: CHECK:SPACING: No space is necessary after a cast
#193: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:346:
+		pll_id = (enum intel_dpll_id) pipe;

total: 0 errors, 0 warnings, 1 checks, 188 lines checked
43488950420d drm/i915: Move iCLKIP readout to the pch code
4ef845baae54 drm/i915: Introduce ilk_pch_disable() and ilk_pch_post_disable()
39b8f7cf41e2 drm/i915: Move intel_ddi_fdi_post_disable() to fdi code
4f18cafd1f4a drm/i915: Introduce lpt_pch_disable()
-:23: WARNING:BAD_SIGN_OFF: Duplicate signature
#23: 
Reported-by: kernel test robot <lkp@intel.com>

-:24: WARNING:BAD_SIGN_OFF: Duplicate signature
#24: 
Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 2 warnings, 0 checks, 57 lines checked


