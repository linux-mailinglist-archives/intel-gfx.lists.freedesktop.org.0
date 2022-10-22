Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979AA6082D3
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Oct 2022 02:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10E210E682;
	Sat, 22 Oct 2022 00:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D855710E687;
 Sat, 22 Oct 2022 00:25:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8FE68AAA91;
 Sat, 22 Oct 2022 00:25:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 22 Oct 2022 00:25:08 -0000
Message-ID: <166639830855.27175.18115095967423815850@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221022001008.2340224-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221022001008.2340224-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_prepare_for_uC_loading_on_MTL_=28rev3=29?=
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

Series: drm/i915: prepare for uC loading on MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/108925/
State : warning

== Summary ==

Error: dim checkpatch failed
23e8682ebaac drm/i915/huc: only load HuC on GTs that have VCS engines
-:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#44: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:227:
+	GEM_BUG_ON(!gt_is_root(gt) && !gt->info.engine_mask);

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
6b61c31bc0cb drm/i915/uc: fetch uc firmwares for each GT
2d8333af5c59 drm/i915/uc: use different ggtt pin offsets for uc loads
-:65: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#65: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:704:
+	GEM_BUG_ON(gt->type == GT_MEDIA && gt->info.id > 1);

-:72: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#72: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:711:
+	GEM_BUG_ON(offset + uc_fw->obj->base.size > node->size);

-:73: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#73: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:712:
+	GEM_BUG_ON(uc_fw->obj->base.size > INTEL_UC_RSVD_GGTT_PER_FW);

total: 0 errors, 3 warnings, 0 checks, 82 lines checked
8f6233999615 drm/i915/guc: Add GuC deprivilege feature to MTL
2800bc01d08e drm/i915/mtl: Handle wopcm per-GT and limit calculations.
-:136: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#136: 
rename from drivers/gpu/drm/i915/intel_wopcm.c

-:306: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#306: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:567:
+	GEM_BUG_ON(!gt->wopcm.size);

total: 0 errors, 2 warnings, 0 checks, 245 lines checked
f7c0098d5ad0 drm/i915/guc: define media GT GuC send regs
7d959f9adaa8 drm/i915/guc: handle interrupts from media GuC


