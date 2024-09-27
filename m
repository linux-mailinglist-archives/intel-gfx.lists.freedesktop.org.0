Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1263298882A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B9F10ECD8;
	Fri, 27 Sep 2024 15:21:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SwxCfFzp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD5910ECDB;
 Fri, 27 Sep 2024 15:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450476; x=1758986476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tth4izH3MHWutaguWpqsR7YMksNTpyX7/oU888tWvWc=;
 b=SwxCfFzpP3JlcbuQljFqJlEKF/I6g/WSc8YEBRKESzeLJsawpHUdW1Rc
 Klw/pYj6CcCEoWHyFymFfm8vtV5L7ra3tBR0sli9SAmxav3o5vtFhI8rP
 Yu6q4QQ+XcjaEUTd2sjQE0hKJHOYAHdRxDZ5hPy+mez5gqI6wusBH9vbN
 P7h1yolGj/UrtMDUz03H4jOjZKtYi1F2a2mtRkzJy7mMH/XZa+8o65U/j
 4Qq76L3bNY4Muu8odGjr395/6QhN3OOVVQbvq86cyn7Jv8PL9GSFJmqvf
 MAI2tV9snOFF5+Dwq4HV+2YGvhThxAj39TX6B5vx/Q6k2SjZGa0UvT3gu A==;
X-CSE-ConnectionGUID: /3fBBzHwR5KBIV8UF0ptQQ==
X-CSE-MsgGUID: U2ljde+wRfe7AB0ROk4fzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179773"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179773"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:15 -0700
X-CSE-ConnectionGUID: Jgw0MNTeT6WHzwGwcN2eaw==
X-CSE-MsgGUID: sorD2JxOQvKSdNQAReSXjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95897046"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 15/17] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Fri, 27 Sep 2024 20:52:39 +0530
Message-ID: <20240927152241.4014909-16-ankit.k.nautiyal@intel.com>
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
index afc35a83eee2..d31bf66a669f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1318,26 +1318,38 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
@@ -2543,8 +2555,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
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

