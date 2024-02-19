Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B979D859F77
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 10:19:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD8710E1E5;
	Mon, 19 Feb 2024 09:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qw/CaACv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A7410E1DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 09:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708334337; x=1739870337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gqQJrtR+lePtdHHrbapr0zteETI5RHt1tCqXIvqFSkA=;
 b=Qw/CaACvd9HoUOLjsHXZ9XX7IQpRl42XZ7NL//29sAeUPHIz+cad5pUU
 3qFvruBCcdJPklKTVzYFixslmdsHUFkT8DhGCX03l3uSPwdg0GxhREiuc
 aaEV8WEiCD0hekEH3BFbuaWTSaSwnw+UobtXTacCiupZydF6OXmaqzNzi
 ReKVxyX/ri9tl6+cVrZrsdA3lCrOdhMM5C1V6ArosCWwemQ6ZWAH195IE
 ax/R35rui1hBynyeI28wI2Q+ehe5LmdJ+zqdHBWDaxhZ6tA195zJbN2jk
 ULspyFkagi5cvKUK7t8ntbBNfiZB5VKoNsb81j1++uxrb1tsplL/vl1O4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="13800149"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; d="scan'208";a="13800149"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 01:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="9108154"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa005.jf.intel.com with ESMTP; 19 Feb 2024 01:18:55 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/3] drm/i915: Add meaningful traces for QGV point info error
 handling
Date: Mon, 19 Feb 2024 11:18:50 +0200
Message-Id: <20240219091852.23162-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
References: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
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

