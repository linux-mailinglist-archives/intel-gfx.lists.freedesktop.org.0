Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA129DAC39
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BC110EB78;
	Wed, 27 Nov 2024 17:06:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hF4N0GWV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74FB10EB7D;
 Wed, 27 Nov 2024 17:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732727184; x=1764263184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hvt6ZwKAuORRinZNVR6I3ZOLGJhDZdQDxKBXzyb2x9U=;
 b=hF4N0GWVl/XFHKPdh1ZgeCUU50K66ZEu9Vy0pTYWTmyd9jsN6r1Je275
 kuCJvBLT1+X53eU5tNjnT29WLdYYp1PPfBMDEEFQcDPUe/hTgOs4JuTk0
 nU4vJ4mOgTGkwCV/XOCIsdG5J/33/mPVjeJS7ANH/N/A5311cnIc1eUVo
 7bdC8lGDmgMCw2FVneiRFjtaZDCIVMg7TacTDq2lexPfoYoXHbLPbvgsY
 yb3vCAVWYWUo3zzJHp188UcAQQDrXGC3ImsG0cVlJA4Ny3VOiuPI1GtMh
 ACdjF0Wl2Q8/GcWx/6WqhY/KptdhyQN9YVgaBbnsctjsLhmmje/r7i/S4 A==;
X-CSE-ConnectionGUID: wYJPIl0vQOOv7m5kdLm0/g==
X-CSE-MsgGUID: Luc1OfGnSs+D1+xdEbGioQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32994346"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32994346"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:24 -0800
X-CSE-ConnectionGUID: LY2ue0e+T5mOio/wM2dNyQ==
X-CSE-MsgGUID: Q1hBIl3kSgSo7agwa6pNVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91621180"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 2/7] drm/i915/display: convert for_each_power_well() to struct
 intel_display
Date: Wed, 27 Nov 2024 19:06:03 +0200
Message-Id: <234569a9ab1f9e70b8c661fccb46af076776f3d3.1732727056.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732727056.git.jani.nikula@intel.com>
References: <cover.1732727056.git.jani.nikula@intel.com>
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

Start converting power well code to struct intel_display. Start off with
for_each_power_well() and the reverse variant.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   | 16 ++++++++++------
 .../drm/i915/display/intel_display_power_well.c  |  3 ++-
 .../drm/i915/display/intel_display_power_well.h  | 16 ++++++++--------
 3 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fe94ef310f6b..6f278964cdaf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -29,11 +29,11 @@
 #include "vlv_sideband.h"
 
 #define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
-	for_each_power_well(__dev_priv, __power_well)				\
+	for_each_power_well(&(__dev_priv)->display, __power_well)	\
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
 #define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
-	for_each_power_well_reverse(__dev_priv, __power_well)		        \
+	for_each_power_well_reverse(&(__dev_priv)->display, __power_well) \
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
 static const char *
@@ -1037,11 +1037,12 @@ void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
 
 static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
-	for_each_power_well(dev_priv, power_well)
+	for_each_power_well(display, power_well)
 		intel_power_well_sync_hw(dev_priv, power_well);
 	mutex_unlock(&power_domains->lock);
 }
@@ -2012,12 +2013,13 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
  */
 void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
 
-	for_each_power_well_reverse(i915, power_well) {
+	for_each_power_well_reverse(display, power_well) {
 		if (power_well->desc->always_on || power_well->count ||
 		    !intel_power_well_is_enabled(i915, power_well))
 			continue;
@@ -2155,10 +2157,11 @@ void intel_power_domains_resume(struct drm_i915_private *i915)
 
 static void intel_power_domains_dump_info(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 
-	for_each_power_well(i915, power_well) {
+	for_each_power_well(display, power_well) {
 		enum intel_display_power_domain domain;
 
 		drm_dbg(&i915->drm, "%-25s %d\n",
@@ -2183,6 +2186,7 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
  */
 static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 	bool dump_domain_info;
@@ -2192,7 +2196,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 	verify_async_put_domains_state(power_domains);
 
 	dump_domain_info = false;
-	for_each_power_well(i915, power_well) {
+	for_each_power_well(display, power_well) {
 		enum intel_display_power_domain domain;
 		int domains_count;
 		bool enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index bdf6c690a03b..11734951937a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -76,9 +76,10 @@ struct i915_power_well *
 lookup_power_well(struct drm_i915_private *i915,
 		  enum i915_power_well_id power_well_id)
 {
+	struct intel_display *display = &i915->display;
 	struct i915_power_well *power_well;
 
-	for_each_power_well(i915, power_well)
+	for_each_power_well(display, power_well)
 		if (i915_power_well_instance(power_well)->id == power_well_id)
 			return power_well;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 93559f7c6100..0c12ca46dfc8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -15,16 +15,16 @@ struct i915_power_well_ops;
 struct intel_display;
 struct intel_encoder;
 
-#define for_each_power_well(__dev_priv, __power_well)				\
-	for ((__power_well) = (__dev_priv)->display.power.domains.power_wells;	\
-	     (__power_well) - (__dev_priv)->display.power.domains.power_wells <	\
-		(__dev_priv)->display.power.domains.power_well_count;		\
+#define for_each_power_well(___display, __power_well)			\
+	for ((__power_well) = (___display)->power.domains.power_wells;	\
+	     (__power_well) - (___display)->power.domains.power_wells <	\
+		     (___display)->power.domains.power_well_count;	\
 	     (__power_well)++)
 
-#define for_each_power_well_reverse(__dev_priv, __power_well)			\
-	for ((__power_well) = (__dev_priv)->display.power.domains.power_wells +		\
-			      (__dev_priv)->display.power.domains.power_well_count - 1;	\
-	     (__power_well) - (__dev_priv)->display.power.domains.power_wells >= 0;	\
+#define for_each_power_well_reverse(___display, __power_well)		\
+	for ((__power_well) = (___display)->power.domains.power_wells +	\
+		     (___display)->power.domains.power_well_count - 1;	\
+	     (__power_well) - (___display)->power.domains.power_wells >= 0; \
 	     (__power_well)--)
 
 /*
-- 
2.39.5

