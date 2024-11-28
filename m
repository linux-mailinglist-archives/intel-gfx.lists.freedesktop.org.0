Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D344F9DBAB1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 16:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DB010ECFB;
	Thu, 28 Nov 2024 15:39:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UVnXfDFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9986E10ECFA;
 Thu, 28 Nov 2024 15:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732808386; x=1764344386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X70g75tnzi4wYAsDnUQv0kT6uJo7GBqHMh2lGsWGXZ0=;
 b=UVnXfDFNdh0qzUwgSUlHT+7QOnDh0bPW1gPnUPljosSj0BMlc16tofAj
 qyvfdNjFt+CzkxfX5onOB3jDCzRh1fqN+t7I+gRQLhIaP7bRG68QNBL5H
 TlunmVF1Bl9KcyhR6tXS9y8UMsSrSgLO3CBCvlCuxlJb6uJY6pSTOR1c7
 xQUtBuQXAgpRWERtDuN2z7FaxQBFEwAjiW4Jp5qe/dzH3PLix+ab3FWH6
 yWwBbI7JqFrWmWhZUE1QfaccDubwyOFJVMdccB7ItNLSTeYuc7uQU1Sw5
 niS1rOTk6UuVcJgppfqnwk9j0vm615iEteZJXAdbt7+EcjdgeQYki6NvM g==;
X-CSE-ConnectionGUID: +/3GRdaiTBqKO73jhgSDpg==
X-CSE-MsgGUID: 25KOxow+RZKHWUt0a2ZoeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44431571"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44431571"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:38 -0800
X-CSE-ConnectionGUID: aroUnHeoTseACO1nS/AGjA==
X-CSE-MsgGUID: nKSXy3J0SIWomihzjRaKRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="96357998"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 2/6] drm/i915/display: convert for_each_power_domain_well()
 to struct intel_display
Date: Thu, 28 Nov 2024 17:38:20 +0200
Message-Id: <d21752baef1cab52ac3bec4f4e1f09f9acd6c1bf.1732808222.git.jani.nikula@intel.com>
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

Start converting display power domain code to struct
intel_display. Start off with for_each_power_domain_well() and the
reverse variant.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c  | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2e9d9f4d3ef8..73843248a04f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -28,12 +28,12 @@
 #include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
 
-#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
-	for_each_power_well(&(__dev_priv)->display, __power_well)	\
+#define for_each_power_domain_well(__display, __power_well, __domain)	\
+	for_each_power_well((__display), __power_well)			\
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
-#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
-	for_each_power_well_reverse(&(__dev_priv)->display, __power_well) \
+#define for_each_power_domain_well_reverse(__display, __power_well, __domain) \
+	for_each_power_well_reverse((__display), __power_well) \
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
 static const char *
@@ -201,6 +201,7 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 					     enum intel_display_power_domain domain)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 	bool is_enabled;
 
@@ -209,7 +210,7 @@ static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 
 	is_enabled = true;
 
-	for_each_power_domain_well_reverse(dev_priv, power_well, domain) {
+	for_each_power_domain_well_reverse(display, power_well, domain) {
 		if (intel_power_well_is_always_on(power_well))
 			continue;
 
@@ -486,13 +487,14 @@ static void
 __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 				 enum intel_display_power_domain domain)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *power_well;
 
 	if (intel_display_power_grab_async_put_ref(dev_priv, domain))
 		return;
 
-	for_each_power_domain_well(dev_priv, power_well, domain)
+	for_each_power_domain_well(display, power_well, domain)
 		intel_power_well_get(dev_priv, power_well);
 
 	power_domains->domain_use_count[domain]++;
@@ -570,6 +572,7 @@ static void
 __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 				 enum intel_display_power_domain domain)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains;
 	struct i915_power_well *power_well;
 	const char *name = intel_display_power_domain_str(domain);
@@ -588,7 +591,7 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 
 	power_domains->domain_use_count[domain]--;
 
-	for_each_power_domain_well_reverse(dev_priv, power_well, domain)
+	for_each_power_domain_well_reverse(display, power_well, domain)
 		intel_power_well_put(dev_priv, power_well);
 }
 
-- 
2.39.5

