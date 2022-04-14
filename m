Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E42501D15
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B836410E213;
	Thu, 14 Apr 2022 21:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AA710E213
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970423; x=1681506423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uzNN8ZCBQvzoEAYfH1AFQzIN3Cylb2loX9JWoZ7LU68=;
 b=LYStFL5NKSDEZzDKzjy7YVBeCZcDZQUsI6o+g3q0PhVhZr9akCBs71S5
 gmPRx6jOQxU49UMHwnoVNmnZ23Boj85N8mCxgRqyO4pRm8YTog/XnC6f4
 ywUuqXUIt9Uia8WSFFKH3Bu/mGoucYBYIe02zYJfwwGIh4VZJFFxqZPLi
 q/4Wv0K7sDh5UqDNSZKW1ABti+TaQnzzgOIzbsFLAg/so+iXf+JhW+vri
 s7o1jx3wzCUnGY4Ib310sBXKvMq5czmEwZPkZxz1C9doWYrBZD2sO7uWN
 4bPrUhcEQbUvxuKf0WrKQwtg9bciVvpzPXlqvAUZte09yUVUj3jRdnzYo g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089709"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089709"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550299"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:41 +0300
Message-Id: <20220414210657.1785773-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 02/18] drm/i915: Unexport the for_each_power_well()
 macros
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
index b3e8ede900396..f3c14e721abcb 100644
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

