Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 378E54AD780
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B9010E61F;
	Tue,  8 Feb 2022 11:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F25E10E605
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320233; x=1675856233;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ed4Dqn40sgR5TReftshpTgI4oTdGSkqNxl2H9Fpji7s=;
 b=J5Gspi5uXfmYmjY9gu2CI1Yyq6GK0JVy834v+qo6GncGBQW2PM2B5uJU
 3ZfTdM8PlA+SVYwwjNVmiuNCGw5dbWanmJlRlTKMjckxKaQwbzYfJbNtS
 nai2mi+GRiDH7dHHw2AWDjYs7AxwJkDnd4YuuYq5GPabgwV3Gur6+hbaS
 8N7AQF6+WUH0UWCaZt7YEh74O+Dczt1xsW0zSgRF3gC36e6HqtflkoCYL
 83eLbaGN9gC4JTQksOS1nH9hts3gfig4PXFsPQVqr5HB9ACEwpWKksxF9
 3JymoSkW240wkKkb+Sx7qsmIHjQfDCcU4/qqQQ11Hv65BZJk+zOT/6Ty0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232495973"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232495973"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915285"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:12 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:40 +0200
Message-Id: <20220208113656.179823-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/26] drm/i915: Unexport the
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

The for_each_power_well() macros are only used in intel_display_power.c
and intel_display_power_well.c, so unexport them.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  8 ++++++++
 .../drm/i915/display/intel_display_power.h    | 20 -------------------
 .../i915/display/intel_display_power_well.h   | 12 +++++++++++
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3414013e7f449..611729cf767c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -18,6 +18,14 @@
 #include "intel_snps_phy.h"
 #include "vlv_sideband.h"
 
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+	for_each_power_well(__dev_priv, __power_well)				\
+		for_each_if((__power_well)->desc->domains & (__domain_mask))
+
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+		for_each_if((__power_well)->desc->domains & (__domain_mask))
+
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index ced384b0a1658..a3d48c47f0acd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -172,26 +172,6 @@ struct intel_display_power_domain_set {
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 2c0e53fb976c4..473b65269896c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -12,6 +12,18 @@
 struct drm_i915_private;
 struct i915_power_well;
 
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
 /*
  * i915_power_well_id:
  *
-- 
2.27.0

