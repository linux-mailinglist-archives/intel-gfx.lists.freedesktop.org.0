Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C31830A24
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 16:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC2510E6BF;
	Wed, 17 Jan 2024 15:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFA910E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 15:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705507044; x=1737043044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gqQJrtR+lePtdHHrbapr0zteETI5RHt1tCqXIvqFSkA=;
 b=T33ykpPMHp6/Rm5CDhCLX5B7NUkgN1sN4Y+8xk1GOJhRNy6rj/G/sJ1B
 oFb8OpG6+gl3gEQyWyYdLZcwxWEzN/kvXS4VPPsB9LKAHJwpt4vIZBwvA
 6qkU0jy8rhEKbmOXWspYDzUrzS4lnta39UEUW6ri3OI1PHV01brRreAwB
 NXuUGrMdtG/9d5ipFX+gmRGsVB7HN0glgaO5UYfazIpaPMBuE1zxwRISG
 3jxjkUdP6jFBLb1b1KSK1W1WCwgToroytmEM3Y4WZOzRhLyK2SYPRsEZq
 eD4xG33Ps4ndo7B6UptgtPmpUbnqoblW6e19THJrpa+765rr0MhDEOJ+s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="6904369"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="6904369"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 07:57:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="907789532"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="907789532"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 17 Jan 2024 07:57:21 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Add meaningful traces for QGV point info error
 handling
Date: Wed, 17 Jan 2024 17:57:16 +0200
Message-Id: <20240117155718.3439-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
References: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
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

For debug purposes we need those - error path won't flood the log,
however there has been already numerous cases, when due to lack
of debugs, we couldn't immediately tell what was the problem on
customer machine, which slowed down the investigation, requiring
to get access to target device and adding those traces manually.

v2: - Make the debug more generic and move it to intel_dram_detect
      (Gustavo Sousa)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
 drivers/gpu/drm/i915/soc/intel_dram.c   | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7f2a50b4f494..77886cc21211 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -290,8 +290,10 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 		struct intel_qgv_point *sp = &qi->points[i];
 
 		ret = intel_read_qgv_point_info(dev_priv, sp, i);
-		if (ret)
+		if (ret) {
+			drm_dbg_kms(&dev_priv->drm, "Could not read QGV %d info\n", i);
 			return ret;
+		}
 
 		drm_dbg_kms(&dev_priv->drm,
 			    "QGV %d: DCLK=%d tRP=%d tRDPRE=%d tRAS=%d tRCD=%d tRC=%d\n",
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 15492b69f698..e957be5bfb35 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -681,6 +681,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	if (ret)
 		return;
 
+	drm_dbg_kms(&i915->drm, "Num qgv points %d\n", dram_info->num_qgv_points);
+
 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
 
 	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
-- 
2.37.3

