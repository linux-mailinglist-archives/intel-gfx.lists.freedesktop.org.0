Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3AB4EB22A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C23610F110;
	Tue, 29 Mar 2022 16:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA8610F110
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572527; x=1680108527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IJM0x1ya4R35pkI8MjOZagZrn+83lL+/o/VvhmNAdi0=;
 b=C8AO8x7JCvsys6JWfmmcD4n075z/mDMW2KbR507z4NW+jbFQ3S3C5bec
 YE/hScPHHhLlEM/EiL9BZ7RPrKM8pwMfbL5c2F2XY6TujdvYJihN5Y8wz
 VnFzb2fZ3C7Kp+cpHIAc4za6EcHyEi5JQtxVNJqJuaPVWZVT4DFrljixC
 MSz1fbRL4HxIoJy/XXz8P7xAp/mPILFCMj8KuiHjMvOeoaPkP/yE5/04q
 TwLVOfEa0JclEKndqwT9pp3rju3Q0fa49WQnrFJET4uwPZetf596S6dZY
 ipUYxtJ/dn8YV1tXChDpEOhBkjbUc2ywhXtikDFaATte0WMytNuFMmz64 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259020755"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259020755"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513819"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:20 +0300
Message-Id: <20220329164336.1199359-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/18] drm/i915: Unexport the
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  8 ++++++++
 .../drm/i915/display/intel_display_power.h    | 20 -------------------
 .../i915/display/intel_display_power_well.h   | 12 +++++++++++
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 35a5e36df8206..25b614bf09d83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -21,6 +21,14 @@
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
index 95b9391499109..e80317e7868b6 100644
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
index de3ee1bfb06d9..c4a8a3d728e06 100644
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
2.30.2

