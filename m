Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738D2682097
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 01:21:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1372210E2F4;
	Tue, 31 Jan 2023 00:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C092010E2F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 00:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675124510; x=1706660510;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MTghumENvG34xjsAnDPD+QWRExPa+Mh8DkCFt4PyG9I=;
 b=Vx3ZnC5LhMzIK0PwMgY55UYEwb4wnu203tT2al/WXOmFdP0+P+qK8ri+
 K3l93hDOMgv8ikBDtNVKqldr6sQOp3t1B2NczCPeKycc7luIU8miz82nC
 ZhQxLE6Aq/oCk9SYRoDOtOI4hFcksgegXxhoNn/R/Mr9mnB8c9IAz5hTp
 hGTNCeXXdq+ujl1z7Aeypa1qmA7BUwhvr0VkO1ByS/rfjX2uEqT/zKOpJ
 OsfiMgjpn2Aem7ldrvfp6bBAlYyvtdMZ0hZgSEMzB+HNgwbq4h+b7vZFl
 052zhY3kp445qTP0q0C1rutRlQfEDv863YzIdroaJ+yiXMIRTWGca43Gk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326376786"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="326376786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 16:21:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="657648763"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="657648763"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 30 Jan 2023 16:21:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Jan 2023 02:21:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 02:21:25 +0200
Message-Id: <20230131002127.29305-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce HAS_SAGV()
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

Introuce a HAS_SAGV() macro to answer the question whether
the platform in general supports SAGV. intel_has_sagv() will
keep on giving us the more specific answer whether the current
device supports SAGV or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++---
 drivers/gpu/drm/i915/i915_drv.h              | 3 ++-
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 0c605034356f..5916694f147c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -64,7 +64,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 static bool
 intel_has_sagv(struct drm_i915_private *i915)
 {
-	return DISPLAY_VER(i915) >= 9 && !IS_LP(i915) &&
+	return HAS_SAGV(i915) &&
 		i915->display.sagv.status != I915_SAGV_NOT_CONTROLLED;
 }
 
@@ -92,7 +92,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 		return val;
 	} else if (DISPLAY_VER(i915) == 11) {
 		return 10;
-	} else if (DISPLAY_VER(i915) == 9 && !IS_LP(i915)) {
+	} else if (HAS_SAGV(i915)) {
 		return 30;
 	} else {
 		return 0;
@@ -101,7 +101,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 
 static void intel_sagv_init(struct drm_i915_private *i915)
 {
-	if (!intel_has_sagv(i915))
+	if (!HAS_SAGV(i915))
 		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a0dcf3352b66..0393273faa09 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -863,7 +863,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
 
-#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
+#define HAS_IPC(dev_priv)		(INTEL_INFO(dev_priv)->display.has_ipc)
+#define HAS_SAGV(dev_priv)		(DISPLAY_VER(dev_priv) >= 9 && !IS_LP(dev_priv))
 
 #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
-- 
2.39.1

