Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2FB845E49
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 18:15:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC5410F1FC;
	Thu,  1 Feb 2024 17:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A2710F1FB;
 Thu,  1 Feb 2024 17:15:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display/vds?=
 =?utf-8?q?c=3A_Fix_the_macro_that_calculates_DSCC=5F/DSCA=5F_PPS_reg_addres?=
 =?utf-8?q?s?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 01 Feb 2024 17:15:43 -0000
Message-ID: <170680774354.895526.3571202736135110745@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240131211909.622419-1-navaremanasi@chromium.org>
In-Reply-To: <20240131211909.622419-1-navaremanasi@chromium.org>
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

Series: drm/i915/display/vdsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address
URL   : https://patchwork.freedesktop.org/series/129389/
State : warning

== Summary ==

Error: dim checkpatch failed
c9f9431dd2e4 drm/i915/display/vdsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Patch (bd077259d0a9: drm/i915/vdsc: Add function to read any PPS register) defines

-:23: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Bug:', use 'Link:' or 'Closes:' instead
#23: 
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/10172

-:43: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				((pps < 12) ? _MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))

-:43: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				((pps < 12) ? _MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))
                      				                                            ^

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pps' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				((pps < 12) ? _MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))

-:43: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'pps' may be better as '(pps)' to avoid precedence issues
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				((pps < 12) ? _MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))

-:44: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				((pps < 12) ? _MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))

-:44: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				((pps < 12) ? _MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))
                      				                                            ^

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pps' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				((pps < 12) ? _MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))

-:44: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'pps' may be better as '(pps)' to avoid precedence issues
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				((pps < 12) ? _MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))

total: 0 errors, 4 warnings, 6 checks, 10 lines checked


