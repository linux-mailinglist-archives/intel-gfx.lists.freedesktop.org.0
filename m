Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923E69DBAB0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 16:39:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36C1810ECF1;
	Thu, 28 Nov 2024 15:39:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGjdmOTo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5FC10ECF8;
 Thu, 28 Nov 2024 15:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732808385; x=1764344385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ekR0E8w9tPvTl5OOPpJRpYBoFrsqwnIc5Xq2SH5Dd2Q=;
 b=XGjdmOTokWHgumDu8LOaBFwPQ5optCMoOte6vsvzDfIEh49oPOwp5QlU
 o00wPUAw+lEeYS6szzbLLSjTT3GoFfqQwvoF51qymu2AA+KuGyPtVyXSC
 W8HLkDTuRFTncsq+6AfP65Vd0vKbfF+dVzi4WyCRoAsPQic4BvZSCnLyN
 IZAtYGFjs9/CIEdBTYtypX4Vt+jwJRZZacY4m1BQJ6zh3Zma0Sque5Jgc
 My9fj6Ann5+WEX6C7a9O4cbL1Vv6fTimle8Zn/gjSF0L+9yXrH/Ki2VVM
 +kOx7aIfkM/OzQlsFH37wFWF6vVt0r2PVX44rrHoha5Y287fu9dLU0mHZ g==;
X-CSE-ConnectionGUID: i8eZSFQ4TR2RwO1Lz8nw3Q==
X-CSE-MsgGUID: rSoGDRdYRUqd8+qxrlkMJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44431553"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44431553"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:34 -0800
X-CSE-ConnectionGUID: Lt9fNd8GTge0oy9Ea+byig==
X-CSE-MsgGUID: h4BRtWscQQuuIgEZndW3TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="96357957"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 1/6] drm/i915/display: convert for_each_power_well() to
 struct intel_display
Date: Thu, 28 Nov 2024 17:38:19 +0200
Message-Id: <30c3e44cdb9557a195b2e086bf169da8d8497c6b.1732808222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732808222.git.jani.nikula@intel.com>
References: <cover.1732808222.git.jani.nikula@intel.com>
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
index 59dee2dc0552..2e9d9f4d3ef8 100644
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
@@ -1028,11 +1028,12 @@ void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
 
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
@@ -2003,12 +2004,13 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
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
@@ -2146,10 +2148,11 @@ void intel_power_domains_resume(struct drm_i915_private *i915)
 
 static void intel_power_domains_dump_info(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 
-	for_each_power_well(i915, power_well) {
+	for_each_power_well(display, power_well) {
 		enum intel_display_power_domain domain;
 
 		drm_dbg(&i915->drm, "%-25s %d\n",
@@ -2174,6 +2177,7 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
  */
 static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 	bool dump_domain_info;
@@ -2183,7 +2187,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
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

