Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E1624A42
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 20:06:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC85C10E7D3;
	Thu, 10 Nov 2022 19:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E833E10E7D3;
 Thu, 10 Nov 2022 19:06:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DEC6DA7DFC;
 Thu, 10 Nov 2022 19:06:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 10 Nov 2022 19:06:19 -0000
Message-ID: <166810717990.16956.17984399525867411575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/7=5D_drm/i915/huc=3A_only_lo?=
 =?utf-8?q?ad_HuC_on_GTs_that_have_VCS_engines_=28rev3=29?=
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

Series: series starting with [CI,1/7] drm/i915/huc: only load HuC on GTs that have VCS engines (rev3)
URL   : https://patchwork.freedesktop.org/series/110646/
State : warning

== Summary ==

Error: dim checkpatch failed
be57a55a080f drm/i915/huc: only load HuC on GTs that have VCS engines
-:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#44: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:227:
+	GEM_BUG_ON(!gt_is_root(gt) && !gt->info.engine_mask);

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
4e0bb5c0bb3b drm/i915/uc: fetch uc firmwares for each GT
ce8ee9885c81 drm/i915/uc: use different ggtt pin offsets for uc loads
-:66: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#66: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:704:
+	GEM_BUG_ON(gt->type == GT_MEDIA && gt->info.id > 1);

-:73: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#73: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:711:
+	GEM_BUG_ON(offset + uc_fw->obj->base.size > node->size);

-:74: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:712:
+	GEM_BUG_ON(uc_fw->obj->base.size > INTEL_UC_RSVD_GGTT_PER_FW);

total: 0 errors, 3 warnings, 0 checks, 82 lines checked
acbfc7253394 drm/i915/guc: Add GuC deprivilege feature to MTL
6ea78939e190 drm/i915/mtl: Handle wopcm per-GT and limit calculations.
-:113: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#113: 
rename from drivers/gpu/drm/i915/intel_wopcm.c

-:278: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#278: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:567:
+	GEM_BUG_ON(!gt->wopcm.size);

total: 0 errors, 2 warnings, 0 checks, 240 lines checked
826417c084a6 drm/i915/guc: define media GT GuC send regs
47d818d9b051 drm/i915/guc: handle interrupts from media GuC


