Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A48A6515
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE98E112130;
	Tue, 16 Apr 2024 07:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e4sEgSzu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AF810EEFB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713252606; x=1744788606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kfq9McMiNcifzrqF7Rh9VAWVBViqm2nY1593+EMMrQk=;
 b=e4sEgSzuW73L7ynKNKQ1eELIgPoBhVIcPdsns7cSuuu7/r+b6V+3xiJ5
 q2bTl0rDUvjuSU0cObGSbS2IYT+b85VUap+aP78WsW94d26kH9tnMsZtS
 r2+OcIVIpxNKYLh9Sef0khve5r24cuDHMKxvgLRYRjOueDboPx5Rj+nj6
 FJTumYKgq3ShIp4vLs6qTPOzOlnkja1a1bSRU8g/gPsgCBd6fI3CfZ1cI
 neTQE+Z/+5Bkytg6sy+uJIycmbbFiEwJYEnxHA55oMCPC9ehQyCRxYVO+
 XQP1BAgbC7SvHSbYPBvVpuaEFl0qpwRFWowb1DG0JYhv/a/su4eM9fZv5 Q==;
X-CSE-ConnectionGUID: 1Ezc/OPwRcq891sT5MQ58Q==
X-CSE-MsgGUID: /wbTzeLlTR27b66XIeS7yQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="34063841"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="34063841"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:30:06 -0700
X-CSE-ConnectionGUID: 8uc7kbtXR82vuvBAt9XSTg==
X-CSE-MsgGUID: dBk4JYOaTOusBQMfyQYuPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22206653"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 16 Apr 2024 00:30:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/pps: Disable DPLS_GATING around pps sequence
Date: Tue, 16 Apr 2024 12:57:34 +0530
Message-ID: <20240416072733.624048-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416072733.624048-2-suraj.kandpal@intel.com>
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
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

Disable bit 29 of SCLKGATE_DIS register around pps sequence
when we turn panel power on.
WA: 16023567976
Bspec: 49304

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3078dfac7817..a912e712ca63 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -919,6 +919,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
+	int dis_ver = DISPLAY_VER(dev_priv);
 
 	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
@@ -948,6 +949,13 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 
+	/* WA: 16023567976
+	 * Disable DPLS gating around power sequence.
+	 */
+	if (dis_ver >= 12 && dis_ver <= 14)
+		intel_de_rmw(dev_priv, SCLKGATE_DIS,
+			     DPLS_GATING_DISABLE, 1);
+
 	pp |= PANEL_POWER_ON;
 	if (!IS_IRONLAKE(dev_priv))
 		pp |= PANEL_POWER_RESET;
@@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	wait_panel_on(intel_dp);
 	intel_dp->pps.last_power_on = jiffies;
 
+	if (dis_ver >= 12 && dis_ver <= 14)
+		intel_de_rmw(dev_priv, SCLKGATE_DIS,
+			     DPLS_GATING_DISABLE, 0);
+
 	if (IS_IRONLAKE(dev_priv)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
 		intel_de_write(dev_priv, pp_ctrl_reg, pp);
-- 
2.43.2

