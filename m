Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A3518D10E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E92026EB4B;
	Fri, 20 Mar 2020 14:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EBB66E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:36:54 +0000 (UTC)
IronPort-SDR: goGK8dmB0gtJRDPQK50y5VoE8P6EjgDNlRzmZc3FAgsCiNSAHOoaszcLb/8CiJ5w59818F066e
 jPZ+fpC7JPYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:36:53 -0700
IronPort-SDR: JQTMNUI1IhG7clE+r23kWbmthMF3+1vY+Kvznnaw4omt0qkytPXvW7Fmlk9UsEBYY+AZxfnbou
 egtM4Zo1bOfQ==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="392169222"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:36:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:27 +0200
Message-Id: <25e56d1b7df3b1e91024eb969fb839fdcbdcb35e.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/display_power: use struct
 drm_device based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 22 +++++++++++++------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 246e406bb385..433e5a81dd4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1873,20 +1873,27 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
 static void print_power_domains(struct i915_power_domains *power_domains,
 				const char *prefix, u64 mask)
 {
+	struct drm_i915_private *i915 = container_of(power_domains,
+						     struct drm_i915_private,
+						     power_domains);
 	enum intel_display_power_domain domain;
 
-	DRM_DEBUG_DRIVER("%s (%lu):\n", prefix, hweight64(mask));
+	drm_dbg(&i915->drm, "%s (%lu):\n", prefix, hweight64(mask));
 	for_each_power_domain(domain, mask)
-		DRM_DEBUG_DRIVER("%s use_count %d\n",
-				 intel_display_power_domain_str(domain),
-				 power_domains->domain_use_count[domain]);
+		drm_dbg(&i915->drm, "%s use_count %d\n",
+			intel_display_power_domain_str(domain),
+			power_domains->domain_use_count[domain]);
 }
 
 static void
 print_async_put_domains_state(struct i915_power_domains *power_domains)
 {
-	DRM_DEBUG_DRIVER("async_put_wakeref %u\n",
-			 power_domains->async_put_wakeref);
+	struct drm_i915_private *i915 = container_of(power_domains,
+						     struct drm_i915_private,
+						     power_domains);
+
+	drm_dbg(&i915->drm, "async_put_wakeref %u\n",
+		power_domains->async_put_wakeref);
 
 	print_power_domains(power_domains, "async_put_domains[0]",
 			    power_domains->async_put_domains[0]);
@@ -4480,7 +4487,8 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	drm_WARN(&dev_priv->drm, hweight8(req_slices) > max_slices,
 		 "Invalid number of dbuf slices requested\n");
 
-	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
+	drm_dbg_kms(&dev_priv->drm, "Updating dbuf slices to 0x%x\n",
+		    req_slices);
 
 	/*
 	 * Might be running this in parallel to gen9_dc_off_power_well_enable
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
