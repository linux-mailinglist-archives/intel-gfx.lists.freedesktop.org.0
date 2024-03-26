Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ABA88D2A0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 00:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9AD10F49E;
	Tue, 26 Mar 2024 23:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h19NrPtg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F099510F49E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 23:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711494656; x=1743030656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ylqtey0ZXs81sKuj+Z1df6a8c70238Xst+LeTMyWFoU=;
 b=h19NrPtgqq0dnSCOrkdSWbYlAa+8IKIK2zrDPewwPC62pNRUMqGMQWvQ
 EhJBvJKJQWOU5f9p0MMvFruAbt2zb4uyuXH9rsXtGMfPFNZm9lITXfamP
 MUOirROKKLiT5Vgjh00ilU3e03DgBiNk8MfLHajeokKUD71drYWuiZ6ut
 blT+3SwJy1TV1pqjxQeO0QfndOp8/vdRWliowISQBCdL0PH3wX5fS2mLQ
 UTKqxmkj3MbxYxETVU9rBWdF8q0BWuPd/exeA14/8GqzkACMp9Kd+1Dmf
 3lrL4LaskW/WadU9My6LIbHzBU/uy+DjfQZhrgt7QbEEFKugFi1GY5TVo A==;
X-CSE-ConnectionGUID: 6AqRwM/4To2NiJsiUqSLqA==
X-CSE-MsgGUID: B7pZRusnQF29aI2501eydg==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6702997"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6702997"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16101245"
Received: from dfantini-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.33.69])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:10:52 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v9 1/6] drm/i915/display: Add meaningful traces for QGV point
 info error handling
Date: Wed, 27 Mar 2024 01:10:16 +0200
Message-Id: <20240326231021.281780-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326231021.281780-1-vinod.govindapillai@intel.com>
References: <20240326231021.281780-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

For debug purposes we need those - error path won't flood the log,
however there has been already numerous cases, when due to lack
of debugs, we couldn't immediately tell what was the problem on
customer machine, which slowed down the investigation, requiring
to get access to target device and adding those traces manually.

v2: - Make the debug more generic and move it to intel_dram_detect
      (Gustavo Sousa)
v3: - Use %u for unsigned variable in debug prints (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
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
index 15492b69f698..e3287f1de774 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -681,6 +681,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	if (ret)
 		return;
 
+	drm_dbg_kms(&i915->drm, "Num qgv points %u\n", dram_info->num_qgv_points);
+
 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
 
 	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
-- 
2.34.1

