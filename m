Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F6B7295BD
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 11:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E784110E24E;
	Fri,  9 Jun 2023 09:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFB5F10E24E;
 Fri,  9 Jun 2023 09:45:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA0D4A00CC;
 Fri,  9 Jun 2023 09:45:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 09 Jun 2023 09:45:01 -0000
Message-ID: <168630390180.15970.3822504618994219115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230609085359.1259932-1-jouni.hogander@intel.com>
In-Reply-To: <20230609085359.1259932-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_stolen_memory_handling_details_into_i915=5Fgem=5Fstole?=
 =?utf-8?q?n?=
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

Series: Move stolen memory handling details into i915_gem_stolen
URL   : https://patchwork.freedesktop.org/series/119123/
State : warning

== Summary ==

Error: dim checkpatch failed
7c50baebe654 drm/i915: Move stolen memory handling into i915_gem_stolen
-:42: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#42: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:334:
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),

-:45: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#45: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:337:
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),

-:173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#173: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:994:
+u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
+			const struct drm_mm_node *node)

-:178: CHECK:LINE_SPACING: Please don't use multiple blank lines
#178: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:999:
+
+

-:215: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#215: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.h:46:
+u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
+			    const struct drm_mm_node *node);

total: 0 errors, 2 warnings, 3 checks, 178 lines checked
84d43ac59d7c drm/i915/fbc: Make FBC check stolen at use time
c6051b9df3a4 drm/i915/fbc: Moved fence related code away from intel_fbc
-:68: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'gt' may be better as '(gt)' to avoid precedence issues
#68: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:309:
+#define intel_gt_support_legacy_fencing(gt) (gt->ggtt->num_fences <= 0)

total: 0 errors, 0 warnings, 1 checks, 54 lines checked


