Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B82891038
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4977210E8F5;
	Fri, 29 Mar 2024 01:13:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KedCehzx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F8A310E8F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674816; x=1743210816;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n4u497owPrzdWIO9Gsps89Y/u80tHdxThVPgapBZwic=;
 b=KedCehzxldvVfUG5ACxj7HCm+5N6VUwlUOIj9O3VO4KGld6Q9taJGgsn
 G4uOYZDgwHabeAioqzA87m3T9s6gL477RiXvH34rGMtcGwpLPm7up6r2/
 zGLpJ6vZpHF5tRHIaHNS/fw84L+eTlt1sNqCtU+bPjOPtR1qaixxzXcoA
 FzWe8Y+Tp1JKGmWl/ytqkPNDeABATU1JlEJKzGxVvZCQ+GHBcoy5HlUIW
 VCjnq0oQYxmZcqq9tHyTPLXsU1HtxLFr6yDbpfVWT4TKw044f0f2NQ2SJ
 i7cFCEm5C0VwYupS2J8cCGT7OjNc8oQy5tXmM1qb6DRpzVtxF+qiXKHmb Q==;
X-CSE-ConnectionGUID: ZA/gU2V8QI6lhMOl347UsA==
X-CSE-MsgGUID: IpX3EwheQjmluERg2Jxs/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756324"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756324"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786777"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786777"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/22] drm/i915/mst: Limit MST+DSC to TGL+
Date: Fri, 29 Mar 2024 03:12:45 +0200
Message-ID: <20240329011254.24160-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The MST code currently assumes that glk+ alerady supports MST+DSC,
which is incorrect. We need to check for TGL+ actually. ICL does
support SST+DSC, but supposedly it can't do MST+FEC which will
also rule MST+DSC.

Note that a straight TGL+ check doesn't work here because DSC
support can get fused out, so we do need to also check 'has_dsc'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c         | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fe4268813786..9b1bce2624b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -47,6 +47,7 @@ struct drm_printer;
 #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
 #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
 #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
+#define HAS_DSC_MST(__i915)		(DISPLAY_VER(__i915) >= 12 && HAS_DSC(__i915))
 #define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
 #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
 #define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a3b0026adb2d..de364ed77c08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1352,7 +1352,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 10 &&
+	if (HAS_DSC_MST(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
 		/*
 		 * TBD pass the connector BPC,
-- 
2.43.2

