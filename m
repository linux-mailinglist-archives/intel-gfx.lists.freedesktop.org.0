Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D65988079
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904F310EC64;
	Fri, 27 Sep 2024 08:37:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XngiR1t9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA7D010EC5E;
 Fri, 27 Sep 2024 08:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426224; x=1758962224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E0jxqQTbTWHdHxHhbO6LQ2baJ+sy9LY39lLU+gXS/Wc=;
 b=XngiR1t9c4Z2rkTjug8KM+dCDBVfC+Mlc5f3AQTZauz0sidpVCRE+d8c
 0+HJCGi7HDEXgaeK87Lt9dplfHWqRwfW9mwT/F7mbLVQDeHv2BqE+lM+D
 xWBA2Rs9T0Mw4gDcNbvsGLDkRFkRAH+GCpRv2gXMHhiWQN97H8DEI8Spt
 MXMuZLLRImB6cDKGvfdcjntiVfV/vCHO4Ph8tPNIjwoJ2hAmTbGVs4fT2
 vfZaLyre9Cn5fyA1TQFODuvEeOy99qy85pEU/A85HkzVrGc6bBDLWDv+i
 glSxk7/VyLaDd89vXc/5tnU54M3wU9ExrTcy1azoRaHpo/nEnDdbIHbgg w==;
X-CSE-ConnectionGUID: 8ypxWnnAQmOvMfxmkC0U1Q==
X-CSE-MsgGUID: AaVG04x+SOu3pueAVOYGog==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977634"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977634"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:03 -0700
X-CSE-ConnectionGUID: aWeX8732Sz2RAVKIQhMFJw==
X-CSE-MsgGUID: d8LABcxHTVu8BFGo0GaHOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409442"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 15/17] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Fri, 27 Sep 2024 14:08:29 +0530
Message-ID: <20240927083831.3913645-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Implement required changes for mode validation and compute config,
to support Ultrajoiner.

v2:
-Drop changes for HDMI.
-Separate out DSC changes into another patch.
v3: Fix check in can_ultrajoiner. (Ankit)
v4:
-Unify helper to check joiner requirement. (Ville)
-Split patches for ultrajoiner changes for max dsc slices and compressed
bpp.(Ankit)
v5: Fix check for joiner. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e7c5e113187..b3888a8d8d6e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1302,26 +1302,38 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 }
 
 static
-bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
-			      struct intel_connector *connector,
-			      int hdisplay, int clock)
+bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
+			   struct intel_connector *connector,
+			   int hdisplay, int clock,
+			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
-	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
+	num_joined_pipes /= 2;
+
+	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
+	       hdisplay > num_joined_pipes * 5120;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
 			      int hdisplay, int clock)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (connector->force_joined_pipes)
 		return connector->force_joined_pipes;
 
-	if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
+	if (HAS_ULTRAJOINER(i915) &&
+	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
+		return 4;
+
+	if ((HAS_BIGJOINER(i915) || HAS_UNCOMPRESSED_JOINER(i915)) &&
+	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
 		return 2;
 
 	return 1;
@@ -2527,8 +2539,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
+	 * Ultrajoiner always needs compression.
 	 */
-	return !HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2;
+	return (!HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2) ||
+		num_joined_pipes == 4;
 }
 
 static int
-- 
2.45.2

