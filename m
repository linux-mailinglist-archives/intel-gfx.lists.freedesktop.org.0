Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE947B5DCF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 01:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A37B10E0D4;
	Mon,  2 Oct 2023 23:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3B4E10E091;
 Mon,  2 Oct 2023 23:42:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0CC6A00E6;
 Mon,  2 Oct 2023 23:42:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Mon, 02 Oct 2023 23:42:01 -0000
Message-ID: <169629012175.3205.7296150219119422001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/4=5D_drm/i915=3A_Define_and_?=
 =?utf-8?q?use_GuC_and_CTB_TLB_invalidation_routines?=
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

Series: series starting with [v3,1/4] drm/i915: Define and use GuC and CTB TLB invalidation routines
URL   : https://patchwork.freedesktop.org/series/124535/
State : warning

== Summary ==

Error: dim checkpatch failed
bedea6a0f331 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:224: ERROR:TRAILING_WHITESPACE: trailing whitespace
#224: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:437:
+^I$

-:271: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc' - possible side-effects?
#271: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:502:
+#define INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc) \
+	((intel_guc_ct_enabled(&(guc)->ct)) && \
+	 (intel_guc_submission_is_used(guc)) && \
+	 (GRAPHICS_VER(guc_to_gt((guc))->i915) >= 12))

-:347: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#347: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1995:
+		GEM_BUG_ON(wait->status);

total: 1 errors, 1 warnings, 1 checks, 470 lines checked
e481f56de67c drm/i915: No TLB invalidation on wedged or suspended GT
7e3d037b3a01 drm/i915: Perform TLB invalidation on all GTs during suspend/resume
cc0b0930d7f6 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck


