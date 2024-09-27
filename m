Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF52988822
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D391310ECD7;
	Fri, 27 Sep 2024 15:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKXU5LhN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F109510ECD2;
 Fri, 27 Sep 2024 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450455; x=1758986455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S2ZClsJJ97aOjfyBJS7p3tRJURDWZl1o3O5bNJbVfaU=;
 b=GKXU5LhN1rCqNZDdUUQVF+236DCYMXJP1TaPmqOZ6NVs2Yq2icSAjJQ5
 iPkHyhHGIGYeZqlytm2+bKYnDQKvPb55zFCpoq6yJvUOv/Il/2EQR7CHO
 xmL2iVEMPeK3/FYYE7gQ3S0vB8oPLFbBuix+ma3VA0+RoW2ghS+ld418M
 7Kro60l9YPFkmCndcwZJiP9VDjKCktmkVDJDc/EN3teS2Il3w2//geEvy
 k++NsaQzA0TV7YYcXJGZyhAC5dWnh1Uc9q6oMW2znEozh//DdWw13NGQj
 vxDC37Ytz+qtra8O1czxx8tYlBSFIomv9LOXGKk8VZFFvXfT6Dx/cuQY3 A==;
X-CSE-ConnectionGUID: iMh3fDzoTGmzkTIM2xwvEg==
X-CSE-MsgGUID: uYH3lYMZTxOEy5QDu7v5aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179728"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179728"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:20:55 -0700
X-CSE-ConnectionGUID: EKU8O5B2QFut4Kaq3XMQaQ==
X-CSE-MsgGUID: ScvPSWeBQmiqeQMoGkX61A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95896916"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:20:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 05/17] drm/i915: Split current joiner hw state readout
Date: Fri, 27 Sep 2024 20:52:29 +0530
Message-ID: <20240927152241.4014909-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We need to add a new sanity checks and also do
some preparations for adding ultrajoiner hw state readout.
Lets first split reading of the uncompressed joiner and bigjoiner
bit masks into separate functions.

v2: Fixed checkpatch warnings (Ankit)
v3: Use struct intel_display in the new functions. (Ankit)
v4: Use check for bigjoiner before reading the regs. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 74 +++++++++++++++-----
 1 file changed, 55 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7667931f9d9..8d37973864ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3580,26 +3580,57 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
+					      u8 *primary_pipes, u8 *secondary_pipes)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	if (!HAS_BIGJOINER(dev_priv))
+	if (!HAS_UNCOMPRESSED_JOINER(display))
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
+	if (!HAS_BIGJOINER(display))
+		return;
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
@@ -3609,20 +3640,25 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			else
 				*secondary_pipes |= BIT(pipe);
 		}
+	}
+}
 
-		if (!HAS_UNCOMPRESSED_JOINER(dev_priv))
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
+	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
+					  &secondary_uncompressed_joiner_pipes);
 
-			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
-				*primary_pipes |= BIT(pipe);
-			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
-				*secondary_pipes |= BIT(pipe);
-		}
-	}
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

