Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6AE60F844
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 15:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE6210E62C;
	Thu, 27 Oct 2022 13:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D43E310E629;
 Thu, 27 Oct 2022 13:00:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE498AADDB;
 Thu, 27 Oct 2022 13:00:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 27 Oct 2022 13:00:45 -0000
Message-ID: <166687564581.4254.1906121029427505665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221027092242.1476080-1-anshuman.gupta@intel.com>
In-Reply-To: <20221027092242.1476080-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dgfx=3A_Grab_wakeref_at_i915=5Fttm=5Funmap=5Fvirtu?=
 =?utf-8?b?YWwgKHJldjQp?=
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

Series: drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual (rev4)
URL   : https://patchwork.freedesktop.org/series/108972/
State : warning

== Summary ==

Error: dim checkpatch failed
d83d4490c920 drm/i915: Encapsulate lmem rpm stuff in intel_runtime_pm
-:69: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1105:
+		list_add(&obj->userfault_link, &to_i915(obj->base.dev)->runtime_pm.lmem_userfault_list);

total: 0 errors, 1 warnings, 0 checks, 147 lines checked
721d116886f7 drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual
-:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#44: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:564:
+	GEM_BUG_ON(!obj->userfault_count);

-:155: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#155: FILE: drivers/gpu/drm/i915/intel_runtime_pm.h:67:
+	spinlock_t lmem_userfault_lock;

total: 0 errors, 1 warnings, 1 checks, 109 lines checked


