Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EC68FE0FC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 10:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C28410E0B7;
	Thu,  6 Jun 2024 08:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLSWjdq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B52710E14A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 08:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717662727; x=1749198727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T3DG5PJWurizwAQ7mAcz7lVwFrt2OcqxfEshVa836Tk=;
 b=MLSWjdq+/LhT1PFBxiI+GVQja+ZMIG0dRVpFf/X4uOvwRcNUBgmYj6Pk
 DzZQx3lXlIe3AYsv2xxyOUrrc/OG2bSXAVORbHEyCgKeNsIQfhEo3ASZG
 Nhi77Axkdh9bRol5I6XFucRhXDKTSroSwhqRZd4JHE5al5VoGsZ81H/rn
 BMkuoGenoxXI07KhTl2mIK4g/7Kvwb86dmre1UNcfXymopd8X26wGQYB8
 p86g608DruOk11iUnvrN7m3ZIPYnZT+jtz6WmFV6vTWdYmJZMSE/Qnazt
 6/OH9CIXeK5b4zC/DfQRaf/D+P/kg0VUC+MFqkV2GIi4/2fp5Mr5JohQA A==;
X-CSE-ConnectionGUID: /3YmgQsjT/GMDk0OaM7S7A==
X-CSE-MsgGUID: 7kNsR2DhTFKVaJrP9kdnwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24945906"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="24945906"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 01:32:06 -0700
X-CSE-ConnectionGUID: y8NdoT7hSTe6fyz/KVUdsw==
X-CSE-MsgGUID: HELEbiYJSCOWC8sX47mC9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="37805658"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 06 Jun 2024 01:32:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, arun.r.murthy@intel.com, jouni.hogander@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Add return bool value for hsw_activate_psr1
Date: Thu,  6 Jun 2024 13:59:26 +0530
Message-ID: <20240606082926.1816416-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240606082926.1816416-2-suraj.kandpal@intel.com>
References: <20240606082926.1816416-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Convert hsw_activate_psr1 from void to bool as going forward
there is a chance psr1 is not enabled.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4a4124a92a0d..6fc88f6c6b26 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -811,7 +811,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
-static void hsw_activate_psr1(struct intel_dp *intel_dp)
+static bool hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -839,6 +839,8 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
+
+	return true;
 }
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
@@ -1540,6 +1542,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	bool ret = true;
 
 	drm_WARN_ON(&dev_priv->drm,
 		    transcoder_has_psr2(dev_priv, cpu_transcoder) &&
@@ -1558,9 +1561,9 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	else if (intel_dp->psr.sel_update_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
-		hsw_activate_psr1(intel_dp);
+		ret = hsw_activate_psr1(intel_dp);
 
-	intel_dp->psr.active = true;
+	intel_dp->psr.active = ret;
 }
 
 static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
-- 
2.43.2

