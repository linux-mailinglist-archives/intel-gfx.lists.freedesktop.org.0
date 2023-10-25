Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5BA7D687A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE84610E642;
	Wed, 25 Oct 2023 10:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A9610E62F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698229715; x=1729765715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0A8eHtzBhg4YwjB7BPLmtcOmgtv5FlxTsVm0qCk9trk=;
 b=W2/AeZPsXJSRXR+3PWF/YpsS1lMsI6gWhPTHRdZryn5I6q5EhZUKv9c3
 CF44Z7D576Ib6KngTajDT0dlR1svYl+n19uhqyk1sf+QgId4461YZST46
 x9cjFMoBsy6KqFn9PtN4Q9xuTMeJ87e9S1heMCFK0Op5pEEWozV4FvBob
 sOs//OyG/Tgyxr6ftFh/4Yse5mR8ZcX6fkWemfbIohydyPEpqJ87+956a
 ZS+uCI7anraF+kUTMl+bZAdXuJE4XK8jzIzvVAEMh/Nau5O8ErOZWvizJ
 LcH9mgxIMq9euSHTNpD1v9cNDJgPHpx/Ja70HwJi7cf4E75KjVp0CBssi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="391148933"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="391148933"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="1090170810"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="1090170810"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:28:32 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 12:28:26 +0200
Message-ID: <20231025102826.16955-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Apply notify_guc to all GTs
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Handle platforms with multiple GTs by iterate over all GTs.
Add a Fixes commit so this gets propagated for MTL support.

Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake")
Suggested-by: John Harrison <john.c.harrison@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs_params.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
index 614bde321589..8bca02025e09 100644
--- a/drivers/gpu/drm/i915/i915_debugfs_params.c
+++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
@@ -38,10 +38,13 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
 
 static int notify_guc(struct drm_i915_private *i915)
 {
-	int ret = 0;
+	struct intel_gt *gt;
+	int i, ret = 0;
 
-	if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
-		ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
+	for_each_gt(gt, i915, i) {
+		if (intel_uc_uses_guc_submission(&gt->uc))
+			ret = intel_guc_global_policies_update(&gt->uc.guc);
+	}
 
 	return ret;
 }
-- 
2.41.0

