Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64E93CC15C
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 07:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F5C6EA1F;
	Sat, 17 Jul 2021 05:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FA46EA14
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 05:14:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="191188870"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="191188870"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="563335068"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 22:14:23 -0700
Message-Id: <20210717051426.4120328-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210717051426.4120328-1-matthew.d.roper@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/adl_s: Wa_14011765242 is also
 needed on A1 display stepping
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the workaround bound to include A1 display.

Bspec: 54370
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 4 ++--
 drivers/gpu/drm/i915/intel_step.h        | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d2a514d2551d..dd63dd2c45ad 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -261,8 +261,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
-	/* Wa_14011765242: adl-s A0 */
-	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
+	/* Wa_14011765242: adl-s A0,A1 */
+	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A1))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 0;
 	else if (GRAPHICS_VER(dev_priv) >= 10) {
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 88a77159703e..41567d9b7c35 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -22,6 +22,7 @@ struct intel_step_info {
 enum intel_step {
 	STEP_NONE = 0,
 	STEP_A0,
+	STEP_A1,
 	STEP_A2,
 	STEP_B0,
 	STEP_B1,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
