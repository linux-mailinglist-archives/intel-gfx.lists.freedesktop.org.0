Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC1B99FC90
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9444510E11F;
	Tue, 15 Oct 2024 23:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF3C10E11F;
 Tue, 15 Oct 2024 23:44:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_xe3lpd_edp_enabl?=
 =?utf-8?q?ing_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2024 23:44:50 -0000
Message-ID: <172903589090.1271011.13733393229886801756@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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

Series: Add xe3lpd edp enabling (rev3)
URL   : https://patchwork.freedesktop.org/series/139731/
State : warning

== Summary ==

Error: dim checkpatch failed
66e932283365 drm/i915/xe3lpd: Update pmdemand programming
7f58d2c0ab26 drm/i915/xe3lpd: Add cdclk changes
-:15: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#15: 
v3: xe3lpd doesnt supply the power control unit the voltage index
           ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
0fd854c304c3 drm/i915/xe3lpd: Include hblank restriction for xe3lpd
-:23: ERROR:SPACING: spaces required around that '>=' (ctx:WxV)
#23: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:54:
+		else if (DISPLAY_VER(display) >=30)
 		                              ^

total: 1 errors, 0 warnings, 0 checks, 17 lines checked
ec9b5ea3b80a drm/i915/xe3lpd: Add C20 Phy consolidated programming table
2349653366a5 drm/i915/xe3lpd: Add new bit range of MAX swing setup
-:9: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#9: 
v2: implement as two seperate macros instead of a single macro
                     ^^^^^^^^

-:32: CHECK:LINE_SPACING: Please don't use multiple blank lines
#32: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:334:
 
+

-:65: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:299:
+#define PORT_ALPM_CTL(port)				_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)

-:69: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:303:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)

-:70: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:304:
+#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)

-:72: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:306:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)

-:74: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:308:
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)

total: 0 errors, 6 warnings, 1 checks, 52 lines checked
85a432f18ce4 drm/i915/xe3lpd: Add check to see if edp over type c is allowed
8086d5e83ea3 drm/i915/xe3lpd: Add condition for EDP to powerdown P2.PG


