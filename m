Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B464A96F883
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1359B10EAA7;
	Fri,  6 Sep 2024 15:43:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB08210EAA7;
 Fri,  6 Sep 2024 15:43:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Some_int?=
 =?utf-8?q?el=5Fdisplay_conversions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Sep 2024 15:43:39 -0000
Message-ID: <172563741980.955037.17670241093726272224@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Some intel_display conversions
URL   : https://patchwork.freedesktop.org/series/138331/
State : warning

== Summary ==

Error: dim checkpatch failed
0f1a2e1d9ca9 drm/i915/cdclk: Add missing braces
f31c381fad0a drm/i915/cdclk: Convert CDCLK code to intel_display
-:1467: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 26)
#1467: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2103:
+	if (DISPLAY_VER(display) >= 14 || IS_DG2(dev_priv))
 		/* NOOP */;

-:1508: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#1508: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2140:
+	if (DISPLAY_VER(display) >= 14)
[...]
 		 */;

-:2895: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#2895: FILE: drivers/gpu/drm/i915/display/intel_display_driver.c:95:
+	cdclk_state->logical = cdclk_state->actual = display->cdclk.hw;

total: 0 errors, 2 warnings, 1 checks, 2934 lines checked
e8bcf398a0cc drm/i915/power: Convert low level DC state code to intel_display
55bd47b4af6b drm/i915/vga: Convert VGA code to intel_display
1f4c4c02e55e drm/i915/power: Convert "i830 power well" code to intel_display
6fbc2c329423 drm/i915/dmc: Convert DMC code to intel_display
-:603: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#603: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:645:
+		      !intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

-:710: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#710: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:821:
+			    is_dmc_evt_ctl_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_CTL)" :

-:711: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#711: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:822:
+			    is_dmc_evt_htp_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",

-:1169: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1169: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:1274:
+		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));

total: 0 errors, 4 warnings, 0 checks, 1210 lines checked


