Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 357A9A8803C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 14:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5A810E587;
	Mon, 14 Apr 2025 12:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0E810E587;
 Mon, 14 Apr 2025 12:18:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Underrun_on_idle_PSR?=
 =?utf-8?q?_workaround_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Apr 2025 12:18:00 -0000
Message-ID: <174463308090.1385.5865475543364595813@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
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

Series: Underrun on idle PSR workaround (rev4)
URL   : https://patchwork.freedesktop.org/series/145986/
State : warning

== Summary ==

Error: dim checkpatch failed
83ebb58976c0 drm/i915/display: Add new interface for getting dc_state
d8908e30c90f drm/i915/psr: Store enabled non-psr pipes into intel_crtc_state
05c55f09d844 drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
baae4b4e03ea drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
-:29: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:33:
+									   PIPEDMC_BLOCK_PKGC_SW_A, \

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
78ca00674d02 drm/i915/dmc: Add interface to block PKG C-state
f51015aae931 drm/i915/psr: Block PKG C-State when enabling PSR
c347f05f2585 drm/i915/psr: Add mechanism to notify PSR of pipe enable/disable
02a33ed03fbe drm/i915/psr: Add mechanism to notify PSR of DC5/6 enable disable
36b1190d57ba drm/i915/psr: Add interface to notify PSR of vblank enable/disable
09e0bc06b2b5 drm/i915/dmc: Add interface to control start of PKG C-state exit
ef2ce939d380 drm/i915/psr: Apply underrun on PSR idle workaround
-:172: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#172: FILE: drivers/gpu/drm/i915/display/intel_psr.c:2124:
+			intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(display,
+								       intel_dp->psr.pipe,

total: 0 errors, 0 warnings, 1 checks, 203 lines checked
fe4a80c60296 drm/i915/display: Rename intel_psr_needs_block_dc_vblank
0c233a304bf5 drm/i915/display: Rename vblank DC workaround functions and variables


