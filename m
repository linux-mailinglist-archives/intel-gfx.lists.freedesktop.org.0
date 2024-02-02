Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42093847B75
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 22:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7912A10E843;
	Fri,  2 Feb 2024 21:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC0C10E843;
 Fri,  2 Feb 2024 21:23:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsc=3A_Fix_?=
 =?utf-8?q?the_macro_that_calculates_DSCC=5F/DSCA=5F_PPS_reg_address?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <navaremanasi@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 21:23:06 -0000
Message-ID: <170690898625.953329.7551072013944718680@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202204752.1210687-1-navaremanasi@chromium.org>
In-Reply-To: <20240202204752.1210687-1-navaremanasi@chromium.org>
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

Series: drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address
URL   : https://patchwork.freedesktop.org/series/129486/
State : warning

== Summary ==

Error: dim checkpatch failed
d490bac8db7c drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_ PPS reg address
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register") defines

-:43: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

-:43: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)
                      				                                       ^

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pps' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

-:43: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'pps' may be better as '(pps)' to avoid precedence issues
#43: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:54:
+#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

-:44: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

-:44: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)
                      				                                       ^

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pps' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

-:44: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'pps' may be better as '(pps)' to avoid precedence issues
#44: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:55:
+#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

total: 0 errors, 3 warnings, 6 checks, 10 lines checked


