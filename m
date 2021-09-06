Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C2A401574
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 06:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3396289A75;
	Mon,  6 Sep 2021 04:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DCED89A75;
 Mon,  6 Sep 2021 04:21:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09683A7525;
 Mon,  6 Sep 2021 04:21:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Sep 2021 04:21:17 -0000
Message-ID: <163090207700.30431.15816287767946723322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906034356.2946530-1-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_refactor_display_structs_a_little_bit?=
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

Series: refactor display structs a little bit
URL   : https://patchwork.freedesktop.org/series/94367/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f4fbd6000df1 drm/i915: move display funcs into a display struct.
76dc91485857 drm/i915/display: move cdclk info into display
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:662: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#662: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:77:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:665: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#665: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:79:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:711: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#711: FILE: drivers/gpu/drm/i915/display/intel_display.c:11273:
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;

total: 0 errors, 3 warnings, 1 checks, 782 lines checked
7b219ea05311 drm/i915: move more pll/clocks into display struct.
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#149: FILE: drivers/gpu/drm/i915/display/intel_display.c:179:
+	dev_priv->display.czclk_freq = vlv_get_cck_clock_hpll(dev_priv, "czclk",
 						      CCK_CZ_CLOCK_CONTROL);

total: 0 errors, 1 warnings, 1 checks, 302 lines checked
38bff6053be9 drm/i915/display: move gmbus into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:231: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#231: FILE: drivers/gpu/drm/i915/i915_drv.h:860:
+	 * controller on different i2c buses. */

-:300: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/i915_reg.h:3453:
+#define GMBUS0			_MMIO(dev_priv->display.gpio_mmio_base + 0x5100) /* clock/port select */

-:309: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#309: FILE: drivers/gpu/drm/i915/i915_reg.h:3462:
+#define GMBUS1			_MMIO(dev_priv->display.gpio_mmio_base + 0x5104) /* command/status */

-:328: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#328: FILE: drivers/gpu/drm/i915/i915_reg.h:3485:
+#define GMBUS3			_MMIO(dev_priv->display.gpio_mmio_base + 0x510c) /* data buffer bytes 3-0 */

-:329: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#329: FILE: drivers/gpu/drm/i915/i915_reg.h:3486:
+#define GMBUS4			_MMIO(dev_priv->display.gpio_mmio_base + 0x5110) /* interrupt mask (Pineview+) */

total: 0 errors, 6 warnings, 0 checks, 282 lines checked
bb277479cb80 drm/i915/display: move intel_dmc into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:81: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:968:
+				     DMC_PROGRAM(dev_priv->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 2 warnings, 0 checks, 322 lines checked
6ce1abe08452 drm/i915/display: move mipi_mmio_base to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 401 lines checked
f924c533b785 drm/i915/display: move pps_mmio_base to display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
00d5669bd6e9 drm/i915/drrs: just use some local vars to simplify drrs code
abfd2f3e84da drm/i915/display: move drrs into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
bc448a9d147a drm/i915/display: move fbc into display struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 420 lines checked


