Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B72A4E3DFF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A2F10E57C;
	Tue, 22 Mar 2022 12:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A4E10E574
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950476; x=1679486476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jSuAL4EKPqS6FVuS8Tq6gpKbecCxhxNv/d620uGhNR0=;
 b=mscJgDTQx9JqnQjpo0YH0Or4rWQBdFWsVmciO/bLOsshlSrrkklZgLEB
 2R8w2gvhXhaOU6+W2b3uK3KfTzwCwNWotICzuuyYFhnMYwgAIODsbH8DM
 +vH0hjgBUjHyyWFDkPYzE7biqJE8qe/ibHdGn7r6dQ63jQzjCYER2LOnp
 nc9MSQBBzuEpR1t8jB0wZLlmPWB32SBMEBjBfxR7hH7BTeuj3i+/NgPzB
 zPWbupE9+729vJ5FkklaZu+1G4IbbiT5c1AmryiEIsdLILBNQoebmVwz+
 SCKiG/cqiTbZxFbB4uZCN2jy44B9mm8wivv+lva2NfScLFFWZhzNUMpJi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="245273464"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="245273464"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="543664380"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 22 Mar 2022 05:00:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:15 +0200
Message-Id: <20220322120015.28074-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/12] drm/i915/dp: Disable DFP RGB->YCbCr
 conversion for now
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We lack sufficient state tracking to figure out whether
we want the DFP to perform the RGB->YCbCr conversion for us
or not. So currently we are blindly just enabling that all the
time when supported by the DFP. That is nonsense. So until
we imporve our state tracking for this just disable the feature.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d3d458b3267d..a57581198a47 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1180,6 +1180,7 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state)
 {
+	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
 	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
 		 intel_dp->dfp.ycbcr_444_to_420);
@@ -2574,6 +2575,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
 			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
 
+	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
 	tmp = intel_dp->dfp.rgb_to_ycbcr ?
 		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
 
@@ -4430,6 +4432,14 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
 								 intel_dp->downstream_ports,
 								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
+	/*
+	 * FIXME need to actually track whether we're really
+	 * going to be doing the RGB->YCbCr connversion or not.
+	 * We can't tell by simply looking at intel_dp->dfp.rgb_to_ycbcr.
+	 * Readout is going to annoying due to having to read that
+	 * state from external hardware that may vanish at any time :(
+	 */
+	rgb_to_ycbcr = false;
 
 	if (DISPLAY_VER(i915) >= 11) {
 		/* Let PCON convert from RGB->YCbCr if possible */
-- 
2.34.1

