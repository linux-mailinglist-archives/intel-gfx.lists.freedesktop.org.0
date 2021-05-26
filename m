Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4E1391098
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 08:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618776EC0E;
	Wed, 26 May 2021 06:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F67D6EB9F;
 Wed, 26 May 2021 06:24:51 +0000 (UTC)
IronPort-SDR: 9SoGorega7sHB6+767q6RDFIafi5CNU6sZo1F0VvKTyij0+OVvOkfYpcDsxyqnuauqKnPwIT+a
 ZZK4sBS+dU1Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="182033746"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="182033746"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:49 -0700
IronPort-SDR: BHOPfJLqSr3G5h2sChZ7o6DNPrG1fXraTOeYhwHJUzqGXKqQ5HmMonTWnw0CHNE6+aE3vdhigc
 4aEry8GuSPbA==
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="633376827"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:49 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 25 May 2021 23:42:32 -0700
Message-Id: <20210526064237.77853-14-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210526064237.77853-1-matthew.brost@intel.com>
References: <20210526064237.77853-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/18] drm/i915/guc: Relax CTB response timeout
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

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

In upcoming patch we will allow more CTB requests to be sent in
parallel to the GuC for processing, so we shouldn't assume any more
that GuC will always reply without 10ms.

Use bigger value from CONFIG_DRM_I915_GUC_CTB_TIMEOUT instead.

v2: Add CONFIG_DRM_I915_GUC_CTB_TIMEOUT config option

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile      | 9 +++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 5 ++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index 39328567c200..68ac707755d2 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -38,6 +38,15 @@ config DRM_I915_USERFAULT_AUTOSUSPEND
 	  May be 0 to disable the extra delay and solely use the device level
 	  runtime pm autosuspend delay tunable.
 
+config DRM_I915_GUC_CTB_TIMEOUT
+	int "How long to wait for the GuC to make forward progress on CTBs (ms)"
+	default 1500 # milliseconds
+	help
+	  Configures the default timeout waiting for GuC the to make forward
+	  progress on CTBs. e.g. Waiting for a response to requeset.
+
+	  A minimum value of 10 ms is allowed.
+
 config DRM_I915_HEARTBEAT_INTERVAL
 	int "Interval between heartbeat pulses (ms)"
 	default 2500 # milliseconds
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 916c2b80c841..5b0dece7a7cd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -436,6 +436,7 @@ static int ct_write(struct intel_guc_ct *ct,
  */
 static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 {
+	long timeout;
 	int err;
 
 	/*
@@ -443,10 +444,12 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 	 * up to that length of time, then switch to a slower sleep-wait loop.
 	 * No GuC command should ever take longer than 10ms.
 	 */
+	timeout = max(10, CONFIG_DRM_I915_GUC_CTB_TIMEOUT);
+
 #define done INTEL_GUC_MSG_IS_RESPONSE(READ_ONCE(req->status))
 	err = wait_for_us(done, 10);
 	if (err)
-		err = wait_for(done, 10);
+		err = wait_for(done, timeout);
 #undef done
 
 	if (unlikely(err))
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
