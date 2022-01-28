Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FCC49F8A5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2D510E72D;
	Fri, 28 Jan 2022 11:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9531710E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370560; x=1674906560;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KIYh8nqA9TO9eJgoB5Jb++DEOnq00dknVNp7+o0x9Yg=;
 b=gpZ0dU82ro1gWcO7F2gGSpP5jMbS6pMoRZVXrxUeTtB1vtd/kbPQ85Xi
 oaCCTL7vZYEZEsnep5r4ztmzJjvG4epAPklI9MChSjEfqu5nKuPjdcbql
 CIvT4qCsbaf0xOJMVPNSGx3YL2yIGHnTp59aCbAid4yLKgTuonweoxbKc
 +k3u4dBPPDJEbKSUhHXg3C5xzDBmVHZXTQeHbjzMZFGqM8WmrZKtE+pZe
 PFSlxAF4eenxYi+uM1iGI7IHkemvNTesBcmL1pV9isCPNNnLoOf86qA0z
 SK6Nb/eqqGmnq44vfDFocZkUZXJDy6sI7szF89pbsXSRyS1BoaPgraWK4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420916"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420916"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712816"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:19 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:48:57 +0200
Message-Id: <20220128114914.2339526-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/19] drm/i915: Unexport the
 for_each_power_well() macros
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

The for_each_power_well() macros are only used in intel_display_power.c,
so unexport them.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 20 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    | 20 -------------------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e64d407e7b8db..b500cc94ded75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -25,6 +25,26 @@
 #include "intel_vga.h"
 #include "vlv_sideband.h"
 
+#define for_each_power_well(__dev_priv, __power_well)				\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
+		(__dev_priv)->power_domains.power_well_count;		\
+	     (__power_well)++)
+
+#define for_each_power_well_reverse(__dev_priv, __power_well)			\
+	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
+			      (__dev_priv)->power_domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	     (__power_well)--)
+
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))
+
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))
+
 struct i915_power_well_ops {
 	/*
 	 * Synchronize the well's hw state to match the current sw state, for
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index a3997f05cd89b..b30e6133c66d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -197,26 +197,6 @@ struct intel_display_power_domain_set {
 	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
 		for_each_if(BIT_ULL(domain) & (mask))
 
-#define for_each_power_well(__dev_priv, __power_well)				\
-	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
-	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
-		(__dev_priv)->power_domains.power_well_count;		\
-	     (__power_well)++)
-
-#define for_each_power_well_reverse(__dev_priv, __power_well)			\
-	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
-			      (__dev_priv)->power_domains.power_well_count - 1;	\
-	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
-	     (__power_well)--)
-
-#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
-	for_each_power_well(__dev_priv, __power_well)				\
-		for_each_if((__power_well)->desc->domains & (__domain_mask))
-
-#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
-	for_each_power_well_reverse(__dev_priv, __power_well)		        \
-		for_each_if((__power_well)->desc->domains & (__domain_mask))
-
 int intel_power_domains_init(struct drm_i915_private *dev_priv);
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
 void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume);
-- 
2.27.0

