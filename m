Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479DF6951FB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA6510E2AD;
	Mon, 13 Feb 2023 20:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6074510E2AD;
 Mon, 13 Feb 2023 20:37:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5442AAADDC;
 Mon, 13 Feb 2023 20:37:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 13 Feb 2023 20:37:13 -0000
Message-ID: <167632063330.20214.454349281622290537@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1676317696.git.jani.nikula@intel.com>
In-Reply-To: <cover.1676317696.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/wm=3A_legacy_watermark_code_shuffling_=28rev2=29?=
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

Series: drm/i915/wm: legacy watermark code shuffling (rev2)
URL   : https://patchwork.freedesktop.org/series/113775/
State : warning

== Summary ==

Error: dim checkpatch failed
f48b5db2b7e9 drm/i915: move memory frequency detection to intel_dram.c
f7c1215772b4 drm/i915/wm: move remaining watermark code out of intel_pm.c
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:44: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#44: 
new file mode 100644

-:2262: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2262: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2214:
+			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
+				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));

-:2292: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!crtc"
#2292: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2244:
+	if (crtc == NULL)

-:2300: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#2300: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2252:
+	fwater_lo |= (3<<8) | planea_wm;
 	               ^

-:2483: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2483: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2435:
+		return level == 0 ? 127 : 511;
+	else

-:3601: WARNING:INDENTED_LABEL: labels should not be indented
#3601: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:3553:
+	out:

-:4112: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "plane_state->hw.fb"
#4112: FILE: drivers/gpu/drm/i915/display/intel_wm.c:30:
+		return plane_state->hw.fb != NULL;

-:8120: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#8120: FILE: drivers/gpu/drm/i915/intel_pm.c:84:
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);

-:8127: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#8127: FILE: drivers/gpu/drm/i915/intel_pm.c:90:
+	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |

-:8200: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#8200: FILE: drivers/gpu/drm/i915/intel_pm.c:123:
+	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |

total: 0 errors, 6 warnings, 4 checks, 8242 lines checked
53971ebabc55 drm/i915/wm: move functions to call watermark hooks to intel_wm.[ch]
37758cafa646 drm/i915/wm: add .get_hw_state to watermark funcs
f3719280bef8 drm/i915/wm: move watermark sanitization to intel_wm.[ch]
56cfbdf5e75f drm/i915/wm: move watermark debugfs to intel_wm.c
5da5cb43ffb9 drm/i915: rename intel_pm_types.h -> display/intel_wm_types.h
-:43: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#43: 
rename from drivers/gpu/drm/i915/intel_pm_types.h

total: 0 errors, 1 warnings, 0 checks, 39 lines checked


