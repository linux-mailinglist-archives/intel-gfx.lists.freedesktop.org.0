Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F89A763C9B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 18:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83E610E49D;
	Wed, 26 Jul 2023 16:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B20F210E49B;
 Wed, 26 Jul 2023 16:37:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA46DA47E9;
 Wed, 26 Jul 2023 16:37:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Wed, 26 Jul 2023 16:37:00 -0000
Message-ID: <169038942067.23472.18408967416529906498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Simplify_shme?=
 =?utf-8?q?m=5Fcreate=5Ffrom=5Fobject_map=5Ftype_selection?=
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

Series: series starting with [1/3] drm/i915/gt: Simplify shmem_create_from_object map_type selection
URL   : https://patchwork.freedesktop.org/series/121373/
State : warning

== Summary ==

Error: dim checkpatch failed
dd84f9f99c63 drm/i915/gt: Simplify shmem_create_from_object map_type selection
bf170c1d59f6 drm/i915: Make i915_coherent_map_type GT-centric
-:216: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#216: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1195:
+					 intel_gt_coherent_map_type(ce->engine->gt,
 								ce->state->obj,

-:250: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#250: FILE: drivers/gpu/drm/i915/gt/selftest_context.c:92:
+						 intel_gt_coherent_map_type(engine->gt,
 									ce->state->obj, false));

-:285: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#285: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1296:
+					       intel_gt_coherent_map_type(engine->gt,
 								      ce->state->obj,

-:319: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#319: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.c:796:
+						 intel_gt_coherent_map_type(guc_to_gt(guc),
 									vma->obj, true));

-:402: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#402: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:249:
+	cmd = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));

total: 0 errors, 1 warnings, 4 checks, 290 lines checked
8f99ef785777 drm/i915/gt: Apply workaround 22016122933 correctly


