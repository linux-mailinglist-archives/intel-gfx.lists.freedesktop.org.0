Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B6C769388
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 12:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8212B10E25C;
	Mon, 31 Jul 2023 10:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF82E10E25A;
 Mon, 31 Jul 2023 10:50:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B326BA00CC;
 Mon, 31 Jul 2023 10:50:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Mon, 31 Jul 2023 10:50:57 -0000
Message-ID: <169080065770.10569.229853955271817755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230614051731.745821-1-jouni.hogander@intel.com>
In-Reply-To: <20230614051731.745821-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_stolen_memory_handling_details_into_i915=5Fgem=5Fstole?=
 =?utf-8?q?n_=28rev3=29?=
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

Series: Move stolen memory handling details into i915_gem_stolen (rev3)
URL   : https://patchwork.freedesktop.org/series/119123/
State : warning

== Summary ==

Error: dim checkpatch failed
e5ae0e9c620c drm/i915: Move stolen memory handling into i915_gem_stolen
-:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#44: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:334:
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),

-:47: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#47: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:337:
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),

total: 0 errors, 2 warnings, 0 checks, 177 lines checked
6b051a8362fa drm/i915/fbc: Make FBC check stolen at use time
28c2f05de687 drm/i915/fbc: Moved fence related code away from intel_fbc
-:70: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'gt' may be better as '(gt)' to avoid precedence issues
#70: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:312:
+#define intel_gt_support_legacy_fencing(gt) (gt->ggtt->num_fences > 0)

total: 0 errors, 0 warnings, 1 checks, 54 lines checked


