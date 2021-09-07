Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF0C402F8F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 22:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A1589D1D;
	Tue,  7 Sep 2021 20:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD50789D1D;
 Tue,  7 Sep 2021 20:21:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4CA4A00C9;
 Tue,  7 Sep 2021 20:21:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 20:21:29 -0000
Message-ID: <163104608970.24493.6516129396047458014@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907171916.2548047-1-matthew.d.roper@intel.com>
In-Reply-To: <20210907171916.2548047-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Introduce_Xe=5FHP_compute_engines?=
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

Series: i915: Introduce Xe_HP compute engines
URL   : https://patchwork.freedesktop.org/series/94450/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f33a9b39f861 drm/i915/xehp: Define compute class and engine
-:13: WARNING:BAD_SIGN_OFF: Non-standard signature: Original-patch-by:
#13: 
Original-patch-by: Michel Thierry

-:13: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Michel Thierry'
#13: 
Original-patch-by: Michel Thierry

total: 1 errors, 1 warnings, 0 checks, 150 lines checked
5f332495a86f drm/i915/xehp: CCS shares the render reset domain
-:16: WARNING:BAD_SIGN_OFF: Non-standard signature: Original-patch-by:
#16: 
Original-patch-by: Michel Thierry

-:16: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Michel Thierry'
#16: 
Original-patch-by: Michel Thierry

total: 1 errors, 1 warnings, 0 checks, 10 lines checked
0b6621dcfaa4 drm/i915/xehp: Add Compute CS IRQ handlers
-:15: WARNING:BAD_SIGN_OFF: Non-standard signature: Original-patch-by:
#15: 
Original-patch-by: Michel Thierry

-:15: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Michel Thierry'
#15: 
Original-patch-by: Michel Thierry

total: 1 errors, 1 warnings, 0 checks, 68 lines checked
d2323e9fcd91 drm/i915/xehp: CCS should use RCS setup functions
-:19: WARNING:BAD_SIGN_OFF: Non-standard signature: Original-patch-by:
#19: 
Original-patch-by: Michel Thierry

-:19: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Michel Thierry'
#19: 
Original-patch-by: Michel Thierry

-:173: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#173: FILE: drivers/gpu/drm/i915/i915_reg.h:444:
+#define GEN8_R_PWR_CLK_STATE(base)	_MMIO((base)+0xc8)
                                   	            ^

total: 1 errors, 1 warnings, 1 checks, 107 lines checked
cdf7c042c226 drm/i915/xehp: compute engine pipe_control
-:94: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#94: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:226:
+#define   PIPE_CONTROL_AMFS_FLUSH			(1<<25) /* gen12+ */
                                  			  ^

-:99: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#99: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:231:
+#define   PIPE_CONTROL_GLOBAL_SNAPSHOT_RESET		(1<<19)
                                             		  ^

-:101: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#101: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:233:
+#define   PIPE_CONTROL_PSD_SYNC				(1<<17) /* gen11+ */
                                				  ^

total: 0 errors, 0 warnings, 3 checks, 91 lines checked
f496f5a5ad27 drm/i915/xehp: Define context scheduling attributes in lrc descriptor
-:17: WARNING:BAD_SIGN_OFF: Non-standard signature: Original-patch-by:
#17: 
Original-patch-by: Michel Thierry

-:17: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Michel Thierry'
#17: 
Original-patch-by: Michel Thierry

total: 1 errors, 1 warnings, 0 checks, 56 lines checked
95bf9aa2b2bc drm/i915/xehp: Enable ccs/dual-ctx in RCU_MODE
-:10: WARNING:BAD_SIGN_OFF: Non-standard signature: Original-patch-by:
#10: 
Original-patch-by: Michel Thierry

-:10: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Michel Thierry'
#10: 
Original-patch-by: Michel Thierry

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2895:
+		intel_uncore_write(engine->uncore, GEN12_RCU_MODE,
+			   _MASKED_BIT_ENABLE(GEN12_RCU_MODE_CCS_ENABLE));

-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2371:
+		intel_uncore_write(engine->uncore, GEN12_RCU_MODE,
+			   _MASKED_BIT_ENABLE(GEN12_RCU_MODE_CCS_ENABLE));

total: 1 errors, 1 warnings, 2 checks, 85 lines checked
a90e6b8ea6b8 drm/i915/xehp: Extend uninterruptible OpenCL workloads to CCS


