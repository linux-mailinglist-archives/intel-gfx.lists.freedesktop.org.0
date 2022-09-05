Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5195AD8B6
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E561510E485;
	Mon,  5 Sep 2022 18:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEE310E477
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400902; x=1693936902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ey+fGWpeiEvwyF8V7LK+oc5X6KsMIzQ9PqS+0tWxyoE=;
 b=mw3RNN/8ipkyWuXN6Y8BcZLsHapCj/11vxSF0CfGFFGMeUEM2LL3d7GD
 AjeQN13ilei05V+RQ3ymrpyxQ0EOn4Kpd/9ibQ6vheQj2cHQIgTQmyuaC
 JKbO/xmk6m/IebLKDW7/H4D5xde+YCobPvEN1qKNoLI09rOLdSdAtRmur
 Kqd7sUJdaavEvHX33vuvbPzLM6q53w6xQ7yQmxtjJwjCWC3LzGCvjLF/E
 W5eH3JDSa+NZwNL9W3wQ7g0o75yNknihj4VD1S2BUpzdIdErbyeW0czrU
 abs802k5t4MiFlBB8i28A6ouIjjH6yjrX9qL5SfiMGYn4FBsutSsWB16Y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="283427379"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="283427379"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="590992325"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 21:01:07 +0300
Message-Id: <14e02b1cf3213d7c8c4164903a52371c70cac8d8.1662400767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662400767.git.jani.nikula@intel.com>
References: <cover.1662400767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display: move IPC under display
 sub-struct
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display IPC related members under drm_i915_private display
sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_ipc.c          | 6 +++---
 drivers/gpu/drm/i915/i915_drv.h                   | 2 --
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9086a612365e..4c9a6b9c5512 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -355,6 +355,10 @@ struct intel_display {
 		struct mutex comp_mutex;
 	} hdcp;
 
+	struct {
+		bool enabled;
+	} ipc;
+
 	struct {
 		struct i915_power_domains domains;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ipc.c b/drivers/gpu/drm/i915/display/intel_ipc.c
index 1285d88b5d25..8fd1251c40bd 100644
--- a/drivers/gpu/drm/i915/display/intel_ipc.c
+++ b/drivers/gpu/drm/i915/display/intel_ipc.c
@@ -10,7 +10,7 @@
 
 bool intel_ipc_is_enabled(struct drm_i915_private *i915)
 {
-	return i915->ipc_enabled;
+	return i915->display.ipc.enabled;
 }
 
 void intel_ipc_enable(struct drm_i915_private *i915)
@@ -50,7 +50,7 @@ void intel_ipc_init(struct drm_i915_private *i915)
 	if (!HAS_IPC(i915))
 		return;
 
-	i915->ipc_enabled = intel_ipc_can_enable(i915);
+	i915->display.ipc.enabled = intel_ipc_can_enable(i915);
 
 	intel_ipc_enable(i915);
 }
@@ -88,7 +88,7 @@ static ssize_t intel_ipc_status_write(struct file *file, const char __user *ubuf
 		if (!intel_ipc_is_enabled(i915) && enable)
 			drm_info(&i915->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
-		i915->ipc_enabled = enable;
+		i915->display.ipc.enabled = enable;
 		intel_ipc_enable(i915);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c9cca165bf5d..1c95c75714da 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -395,8 +395,6 @@ struct drm_i915_private {
 	 */
 	u8 snps_phy_failed_calibration;
 
-	bool ipc_enabled;
-
 	struct i915_pmu pmu;
 
 	struct i915_drm_clients clients;
-- 
2.34.1

