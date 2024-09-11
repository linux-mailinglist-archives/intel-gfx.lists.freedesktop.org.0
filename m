Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D767975351
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6638410EA1D;
	Wed, 11 Sep 2024 13:12:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XH1BkA8m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336E210EA1A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060347; x=1757596347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pWO+ZTWxFcPJaCTh0F5JKJLvIuQ7jlbLVoESrbl8Y28=;
 b=XH1BkA8mu+qh4KJ9b0Ht1s1W+pPmsWasqleUpOpbfksWeAEhic7mCnyr
 ze4Vk8EQsxIDyORZH10Pvqe+T/Dt/xL9yVqJtVnc0Kz+sHpj2Nq3HYrMj
 WL8jWCI2d5azMfThc1c1BDFoFqcOCTpYMdba8FNiIvUcErvo4VwYUUK3q
 aabHtv2eKeLiCrqKC33xyYEDmB4EBHFL1NsPeBoyzc57uJzI6ONLJ31OZ
 2yfFXfNufJfGydfOjCJolUE+ZcR7CZmASfyjoEA7X3MeMXUa2lzudgKAO
 cvHK6AuZ9nT548VTxouPIHygfBSTS4aNoS9LgyizBYwViMVwTllKn1kFu w==;
X-CSE-ConnectionGUID: 3Un4yf/XRdW+5CYADDobdg==
X-CSE-MsgGUID: ixqU2nyvRom4rYBu9OFvKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244395"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244395"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:27 -0700
X-CSE-ConnectionGUID: LqDGscbCTwyU3mufBNsHMA==
X-CSE-MsgGUID: 31/1PdCcSmuyAZCAYleEZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381010"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/19] drm/i915: Split current joiner hw state readout
Date: Wed, 11 Sep 2024 18:43:41 +0530
Message-ID: <20240911131349.933814-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

We need to add a new sanity checks and also do
some preparations for adding ultrajoiner hw state readout.
Lets first split reading of the uncompressed joiner and bigjoiner
bit masks into separate functions.

v2: Fixed checkpatch warnings (Ankit)
v3: Use struct intel_display in the new functions. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 75 ++++++++++++++------
 1 file changed, 55 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 248ad63b0ba8..e93af02aa859 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3582,27 +3582,54 @@ static bool intel_display_can_use_joiner(struct intel_display *display)
 	return (DISPLAY_VER(display) >= 11);
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
+					      u8 *primary_pipes, u8 *secondary_pipes)
 {
-	struct intel_display *display = to_intel_display(&dev_priv->drm);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	if (!intel_display_can_use_joiner(display))
+	if (DISPLAY_VER(display) < 13)
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 joiner_pipes(dev_priv)) {
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 joiner_pipes(i915)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
 
-		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+		power_domain = POWER_DOMAIN_PIPE(pipe);
+		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
+				*primary_pipes |= BIT(pipe);
+			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
+				*secondary_pipes |= BIT(pipe);
+		}
+	}
+}
+
+static void enabled_bigjoiner_pipes(struct intel_display *display,
+				    u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 joiner_pipes(i915)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
+		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & BIG_JOINER_ENABLE))
 				continue;
@@ -3612,20 +3639,28 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			else
 				*secondary_pipes |= BIT(pipe);
 		}
+	}
+}
 
-		if (DISPLAY_VER(dev_priv) < 13)
-			continue;
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+				 u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
+	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
 
-		power_domain = POWER_DOMAIN_PIPE(pipe);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
-			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+	if (!intel_display_can_use_joiner(display))
+		return;
 
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
-				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
-				*secondary_pipes |= BIT(pipe);
-		}
-	}
+	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
+					  &secondary_uncompressed_joiner_pipes);
+
+	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
+				&secondary_bigjoiner_pipes);
+
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
+
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
 	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-- 
2.45.2

