Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018487FB46A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 09:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B55D10E454;
	Tue, 28 Nov 2023 08:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C170310E12C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 08:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701160678; x=1732696678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4KJEiYAIubEfzD6NpBfjeJy7I986/mMPqLI3Gu/8jbM=;
 b=bRCZkossCjLXzYSZRJDBJ2ouqW5AwWd/KSWAOlJlJWWrps+Xn376OyKE
 GXP/wml+V8FIzJU3fMzSC0LbaKY7OXzDWADYzLbja4giWnwJ5loqMBuBw
 +EH/9RF88l1+qL5hEaUKMJ66YEt2Y7GnL/UuE+HKJAP0TMOsxWXrMvotk
 2WVr/rWXqGLRyX34wj+OQIJNC25wNDzTze5u1Ewwz6CvMvKI+jgTI2s4F
 Xc0Z1UB79QBcyFTy6LjrH8cFlG/YJ90cxxVEQ4Q6Uo2zY5EIyl0QxTlRq
 qotqbLxxjAnC3sYiFG48FRderDsY87ljXMS9DO6Fzd49fqSIkI6sGo2h1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459381745"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459381745"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 00:37:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="834577654"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="834577654"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 28 Nov 2023 00:37:56 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 10:37:52 +0200
Message-Id: <20231128083754.20096-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Add meaningful traces for QGV
 point info error handling
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
 drivers/gpu/drm/i915/soc/intel_dram.c   | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bef96db62c80..583cd2ebdf89 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -289,8 +289,10 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
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
index 15492b69f698..37d61dff50a8 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -647,6 +647,8 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
 
 	dram_info->num_channels = REG_FIELD_GET(MTL_N_OF_POPULATED_CH_MASK, val);
 	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
+	drm_dbg_kms(&i915->drm, "Num qgv points from MTL_N_OF_ENABLED_QGV_POINTS_MASK reg: %d\n",
+		    dram_info->num_qgv_points);
 	/* PSF GV points not supported in D14+ */
 
 	return 0;
-- 
2.37.3

