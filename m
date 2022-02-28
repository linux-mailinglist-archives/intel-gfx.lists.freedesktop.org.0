Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 813B34C7DB5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 23:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E357910E2BC;
	Mon, 28 Feb 2022 22:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D44F10E2BC;
 Mon, 28 Feb 2022 22:48:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AA01A66C8;
 Mon, 28 Feb 2022 22:48:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 28 Feb 2022 22:48:17 -0000
Message-ID: <164608849701.6632.10827525898657733134@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228174245.1569581-1-matthew.d.roper@intel.com>
In-Reply-To: <20220228174245.1569581-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Prepare_for_Xe=5FHP_compute_engines?=
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

Series: i915: Prepare for Xe_HP compute engines
URL   : https://patchwork.freedesktop.org/series/100833/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
aeab2e429058 drm/i915/xehp: Define compute class and engine
794deed65cd5 drm/i915/xehp: CCS shares the render reset domain
83e3525cfb56 drm/i915/xehp: Add Compute CS IRQ handlers
c1e9139a6d18 drm/i915/xehp: compute engine pipe_control
-:97: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#97: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:231:
+#define   PIPE_CONTROL_AMFS_FLUSH			(1<<25) /* gen12+ */
                                  			  ^

-:102: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#102: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:236:
+#define   PIPE_CONTROL_GLOBAL_SNAPSHOT_RESET		(1<<19)
                                             		  ^

-:104: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#104: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:238:
+#define   PIPE_CONTROL_PSD_SYNC				(1<<17) /* gen11+ */
                                				  ^

total: 0 errors, 0 warnings, 3 checks, 95 lines checked
25857870fcd9 drm/i915/xehp: CCS should use RCS setup functions
4644209c10d6 drm/i915: Move context descriptor fields to intel_lrc.h
a384c36be225 drm/i915/xehp: Define context scheduling attributes in lrc descriptor
4060c5ce8fe7 drm/i915/xehp/guc: enable compute engine inside GuC
8c2a3081039e drm/i915/xehp: Enable ccs/dual-ctx in RCU_MODE
dee0a41826f5 drm/i915/xehp: Don't support parallel submission on compute / render
-:44: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#44: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c:158:
+		if (class == COMPUTE_CLASS || class == RENDER_CLASS)
+		       continue;

-:45: WARNING:TABSTOP: Statements should start on a tabstop
#45: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c:159:
+		       continue;

total: 0 errors, 2 warnings, 0 checks, 26 lines checked
e2d994ffd124 drm/i915/xehp: handle fused off CCS engines
-:46: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#46: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:607:
+		const unsigned long ccs_mask = intel_slicemask_from_dssmask(

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
2ea92310ad16 drm/i915/xehp: Add compute workarounds
-:51: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1224:
+			cs = gen8_emit_pipe_control(cs, PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, 0);

total: 0 errors, 1 warnings, 0 checks, 84 lines checked
1d7e9a4c4f20 drm/i915/xehpsdv: Move render/compute engine reset domains related workarounds


