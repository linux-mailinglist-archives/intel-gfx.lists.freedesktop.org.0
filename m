Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859E97621C0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 20:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB0C10E3F0;
	Tue, 25 Jul 2023 18:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AFA210E3F0;
 Tue, 25 Jul 2023 18:47:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 046A6A00CC;
 Tue, 25 Jul 2023 18:47:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Tue, 25 Jul 2023 18:47:54 -0000
Message-ID: <169031087499.27663.16160168142632395282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bdii-client=2C1/2=5D_drm/i915=3A_Mak?=
 =?utf-8?q?e_i915=5Fcoherent=5Fmap=5Ftype_GT-centric?=
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

Series: series starting with [dii-client,1/2] drm/i915: Make i915_coherent_map_type GT-centric
URL   : https://patchwork.freedesktop.org/series/121324/
State : warning

== Summary ==

Error: dim checkpatch failed
04b9b8deb0b7 drm/i915: Make i915_coherent_map_type GT-centric
-:225: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#225: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1195:
+					 intel_gt_coherent_map_type(ce->engine->gt,
 								ce->state->obj,

-:259: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#259: FILE: drivers/gpu/drm/i915/gt/selftest_context.c:92:
+						 intel_gt_coherent_map_type(engine->gt,
 									ce->state->obj, false));

-:294: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#294: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1296:
+					       intel_gt_coherent_map_type(engine->gt,
 								      ce->state->obj,

-:378: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#378: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.c:796:
+						 intel_gt_coherent_map_type(guc_to_gt(guc),
 									vma->obj, true));

-:453: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#453: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:249:
+	cmd = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));

total: 0 errors, 1 warnings, 4 checks, 329 lines checked
75d808bcaca2 drm/i915/gt: Apply workaround 22016122933 correctly


