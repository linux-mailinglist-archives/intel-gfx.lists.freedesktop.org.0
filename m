Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556B86036C5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 01:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F8C10E6B7;
	Tue, 18 Oct 2022 23:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EFA610E6B7;
 Tue, 18 Oct 2022 23:50:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17AC8A8830;
 Tue, 18 Oct 2022 23:50:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 18 Oct 2022 23:50:29 -0000
Message-ID: <166613702906.20426.2881887577831803721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DG2_OA_support_=28rev8=29?=
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

Series: Add DG2 OA support (rev8)
URL   : https://patchwork.freedesktop.org/series/107584/
State : warning

== Summary ==

Error: dim checkpatch failed
0bf14cf6597e drm/i915/perf: Fix OA filtering logic for GuC mode
dfe2d19762a0 drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
d315bb1f4f02 drm/i915/perf: Fix noa wait predication for DG2
909fd2f2dbb4 drm/i915/perf: Determine gen12 oa ctx offset at runtime
212e98fbb19e drm/i915/perf: Enable bytes per clock reporting in OA
6c1e44b8ee86 drm/i915/perf: Simply use stream->ctx
d6ad777f12c6 drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
4f2b61f0f0c5 drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
341cd0a92c2d drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
01cbb5248b04 drm/i915/perf: Store a pointer to oa_format in oa_buffer
1ba7b62c013d drm/i915/perf: Add Wa_1508761755:dg2
-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/i915_perf.c:2786:
+		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
+				   _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/i915_perf.c:2875:
+		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
+				   _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));

total: 0 errors, 0 warnings, 2 checks, 49 lines checked
21597a2d5558 drm/i915/perf: Apply Wa_18013179988
c27db74ba252 drm/i915/perf: Save/restore EU flex counters across reset
c016fd4fd563 drm/i915/guc: Support OA when Wa_16011777198 is enabled
-:72: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#72: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:208:
+	GEM_BUG_ON(id >= SLPC_MAX_PARAM);

total: 0 errors, 1 warnings, 0 checks, 151 lines checked
8620f1d6a324 drm/i915/perf: complete programming whitelisting for XEHPSDV
c26a47fd0a86 drm/i915/perf: Enable OA for DG2


