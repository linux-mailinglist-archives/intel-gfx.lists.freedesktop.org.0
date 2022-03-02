Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB074C9B2D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 03:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02C210E173;
	Wed,  2 Mar 2022 02:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A16CA10E11F;
 Wed,  2 Mar 2022 02:26:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88428A47DF;
 Wed,  2 Mar 2022 02:26:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 02 Mar 2022 02:26:37 -0000
Message-ID: <164618799752.11317.17084344485807685518@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301231549.1817978-1-matthew.d.roper@intel.com>
In-Reply-To: <20220301231549.1817978-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Prepare_for_Xe=5FHP_compute_engines_=28rev3=29?=
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

Series: i915: Prepare for Xe_HP compute engines (rev3)
URL   : https://patchwork.freedesktop.org/series/100833/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d5cf9daabfdf drm/i915/xehp: Define compute class and engine
01194092d81e drm/i915/xehp: CCS shares the render reset domain
5250d5b4703e drm/i915/xehp: Add Compute CS IRQ handlers
4815564944de drm/i915/xehp: compute engine pipe_control
-:100: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#100: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:231:
+#define   PIPE_CONTROL_AMFS_FLUSH			(1<<25) /* gen12+ */
                                  			  ^

-:105: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#105: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:236:
+#define   PIPE_CONTROL_GLOBAL_SNAPSHOT_RESET		(1<<19)
                                             		  ^

-:107: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#107: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:238:
+#define   PIPE_CONTROL_PSD_SYNC				(1<<17) /* gen11+ */
                                				  ^

total: 0 errors, 0 warnings, 3 checks, 94 lines checked
82b6bd2459f6 drm/i915/xehp: CCS should use RCS setup functions
6feb7ffbf567 drm/i915: Move context descriptor fields to intel_lrc.h
29e8cbd564a4 drm/i915/xehp: Define context scheduling attributes in lrc descriptor
78bd998ebc62 drm/i915/xehp: Enable ccs/dual-ctx in RCU_MODE
1d2b3bc1232f drm/i915/xehp/guc: enable compute engine inside GuC
42e48b33c541 drm/i915/xehp: Don't support parallel submission on compute / render
91ebd1eae025 drm/i915/xehp: handle fused off CCS engines
dca7ab26adb1 drm/i915/xehp: Add compute workarounds
013b08912c74 drm/i915/xehpsdv: Move render/compute engine reset domains related workarounds


