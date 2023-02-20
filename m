Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C160969CAF9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 13:27:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0758510E67F;
	Mon, 20 Feb 2023 12:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221BD10E67F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 12:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676896015; x=1708432015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CaZ4Vxt72I/L9C2r/3bgTx8wHRXbqmqazmECdNfNkfk=;
 b=Bz4hJSSU0aEyx95g0g9BN3jirqFlHfgZuMESuztDSaT0ZEuuXBd7JIXx
 pMgsu08imifEYmkqf7+NwkcePZsvj8dE88Hxv7v4nebeiI4uMDSyBIWuQ
 CLc9XIlnXOAhhISWHWRx7axA1MT1iTUFZdlDudcZCCFkQe0MLpMYap57F
 G0yeGLcZLZ2QMsU5DQkzsz+LOhtcoOGwaR6Nc//fMULN5QXRqUActN2pq
 nQo8CzOjeoyNt1JP6JtYwBIUzXnj+0o/CJT3VQn4svLSifu8D573KblgE
 CyolPe7nQPtaHDuYrwiqhgL65RNdv8Gnig27Ta1a/0jQlcJPm6fBtqo1K A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397073437"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397073437"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="621142097"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="621142097"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:53:54 +0530
Message-Id: <20230220122401.3495507-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 07/14] drm/i915/dp: Rearrange check for
 illegal mode and comments in mode_valid
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

Check for MODE_H_ILLEGAL before calculating max rates, lanes etc.
Move comments about compressed bpp U6.4 format closer to where it is used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 61726742e8bb..f39e3dbe50f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1136,6 +1136,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
+	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1143,13 +1146,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
-	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
-		return MODE_H_ILLEGAL;
-
-	/*
-	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
-	 * integer value since we support only integer values of bpp.
-	 */
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		/*
@@ -1158,6 +1154,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		 */
 		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
 
+		/*
+		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
+		 * integer value since we support only integer values of bpp.
+		 */
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
 				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
-- 
2.25.1

