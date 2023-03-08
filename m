Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8EB6B03DA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 11:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D25D10E677;
	Wed,  8 Mar 2023 10:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A1B10E10A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 10:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678270752; x=1709806752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YrCs8OkDg0WH9reNGIzTvnXdo2SagM2/tBcE1lLaIMI=;
 b=i2Mra0rHUAeuFrLcSJ+ppMKoz3B0DL1K3vq6VR2FxB53smuz3vmgHv9i
 cR2m6+VbgUh5bKDx5ZNXioBCbRXztCz+z8y6K8hKsxq20aXUBtFW4xzIU
 QQDcjt0BwZ6+xQtXVPkIKb/9fJWOn2duP96jjfV4oImEU/sAg5LKFr6e+
 l5DCgJdv9mYCPXBiiqz19nufkvDbPei7V/06OzeQ44JglBMONuYrfvlMk
 Ajjv4lwK1fIksp7D2s3WjLjuwFjiVd1I2oVW4EYRvabSXBVDMB5OLmRPF
 aWObhesa26JajBgQ6kC7ok0RmxoMGrWIvGx6+BkgKiDDIvC4fEjNSj7qF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="319949191"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="319949191"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:18:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="765949631"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="765949631"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:18:56 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 15:51:09 +0530
Message-Id: <20230308102109.2386712-3-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308102109.2386712-1-badal.nilawar@intel.com>
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Disable MC6 for MTL A step
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
Cc: hima.b.chilmakuru@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, srikanth.nandamuri@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The Wa_14017073508 require to send Media Busy/Idle mailbox while
accessing Media tile. As of now it is getting handled while __gt_unpark,
__gt_park. But there are various corner cases where forcewakes are taken
without __gt_unpark i.e. without sending Busy Mailbox especially during
register reads. Forcewakes are taken without busy mailbox leads to
GPU HANG. So bringing mailbox calls under forcewake calls are no feasible
option as forcewake calls are atomic and mailbox calls are blocking.
The issue already fixed in B step so disabling MC6 on A step and
reverting previous commits which handles Wa_14017073508

Fixes: 8f70f1ec587d ("drm/i915/mtl: Add Wa_14017073508 for SAMedia")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 5c91622dfca4..f4150f61f39c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -486,6 +486,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 static bool rc6_supported(struct intel_rc6 *rc6)
 {
 	struct drm_i915_private *i915 = rc6_to_i915(rc6);
+	struct intel_gt *gt = rc6_to_gt(rc6);
 
 	if (!HAS_RC6(i915))
 		return false;
@@ -502,6 +503,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
+	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
+	    gt->type == GT_MEDIA) {
+		drm_notice(&i915->drm,
+			   "Media RC6 disabled on A step\n");
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.25.1

