Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AF464685A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 05:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DAB10E45E;
	Thu,  8 Dec 2022 04:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3CB10E45E;
 Thu,  8 Dec 2022 04:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670475526; x=1702011526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=79FGVCJPN3qkFv1yKgnWEMng78oJHclbXXWsYFCK1mY=;
 b=AspRsJU1CyWfBRlOA2MUD69pNLWm4LOB5lvSpXlPXbf8U00VmdlToZ3o
 TEF/N3Q47ZP7DcrpiWExsXJLfpKgOaYUJvtYxJu5526nM4mFdOS7LyrT4
 cg0IGibYPGgbfX7W6tfSzfY3SZBsjKugW63BrUf2vFWGxmUHiQ/qQY13X
 gfsUuZPWOJ+A0eADXIZ5ltvWo4lqFzxTicBYbqoILkjYFwEiBnkAtMbY2
 bBhN80UxYDvKDQzqoGaL0psEN8M4DWjt/VGCOTw1k5d5rQQx392Wl+0RE
 fZC7TJvJOhfmArko275iyb/yzpgeb7mTL7hTIlihkxpQp3rxbA4r9dF/l A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="344114882"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="344114882"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 20:58:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="648994472"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="648994472"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2022 20:58:45 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 21:01:36 -0800
Message-Id: <20221208050136.950597-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 1/1] drm/i915/pxp: Promote pxp subsystem to
 top-level of i915
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting with MTL, there will be two GT-tiles, a render and media
tile. PXP as a service for supporting workloads with protected
contexts and protected buffers can be subscribed by process
workloads on any tile. However, depending on the platform,
only one of the tiles is used for control events pertaining to PXP
operation (such as creating the arbitration session and session
tear-down).

PXP as a global feature is accessible via batch buffer instructions
on any engine/tile and the coherency across tiles is handled implicitly
by the HW. In fact, for the foreseeable future, we are expecting this
single-control-tile for the PXP subsystem.

In MTL, it's the standalone media tile (not the root tile) because
it contains the VDBOX and KCR engine (among the assets PXP relies on
for those events).

Looking at the current code design, each tile is represented by the
intel_gt structure while the intel_pxp structure currently hangs off the
intel_gt structure.

Keeping the intel_pxp structure within the intel_gt structure makes some
internal functionalities more straight forward but adds code complexity to
code readibility and maintainibility to many external-to-pxp subsystems
which may need to pick the correct intel_gt structure. An example of this
would be the intel_pxp_is_active or intel_pxp_is_enabled functionality
which should be viewed as a global level inquiry, not a per-gt inquiry.

That said, this series promotes the intel_pxp structure into the
drm_i915_private structure making it a top-level subsystem and the PXP
subsystem will select the control gt internally and keep a pointer to
it for internal reference.

This promotion comes with two noteworthy changes:

1. Exported pxp functions that are called by external subsystems
   (such as intel_pxp_enabled/active) will have to check implicitly
   if i915->pxp is valid as that structure will not be allocated
   for HW that doesn't support PXP.

2. Since GT is now considered a soft-dependency of PXP we are
   ensuring that GT init happens before PXP init and vice versa
   for fini. This causes a minor ordering change whereby we previously
   called intel_pxp_suspend after intel_uc_suspend but now is before
   i915_gem_suspend_late but the change is required for correct
   dependency flows. Additionally, this re-order change doesn't
   have any impact because at that point in either case, the top level
   entry to i915 won't observe any PXP events (since the GPU was
   quiesced during suspend_prepare). Also, any PXP event doesn't
   really matter when we disable the PXP HW (global GT irqs are
   already off anyway, so even if there was a bug that generated
   spurious events we wouldn't see it and we would just clean it
   up on resume which is okay since the default fallback action
   for PXP would be to keep the sessions off at this suspend stage).

Changes from prior revs:
  v10: - Change the code flow for intel_pxp_init to make it more
         cleaner and readible with better comments explaining the
         difference between full-PXP-feature vs the partial-teelink
         inits depending on the platform. Additionally, only do
         the pxp allocation when we are certain the subsystem is
         needed. (Tvrtko).
   v9: - Cosmetic cleanups in supported/enabled/active. (Daniele).
       - Add comments for intel_pxp_init and pxp_get_ctrl_gt that
         explain the functional flow for when PXP is not supported
         but the backend-assets are needed for HuC authentication
         (Daniele and Tvrtko).
       - Fix two remaining functions that are accessible outside
         PXP that need to be checking pxp ptrs before using them:
         intel_pxp_irq_handler and intel_pxp_huc_load_and_auth
         (Tvrtko and Daniele).
       - User helper macro in pxp-debugfs (Tvrtko).
   v8: - Remove pxp_to_gt macro (Daniele).
       - Fix a bug in pxp_get_ctrl_gt for the case of MTL and we don't
         support GSC-FW on it. (Daniele).
       - Leave i915->pxp as NULL if we dont support PXP and in line
         with that, do additional validity check on i915->pxp for
         intel_pxp_is_supported/enabled/active (Daniele).
       - Remove unncessary include header from intel_gt_debugfs.c
         and check drm_minor i915->drm.primary (Daniele).
       - Other cosmetics / minor issues / more comments on suspend
         flow order change (Daniele).
   v7: - Drop i915_dev_to_pxp and in intel_pxp_init use 'i915->pxp'
         through out instead of local variable newpxp. (Rodrigo)
       - In the case intel_pxp_fini is called during driver unload but
         after i915 loading failed without pxp being allocated, check
         i915->pxp before referencing it. (Alan)
   v6: - Remove HAS_PXP macro and replace it with intel_pxp_is_supported
         because : [1] introduction of 'ctrl_gt' means we correct this
         for MTL's upcoming series now. [2] Also, this has little impact
         globally as its only used by PXP-internal callers at the moment.
       - Change intel_pxp_init/fini to take in i915 as its input to avoid
         ptr-to-ptr in init/fini calls.(Jani).
       - Remove the backpointer from pxp->i915 since we can use
         pxp->ctrl_gt->i915 if we need it. (Rodrigo).
   v5: - Switch from series to single patch (Rodrigo).
       - change function name from pxp_get_kcr_owner_gt to
         pxp_get_ctrl_gt.
       - Fix CI BAT failure by removing redundant call to intel_pxp_fini
         from driver-remove.
       - NOTE: remaining open still persists on using ptr-to-ptr
         and back-ptr.
   v4: - Instead of maintaining intel_pxp as an intel_gt structure member
         and creating a number of convoluted helpers that takes in i915 as
         input and redirects to the correct intel_gt or takes any intel_gt
         and internally replaces with the correct intel_gt, promote it to
         be a top-level i915 structure.
   v3: - Rename gt level helper functions to "intel_pxp_is_enabled/
         supported/ active_on_gt" (Daniele)
       - Upgrade _gt_supports_pxp to replace what was intel_gtpxp_is
         supported as the new intel_pxp_is_supported_on_gt to check for
         PXP feature support vs the tee support for huc authentication.
         Fix pxp-debugfs-registration to use only the former to decide
         support. (Daniele)
       - Couple minor optimizations.
   v2: - Avoid introduction of new device info or gt variables and use
         existing checks / macros to differentiate the correct GT->PXP
         control ownership (Daniele Ceraolo Spurio)
       - Don't reuse the updated global-checkers for per-GT callers (such
         as other files within PXP) to avoid unnecessary GT-reparsing,
         expose a replacement helper like the prior ones. (Daniele).
   v1: - Add one more patch to the series for the intel_pxp suspend/resume
         for similar refactoring

References: https://patchwork.freedesktop.org/patch/msgid/20221202011407.4068371-1-alan.previn.teres.alexis@intel.com
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 -
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |   2 -
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   8 --
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 -
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  18 +++
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 126 ++++++++++++++----
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |   9 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |   8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  36 ++---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h  |   4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |   9 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |  18 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |   6 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  10 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  31 ++---
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   8 ++
 23 files changed, 209 insertions(+), 115 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 76490cc59d8f..4b79c2d2d617 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1848,7 +1848,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
+	return intel_pxp_key_check(i915->pxp, obj, false) == 0;
 }
 
 static bool pxp_is_borked(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7f2831efc798..46e71f62fcec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 
 	if (!protected) {
 		pc->uses_protected_content = false;
-	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
+	} else if (!intel_pxp_is_enabled(i915->pxp)) {
 		ret = -ENODEV;
 	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
 		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
@@ -271,8 +271,8 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		 */
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
-			ret = intel_pxp_start(&to_gt(i915)->pxp);
+		if (!intel_pxp_is_active(i915->pxp))
+			ret = intel_pxp_start(i915->pxp);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 33673fe7ee0a..005a7f842784 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
 	if (ext.flags)
 		return -EINVAL;
 
-	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
+	if (!intel_pxp_is_enabled(ext_data->i915->pxp))
 		return -ENODEV;
 
 	ext_data->flags |= I915_BO_PROTECTED;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 29e9e8d5b6fe..2ea49bc21ed3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -869,7 +869,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
+			err = intel_pxp_key_check(eb->i915->pxp, obj, true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d114347c004e..28278cc607e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -8,7 +8,6 @@
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
-#include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
 #include "i915_perf_oa_regs.h"
@@ -762,8 +761,6 @@ int intel_gt_init(struct intel_gt *gt)
 
 	intel_migrate_init(&gt->migrate, gt);
 
-	intel_pxp_init(&gt->pxp);
-
 	goto out_fw;
 err_gt:
 	__intel_gt_disable(gt);
@@ -803,8 +800,6 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 	intel_rps_driver_unregister(&gt->rps);
 	intel_gsc_fini(&gt->gsc);
 
-	intel_pxp_fini(&gt->pxp);
-
 	/*
 	 * Upon unregistering the device to prevent any new users, cancel
 	 * all in-flight requests so that we can quickly unbind the active
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index dd53641f3637..5fc2df01aa0d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -12,7 +12,6 @@
 #include "intel_gt_mcr.h"
 #include "intel_gt_pm_debugfs.h"
 #include "intel_sseu_debugfs.h"
-#include "pxp/intel_pxp_debugfs.h"
 #include "uc/intel_uc_debugfs.h"
 
 int intel_gt_debugfs_reset_show(struct intel_gt *gt, u64 *val)
@@ -99,7 +98,6 @@ void intel_gt_debugfs_register(struct intel_gt *gt)
 	intel_sseu_debugfs_register(gt, root);
 
 	intel_uc_debugfs_register(&gt->uc, root);
-	intel_pxp_debugfs_register(&gt->pxp, root);
 }
 
 void intel_gt_debugfs_register_files(struct dentry *root,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 6f6b9e04d916..8fac2660e16b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -76,7 +76,7 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 		return gen11_rps_irq_handler(&media_gt->rps, iir);
 
 	if (instance == OTHER_KCR_INSTANCE)
-		return intel_pxp_irq_handler(&gt->pxp, iir);
+		return intel_pxp_irq_handler(gt->i915->pxp, iir);
 
 	if (instance == OTHER_GSC_INSTANCE)
 		return intel_gsc_irq_handler(gt, iir);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 16db85fab0b1..c065950d0bad 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -304,8 +304,6 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
-	intel_pxp_resume(&gt->pxp);
-
 	user_forcewake(gt, false);
 
 out_fw:
@@ -339,8 +337,6 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 {
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
-
-	intel_pxp_suspend_prepare(&gt->pxp);
 }
 
 static suspend_state_t pm_suspend_target(void)
@@ -365,7 +361,6 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 	GEM_BUG_ON(gt->awake);
 
 	intel_uc_suspend(&gt->uc);
-	intel_pxp_suspend(&gt->pxp);
 
 	/*
 	 * On disabling the device, we want to turn off HW access to memory
@@ -393,7 +388,6 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
-	intel_pxp_runtime_suspend(&gt->pxp);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -411,8 +405,6 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	if (ret)
 		return ret;
 
-	intel_pxp_runtime_resume(&gt->pxp);
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index f519aa4a004a..0b6da2aa9718 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -30,7 +30,6 @@
 #include "intel_rps_types.h"
 #include "intel_migrate_types.h"
 #include "intel_wakeref.h"
-#include "pxp/intel_pxp_types.h"
 #include "intel_wopcm.h"
 
 struct drm_i915_private;
@@ -275,8 +274,6 @@ struct intel_gt {
 		u8 wb_index; /* Only used on HAS_L3_CCS_READ() platforms */
 	} mocs;
 
-	struct intel_pxp pxp;
-
 	/* gt/gtN sysfs */
 	struct kobject sysfs_gt;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index 4f246416db17..534b0aa43316 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -32,7 +32,7 @@ int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc)
 
 	GEM_WARN_ON(intel_uc_fw_is_loaded(&huc->fw));
 
-	ret = intel_pxp_huc_load_and_auth(&huc_to_gt(huc)->pxp);
+	ret = intel_pxp_huc_load_and_auth(huc_to_gt(huc)->i915->pxp);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4e1bb3c23c63..d716d12c7fc9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -73,6 +73,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "pxp/intel_pxp.h"
+#include "pxp/intel_pxp_debugfs.h"
 #include "pxp/intel_pxp_pm.h"
 
 #include "i915_file_private.h"
@@ -759,6 +761,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_driver_register(gt);
 
+	intel_pxp_debugfs_register(dev_priv->pxp);
+
 	i915_hwmon_register(dev_priv);
 
 	intel_display_driver_register(dev_priv);
@@ -790,6 +794,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
+	intel_pxp_fini(dev_priv);
+
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_driver_unregister(gt);
 
@@ -933,6 +939,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto out_cleanup_modeset2;
 
+	intel_pxp_init(i915);
+
 	ret = intel_modeset_init(i915);
 	if (ret)
 		goto out_cleanup_gem;
@@ -1168,6 +1176,8 @@ static int i915_drm_prepare(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 
+	intel_pxp_suspend_prepare(i915->pxp);
+
 	/*
 	 * NB intel_display_suspend() may issue new requests after we've
 	 * ostensibly marked the GPU as ready-to-sleep here. We need to
@@ -1248,6 +1258,8 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 
 	disable_rpm_wakeref_asserts(rpm);
 
+	intel_pxp_suspend(dev_priv->pxp);
+
 	i915_gem_suspend_late(dev_priv);
 
 	for_each_gt(gt, dev_priv, i)
@@ -1360,6 +1372,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	i915_gem_resume(dev_priv);
 
+	intel_pxp_resume(dev_priv->pxp);
+
 	intel_modeset_init_hw(dev_priv);
 	intel_init_clock_gating(dev_priv);
 	intel_hpd_init(dev_priv);
@@ -1643,6 +1657,8 @@ static int intel_runtime_suspend(struct device *kdev)
 	 */
 	i915_gem_runtime_suspend(dev_priv);
 
+	intel_pxp_runtime_suspend(dev_priv->pxp);
+
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_runtime_suspend(gt);
 
@@ -1747,6 +1763,8 @@ static int intel_runtime_resume(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_runtime_resume(gt);
 
+	intel_pxp_runtime_resume(dev_priv->pxp);
+
 	/*
 	 * On VLV/CHV display interrupts are part of the display
 	 * power well, so hpd is reinitialized from there. For
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a8a5bd426e78..7a4e9dc15b69 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -72,6 +72,7 @@ struct intel_encoder;
 struct intel_limit;
 struct intel_overlay_error_state;
 struct vlv_s0ix_state;
+struct intel_pxp;
 
 #define I915_GEM_GPU_DOMAINS \
 	(I915_GEM_DOMAIN_RENDER | \
@@ -364,6 +365,8 @@ struct drm_i915_private {
 		struct file *mmap_singleton;
 	} gem;
 
+	struct intel_pxp *pxp;
+
 	u8 pch_ssc_use;
 
 	/* For i915gm/i945gm vblank irq workaround */
@@ -919,10 +922,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
-#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
-			    INTEL_INFO(dev_priv)->has_pxp) && \
-			    VDBOX_MASK(to_gt(dev_priv)))
-
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
 #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f67546..85fcb8db6c3d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -3,13 +3,19 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 #include <linux/workqueue.h>
+
+#include "gem/i915_gem_context.h"
+
+#include "gt/intel_context.h"
+#include "gt/intel_gt.h"
+
+#include "i915_drv.h"
+
 #include "intel_pxp.h"
 #include "intel_pxp_irq.h"
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
-#include "gem/i915_gem_context.h"
-#include "gt/intel_context.h"
-#include "i915_drv.h"
+#include "intel_pxp_types.h"
 
 /**
  * DOC: PXP
@@ -39,19 +45,19 @@
  * performed via the mei_pxp component module.
  */
 
-struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
+bool intel_pxp_is_supported(const struct intel_pxp *pxp)
 {
-	return container_of(pxp, struct intel_gt, pxp);
+	return IS_ENABLED(CONFIG_DRM_I915_PXP) && pxp;
 }
 
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
 {
-	return pxp->ce;
+	return IS_ENABLED(CONFIG_DRM_I915_PXP) && pxp && pxp->ce;
 }
 
 bool intel_pxp_is_active(const struct intel_pxp *pxp)
 {
-	return pxp->arb_is_valid;
+	return IS_ENABLED(CONFIG_DRM_I915_PXP) && pxp && pxp->arb_is_valid;
 }
 
 /* KCR register definitions */
@@ -74,7 +80,7 @@ static void kcr_pxp_disable(struct intel_gt *gt)
 static int create_vcs_context(struct intel_pxp *pxp)
 {
 	static struct lock_class_key pxp_lock;
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 	struct intel_engine_cs *engine;
 	struct intel_context *ce;
 	int i;
@@ -109,7 +115,7 @@ static void destroy_vcs_context(struct intel_pxp *pxp)
 
 static void pxp_init_full(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 	int ret;
 
 	/*
@@ -138,31 +144,97 @@ static void pxp_init_full(struct intel_pxp *pxp)
 	destroy_vcs_context(pxp);
 }
 
-void intel_pxp_init(struct intel_pxp *pxp)
+static struct intel_gt *find_gt_for_required_teelink(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	/*
+	 * NOTE: Only certain platforms require PXP-tee-backend dependencies
+	 * for HuC authentication. For now, its limited to DG2.
+	 */
+	if (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_INTEL_MEI_GSC) &&
+	    intel_huc_is_loaded_by_gsc(&i915->gt0.uc.huc) && intel_uc_uses_huc(&i915->gt0.uc))
+		return &i915->gt0;
 
-	/* we rely on the mei PXP module */
-	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
-		return;
+	return NULL;
+}
+
+static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_private *i915)
+{
+	if (!IS_ENABLED(CONFIG_DRM_I915_PXP) || !INTEL_INFO(i915)->has_pxp)
+		return NULL;
+
+	/*
+	 * For MTL onwards, PXP-controller-GT needs to have a valid GSC engine
+	 * on the media GT. NOTE: if we have a media-tile with a GSC-engine,
+	 * the VDBOX is already present so skip that check
+	 */
+	if (i915->media_gt && HAS_ENGINE(i915->media_gt, GSC0))
+		return i915->media_gt;
+
+	/*
+	 * Else we rely on mei-pxp module but only on legacy platforms
+	 * prior to having separate media GTs and has a valid VDBOX.
+	 */
+	if (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !i915->media_gt && VDBOX_MASK(&i915->gt0))
+		return &i915->gt0;
+
+	return NULL;
+}
+
+int intel_pxp_init(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	bool is_full_feature = false;
 
 	/*
-	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
+	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
+	 * we still need it if PXP's backend tee transport is needed.
+	 */
+	gt = find_gt_for_required_protected_content(i915);
+	if (gt)
+		is_full_feature = true;
+	else
+		gt = find_gt_for_required_teelink(i915);
+
+	if (!gt)
+		return -ENODEV;
+
+	/*
+	 * At this point, we will either enable full featured PXP capabilities
+	 * including session and object management, or we will init the backend tee
+	 * channel for internal users such as HuC loading by GSC
+	 */
+	i915->pxp = kzalloc(sizeof(*i915->pxp), GFP_KERNEL);
+	if (!i915->pxp)
+		return -ENOMEM;
+
+	i915->pxp->ctrl_gt = gt;
+
+	/*
+	 * If full PXP feature is not available but HuC is loaded by GSC on pre-MTL
+	 * such as DG2, we can skip the init of
 	 * the full PXP session/object management and just init the tee channel.
 	 */
-	if (HAS_PXP(gt->i915))
-		pxp_init_full(pxp);
-	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
-		intel_pxp_tee_component_init(pxp);
+	if (is_full_feature)
+		pxp_init_full(i915->pxp);
+	else
+		intel_pxp_tee_component_init(i915->pxp);
+
+	return 0;
 }
 
-void intel_pxp_fini(struct intel_pxp *pxp)
+void intel_pxp_fini(struct drm_i915_private *i915)
 {
-	pxp->arb_is_valid = false;
+	if (!i915->pxp)
+		return;
 
-	intel_pxp_tee_component_fini(pxp);
+	i915->pxp->arb_is_valid = false;
 
-	destroy_vcs_context(pxp);
+	intel_pxp_tee_component_fini(i915->pxp);
+
+	destroy_vcs_context(i915->pxp);
+
+	kfree(i915->pxp);
+	i915->pxp = NULL;
 }
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp)
@@ -173,7 +245,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp)
 
 static void pxp_queue_termination(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 
 	/*
 	 * We want to get the same effect as if we received a termination
@@ -238,13 +310,13 @@ int intel_pxp_start(struct intel_pxp *pxp)
 
 void intel_pxp_init_hw(struct intel_pxp *pxp)
 {
-	kcr_pxp_enable(pxp_to_gt(pxp));
+	kcr_pxp_enable(pxp->ctrl_gt);
 	intel_pxp_irq_enable(pxp);
 }
 
 void intel_pxp_fini_hw(struct intel_pxp *pxp)
 {
-	kcr_pxp_disable(pxp_to_gt(pxp));
+	kcr_pxp_disable(pxp->ctrl_gt);
 
 	intel_pxp_irq_disable(pxp);
 }
@@ -278,7 +350,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
 
 void intel_pxp_invalidate(struct intel_pxp *pxp)
 {
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
 	struct i915_gem_context *ctx, *cn;
 
 	/* ban all contexts marked as protected */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 2da309088c6d..04440fada711 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -9,15 +9,16 @@
 #include <linux/errno.h>
 #include <linux/types.h>
 
-struct intel_pxp;
 struct drm_i915_gem_object;
+struct drm_i915_private;
+struct intel_pxp;
 
-struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_supported(const struct intel_pxp *pxp);
 bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
 
-void intel_pxp_init(struct intel_pxp *pxp);
-void intel_pxp_fini(struct intel_pxp *pxp);
+int intel_pxp_init(struct drm_i915_private *i915);
+void intel_pxp_fini(struct drm_i915_private *i915);
 
 void intel_pxp_init_hw(struct intel_pxp *pxp);
 void intel_pxp_fini_hw(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index f41e45763d0d..0eee51c4a772 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -3,9 +3,6 @@
  * Copyright(c) 2020, Intel Corporation. All rights reserved.
  */
 
-#include "intel_pxp.h"
-#include "intel_pxp_cmd.h"
-#include "intel_pxp_session.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gpu_commands.h"
@@ -13,6 +10,11 @@
 
 #include "i915_trace.h"
 
+#include "intel_pxp.h"
+#include "intel_pxp_cmd.h"
+#include "intel_pxp_session.h"
+#include "intel_pxp_types.h"
+
 /* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
 #define MFX_WAIT_PXP (MFX_WAIT | \
 		      MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4359e8be4101..4b8e70caa3ad 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -9,18 +9,20 @@
 #include <drm/drm_print.h>
 
 #include "gt/intel_gt_debugfs.h"
+
 #include "i915_drv.h"
+
 #include "intel_pxp.h"
 #include "intel_pxp_debugfs.h"
 #include "intel_pxp_irq.h"
+#include "intel_pxp_types.h"
 
 static int pxp_info_show(struct seq_file *m, void *data)
 {
 	struct intel_pxp *pxp = m->private;
 	struct drm_printer p = drm_seq_file_printer(m);
-	bool enabled = intel_pxp_is_enabled(pxp);
 
-	if (!enabled) {
+	if (!intel_pxp_is_enabled(pxp)) {
 		drm_printf(&p, "pxp disabled\n");
 		return 0;
 	}
@@ -30,7 +32,8 @@ static int pxp_info_show(struct seq_file *m, void *data)
 
 	return 0;
 }
-DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(pxp_info);
+
+DEFINE_SHOW_ATTRIBUTE(pxp_info);
 
 static int pxp_terminate_get(void *data, u64 *val)
 {
@@ -41,7 +44,7 @@ static int pxp_terminate_get(void *data, u64 *val)
 static int pxp_terminate_set(void *data, u64 val)
 {
 	struct intel_pxp *pxp = data;
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 
 	if (!intel_pxp_is_active(pxp))
 		return -ENODEV;
@@ -59,23 +62,26 @@ static int pxp_terminate_set(void *data, u64 val)
 }
 
 DEFINE_SIMPLE_ATTRIBUTE(pxp_terminate_fops, pxp_terminate_get, pxp_terminate_set, "%llx\n");
-void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
+
+void intel_pxp_debugfs_register(struct intel_pxp *pxp)
 {
-	static const struct intel_gt_debugfs_file files[] = {
-		{ "info", &pxp_info_fops, NULL },
-		{ "terminate_state", &pxp_terminate_fops, NULL },
-	};
-	struct dentry *root;
+	struct drm_minor *minor;
+	struct dentry *pxproot;
 
-	if (!gt_root)
+	if (!intel_pxp_is_supported(pxp))
 		return;
 
-	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
+	minor = pxp->ctrl_gt->i915->drm.primary;
+	if (!minor->debugfs_root)
 		return;
 
-	root = debugfs_create_dir("pxp", gt_root);
-	if (IS_ERR(root))
+	pxproot = debugfs_create_dir("pxp", minor->debugfs_root);
+	if (IS_ERR(pxproot))
 		return;
 
-	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), pxp);
+	debugfs_create_file("info", 0444, pxproot,
+			    pxp, &pxp_info_fops);
+
+	debugfs_create_file("terminate_state", 0644, pxproot,
+			    pxp, &pxp_terminate_fops);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
index 7e0c3d2f5d7e..299382b59e66 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
@@ -10,10 +10,10 @@ struct intel_pxp;
 struct dentry;
 
 #ifdef CONFIG_DRM_I915_PXP
-void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *root);
+void intel_pxp_debugfs_register(struct intel_pxp *pxp);
 #else
 static inline void
-intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *root)
+intel_pxp_debugfs_register(struct intel_pxp *pxp)
 {
 }
 #endif
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 2e1165522950..812c8bc7005e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -18,8 +18,8 @@
 
 int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
-	struct intel_huc *huc = &gt->uc.huc;
+	struct intel_gt *gt;
+	struct intel_huc *huc;
 	struct pxp43_start_huc_auth_in huc_in = {0};
 	struct pxp43_start_huc_auth_out huc_out = {0};
 	dma_addr_t huc_phys_addr;
@@ -27,9 +27,12 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	u8 fence_id = 0;
 	int err;
 
-	if (!pxp->pxp_component)
+	if (!pxp || !pxp->pxp_component)
 		return -ENODEV;
 
+	gt = pxp->ctrl_gt;
+	huc = &gt->uc.huc;
+
 	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
 
 	/* write the PXP message into the lmem (the sg list) */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index c28be430718a..91e9622c07d0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -3,14 +3,18 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 #include <linux/workqueue.h>
-#include "intel_pxp.h"
-#include "intel_pxp_irq.h"
-#include "intel_pxp_session.h"
+
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_gt_types.h"
+
 #include "i915_irq.h"
 #include "i915_reg.h"
+
+#include "intel_pxp.h"
+#include "intel_pxp_irq.h"
+#include "intel_pxp_session.h"
+#include "intel_pxp_types.h"
 #include "intel_runtime_pm.h"
 
 /**
@@ -20,11 +24,13 @@
  */
 void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt;
 
 	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
 		return;
 
+	gt = pxp->ctrl_gt;
+
 	lockdep_assert_held(gt->irq_lock);
 
 	if (unlikely(!iir))
@@ -62,7 +68,7 @@ static inline void pxp_irq_reset(struct intel_gt *gt)
 
 void intel_pxp_irq_enable(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 
 	spin_lock_irq(gt->irq_lock);
 
@@ -77,7 +83,7 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
 
 void intel_pxp_irq_disable(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 
 	/*
 	 * We always need to submit a global termination when we re-enable the
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 6a7d4e2ee138..892d39cc61c1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -3,11 +3,13 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 
+#include "i915_drv.h"
+
 #include "intel_pxp.h"
 #include "intel_pxp_irq.h"
 #include "intel_pxp_pm.h"
 #include "intel_pxp_session.h"
-#include "i915_drv.h"
+#include "intel_pxp_types.h"
 
 void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
 {
@@ -26,7 +28,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
-	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
+	with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref) {
 		intel_pxp_fini_hw(pxp);
 		pxp->hw_state_invalidated = false;
 	}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 85572360c71a..ae413580b81a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -20,7 +20,7 @@
 
 static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
 {
-	struct intel_uncore *uncore = pxp_to_gt(pxp)->uncore;
+	struct intel_uncore *uncore = pxp->ctrl_gt->uncore;
 	intel_wakeref_t wakeref;
 	u32 sip = 0;
 
@@ -33,7 +33,7 @@ static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
 
 static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_play)
 {
-	struct intel_uncore *uncore = pxp_to_gt(pxp)->uncore;
+	struct intel_uncore *uncore = pxp->ctrl_gt->uncore;
 	intel_wakeref_t wakeref;
 	u32 mask = BIT(id);
 	int ret;
@@ -56,7 +56,7 @@ static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_pla
 
 static int pxp_create_arb_session(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 	int ret;
 
 	pxp->arb_is_valid = false;
@@ -90,7 +90,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
 static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 {
 	int ret;
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 
 	/* must mark termination in progress calling this function */
 	GEM_WARN_ON(pxp->arb_is_valid);
@@ -141,7 +141,7 @@ static void pxp_terminate_complete(struct intel_pxp *pxp)
 static void pxp_session_work(struct work_struct *work)
 {
 	struct intel_pxp *pxp = container_of(work, typeof(*pxp), session_work);
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 	intel_wakeref_t wakeref;
 	u32 events = 0;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index b0c9170b1395..d50354bfb993 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -11,25 +11,20 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
+
 #include "intel_pxp.h"
-#include "intel_pxp_session.h"
-#include "intel_pxp_tee.h"
 #include "intel_pxp_cmd_interface_42.h"
 #include "intel_pxp_huc.h"
-
-static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
-{
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-
-	return &to_gt(i915)->pxp;
-}
+#include "intel_pxp_session.h"
+#include "intel_pxp_tee.h"
+#include "intel_pxp_types.h"
 
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 				    void *msg_in, u32 msg_in_size,
 				    void *msg_out, u32 msg_out_max_size,
 				    u32 *msg_out_rcv_size)
 {
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
 	struct i915_pxp_component *pxp_component = pxp->pxp_component;
 	int ret = 0;
 
@@ -79,7 +74,7 @@ int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
 {
 	/* TODO: for bigger objects we need to use a sg of 4k pages */
 	const size_t max_msg_size = PAGE_SIZE;
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
 	struct i915_pxp_component *pxp_component = pxp->pxp_component;
 	unsigned int offset = 0;
 	struct scatterlist *sg;
@@ -127,8 +122,8 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
-	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
+	struct intel_pxp *pxp = i915->pxp;
+	struct intel_uc *uc = &pxp->ctrl_gt->uc;
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
@@ -164,7 +159,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 					  struct device *tee_kdev, void *data)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	struct intel_pxp *pxp = i915->pxp;
 	intel_wakeref_t wakeref;
 
 	if (intel_pxp_is_enabled(pxp))
@@ -183,7 +178,7 @@ static const struct component_ops i915_pxp_tee_component_ops = {
 
 static int alloc_streaming_command(struct intel_pxp *pxp)
 {
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
 	struct drm_i915_gem_object *obj = NULL;
 	void *cmd;
 	int err;
@@ -244,7 +239,7 @@ static void free_streaming_command(struct intel_pxp *pxp)
 int intel_pxp_tee_component_init(struct intel_pxp *pxp)
 {
 	int ret;
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_gt *gt = pxp->ctrl_gt;
 	struct drm_i915_private *i915 = gt->i915;
 
 	mutex_init(&pxp->tee_mutex);
@@ -271,7 +266,7 @@ int intel_pxp_tee_component_init(struct intel_pxp *pxp)
 
 void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 {
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
 
 	if (!pxp->pxp_component_added)
 		return;
@@ -285,7 +280,7 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 					 int arb_session_id)
 {
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
 	struct pxp42_create_arb_in msg_in = {0};
 	struct pxp42_create_arb_out msg_out = {0};
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index f74b1e11a505..7dc5f08d1583 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -12,12 +12,20 @@
 #include <linux/workqueue.h>
 
 struct intel_context;
+struct intel_gt;
 struct i915_pxp_component;
+struct drm_i915_private;
 
 /**
  * struct intel_pxp - pxp state
  */
 struct intel_pxp {
+	/**
+	 * @ctrl_gt: poiner to the tile that owns the controls for PXP subsystem assets that
+	 * the VDBOX, the KCR engine (and GSC CS depending on the platform)
+	 */
+	struct intel_gt *ctrl_gt;
+
 	/**
 	 * @pxp_component: i915_pxp_component struct of the bound mei_pxp
 	 * module. Only set and cleared inside component bind/unbind functions,

base-commit: 886c7f9510ce20f099d27d9e7d9de32402c9e5e6
-- 
2.34.1

