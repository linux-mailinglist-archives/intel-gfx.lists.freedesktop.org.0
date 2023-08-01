Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E28676B495
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 14:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F63110E33F;
	Tue,  1 Aug 2023 12:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87D8A10E33F;
 Tue,  1 Aug 2023 12:17:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F7A6AADF1;
 Tue,  1 Aug 2023 12:17:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Tue, 01 Aug 2023 12:17:37 -0000
Message-ID: <169089225748.10125.2022579082059436430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Simplify_shme?=
 =?utf-8?q?m=5Fcreate=5Ffrom=5Fobject_map=5Ftype_selection_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915/gt: Simplify shmem_create_from_object map_type selection (rev2)
URL   : https://patchwork.freedesktop.org/series/121373/
State : warning

== Summary ==

Error: dim checkpatch failed
45c69ff3c0cc drm/i915/gt: Simplify shmem_create_from_object map_type selection
0f15eef4dd9e drm/i915: Make i915_coherent_map_type GT-centric
-:218: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#218: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1195:
+					 intel_gt_coherent_map_type(ce->engine->gt,
 								ce->state->obj,

-:252: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#252: FILE: drivers/gpu/drm/i915/gt/selftest_context.c:92:
+						 intel_gt_coherent_map_type(engine->gt,
 									ce->state->obj, false));

-:287: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#287: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1296:
+					       intel_gt_coherent_map_type(engine->gt,
 								      ce->state->obj,

-:321: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#321: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.c:796:
+						 intel_gt_coherent_map_type(guc_to_gt(guc),
 									vma->obj, true));

-:404: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#404: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:249:
+	cmd = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));

total: 0 errors, 1 warnings, 4 checks, 290 lines checked
467847c18f1d drm/i915/gt: Apply workaround 22016122933 correctly


