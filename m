Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19707DA4B1
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Oct 2023 03:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2AD10E122;
	Sat, 28 Oct 2023 01:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D7BF10E120;
 Sat, 28 Oct 2023 01:44:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84FEBAADD1;
 Sat, 28 Oct 2023 01:44:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Sat, 28 Oct 2023 01:44:18 -0000
Message-ID: <169845745850.21163.11518807470635784185@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231027211814.2696398-1-John.C.Harrison@Intel.com>
In-Reply-To: <20231027211814.2696398-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Wa=5F14019159160_and_Wa=5F16019325821_for_MTL_=28rev?=
 =?utf-8?q?2=29?=
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

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/123813/
State : warning

== Summary ==

Error: dim checkpatch failed
2cf2fda84a87 drm/i915: Enable Wa_16019325821
d54c40303399 drm/i915/guc: Add support for w/a KLVs
-:104: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#104: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:824:
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
502e51ffa75f drm/i915/guc: Enable Wa_14019159160
-:100: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#100: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:825:
+	GEM_BUG_ON(remain < size);

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
138f15b40126 drm/i915/mtl: Add module parameter override for Wa_16019325821/Wa_14019159160
-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/i915_params.c:138:
+i915_param_named(enable_mtl_rcs_ccs_wa, bool, 0400,
+	"Enable the RCS/CCS switchout hold workaround for MTL (only some workloads are affected by issue and w/a has a performance penalty) (default:false)");

total: 0 errors, 0 warnings, 1 checks, 43 lines checked


