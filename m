Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695FE72F45A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 08:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F41D10E408;
	Wed, 14 Jun 2023 06:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2112710E41B;
 Wed, 14 Jun 2023 06:00:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FF59AADF0;
 Wed, 14 Jun 2023 06:00:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Wed, 14 Jun 2023 06:00:07 -0000
Message-ID: <168672240716.17429.17174563140570099874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230614051731.745821-1-jouni.hogander@intel.com>
In-Reply-To: <20230614051731.745821-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_stolen_memory_handling_details_into_i915=5Fgem=5Fstole?=
 =?utf-8?q?n_=28rev2=29?=
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

Series: Move stolen memory handling details into i915_gem_stolen (rev2)
URL   : https://patchwork.freedesktop.org/series/119123/
State : warning

== Summary ==

Error: dim checkpatch failed
830cf12c0926 drm/i915: Move stolen memory handling into i915_gem_stolen
-:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#44: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:334:
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),

-:47: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#47: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:337:
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),

total: 0 errors, 2 warnings, 0 checks, 177 lines checked
3cca8a412473 drm/i915/fbc: Make FBC check stolen at use time
a839dbeb012a drm/i915/fbc: Moved fence related code away from intel_fbc
-:70: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'gt' may be better as '(gt)' to avoid precedence issues
#70: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:309:
+#define intel_gt_support_legacy_fencing(gt) (gt->ggtt->num_fences > 0)

total: 0 errors, 0 warnings, 1 checks, 54 lines checked


