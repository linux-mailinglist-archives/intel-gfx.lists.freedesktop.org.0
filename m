Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A724A74D80E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF0C10E0EF;
	Mon, 10 Jul 2023 13:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D4F510E0EF;
 Mon, 10 Jul 2023 13:45:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 714E9A47E9;
 Mon, 10 Jul 2023 13:45:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Date: Mon, 10 Jul 2023 13:45:38 -0000
Message-ID: <168899673846.24990.7638720381038250409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?eplace_acronym_with_full_platform_name_in_defines=2E_=28rev3=29?=
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

Series: Replace acronym with full platform name in defines. (rev3)
URL   : https://patchwork.freedesktop.org/series/119380/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/119380/revisions/3/mbox/ not applied
Applying: drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform defines
Applying: drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_fbc.c
M	drivers/gpu/drm/i915/display/intel_pmdemand.c
M	drivers/gpu/drm/i915/display/intel_psr.c
M	drivers/gpu/drm/i915/display/skl_universal_plane.c
M	drivers/gpu/drm/i915/gt/gen8_engine_cs.c
M	drivers/gpu/drm/i915/gt/intel_engine_cs.c
M	drivers/gpu/drm/i915/gt/intel_execlists_submission.c
M	drivers/gpu/drm/i915/gt/intel_gt_mcr.c
M	drivers/gpu/drm/i915/gt/intel_lrc.c
M	drivers/gpu/drm/i915/gt/intel_rc6.c
M	drivers/gpu/drm/i915/gt/intel_workarounds.c
M	drivers/gpu/drm/i915/gt/uc/intel_guc.c
M	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/i915_perf.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_perf.c
Auto-merging drivers/gpu/drm/i915/i915_drv.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/uc/intel_guc.c
Auto-merging drivers/gpu/drm/i915/gt/intel_workarounds.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_workarounds.c
Auto-merging drivers/gpu/drm/i915/gt/intel_lrc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_lrc.c
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_mcr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_gt_mcr.c
Auto-merging drivers/gpu/drm/i915/gt/intel_execlists_submission.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_execlists_submission.c
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_cs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_engine_cs.c
Auto-merging drivers/gpu/drm/i915/gt/gen8_engine_cs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/gen8_engine_cs.c
Auto-merging drivers/gpu/drm/i915/display/skl_universal_plane.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/skl_universal_plane.c
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


