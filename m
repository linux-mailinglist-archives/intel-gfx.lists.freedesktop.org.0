Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E604D3F4E6E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4083F899D6;
	Mon, 23 Aug 2021 16:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A243C899D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:33:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="197387135"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="197387135"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:33:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="493073494"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:33:44 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 kernel test robot <lkp@intel.com>, Matthew Brost <matthew.brost@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Date: Mon, 23 Aug 2021 09:31:37 -0700
Message-Id: <20210823163137.19770-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: drop guc_communication_enabled
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The function is only used from within GEM_BUG_ON(), which is causing
warnings with Wunneeded-internal-declaration in some builds. Since the
function is a simple wrapper around a CT function, we can just call the
CT function directly instead.

Fixes: 1fb12c587152 ("drm/i915/guc: skip disabling CTBs before sanitizing the GuC")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index b104fb7607eb..86c318516e14 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -172,11 +172,6 @@ void intel_uc_driver_remove(struct intel_uc *uc)
 	__uc_free_load_err_log(uc);
 }
 
-static inline bool guc_communication_enabled(struct intel_guc *guc)
-{
-	return intel_guc_ct_enabled(&guc->ct);
-}
-
 /*
  * Events triggered while CT buffers are disabled are logged in the SCRATCH_15
  * register using the same bits used in the CT message payload. Since our
@@ -210,7 +205,7 @@ static void guc_get_mmio_msg(struct intel_guc *guc)
 static void guc_handle_mmio_msg(struct intel_guc *guc)
 {
 	/* we need communication to be enabled to reply to GuC */
-	GEM_BUG_ON(!guc_communication_enabled(guc));
+	GEM_BUG_ON(!intel_guc_ct_enabled(&guc->ct));
 
 	spin_lock_irq(&guc->irq_lock);
 	if (guc->mmio_msg) {
@@ -226,7 +221,7 @@ static int guc_enable_communication(struct intel_guc *guc)
 	struct drm_i915_private *i915 = gt->i915;
 	int ret;
 
-	GEM_BUG_ON(guc_communication_enabled(guc));
+	GEM_BUG_ON(intel_guc_ct_enabled(&guc->ct));
 
 	ret = i915_inject_probe_error(i915, -ENXIO);
 	if (ret)
@@ -662,7 +657,7 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 		return 0;
 
 	/* Make sure we enable communication if and only if it's disabled */
-	GEM_BUG_ON(enable_communication == guc_communication_enabled(guc));
+	GEM_BUG_ON(enable_communication == intel_guc_ct_enabled(&guc->ct));
 
 	if (enable_communication)
 		guc_enable_communication(guc);
-- 
2.33.0

