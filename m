Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D74334E3DF5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66C410E54E;
	Tue, 22 Mar 2022 12:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567BC10E406
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950431; x=1679486431;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=U/Hv68NvbVbG2dndD9N3D3MrI1L3TiqQbHw5+WJgLps=;
 b=dSSXSLs+wwVvV9Fn/KPbIX2m5TbswNLbTnvRPa7WFPL7Q9RCgFIlyEsy
 +X1SDUAQvn1jmFtsQmrneRBRHt0k5Hs9omiNyeRxkevichXnMSXNEIG3t
 fkDDfnDTLhycQiLWXp+2aj+ma8GMQG+TsOVWphnP6SJtYfTe0Ym+a/Bxf
 JIIq96ZLBsx1bnrsQsNqu6mkvQSgDqVgbpoTHkz16AsUjr/jbz1Q6DKcp
 EaeXRnzVpJ4K9FQnmwyFv80hNJm1JfbAa6lorfTzLrPEu9w7wIDvo8o8Z
 Evvvo02v0mUmXKHdCQxyguQeSbPxYB/UDJlBlI9e8sLWxbYc5+MiRLvVp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="238403806"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="238403806"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="583231465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2022 05:00:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:07 +0200
Message-Id: <20220322120015.28074-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/12] drm/i915/dp:
 s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
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

intel_dp_hdmi_ycbcr420() does account for native DP 4:2:0
output as well, so lets rename it a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fc50802c9997..9720571438e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1157,8 +1157,8 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
 }
 
-static bool intel_dp_hdmi_ycbcr420(struct intel_dp *intel_dp,
-				   const struct intel_crtc_state *crtc_state)
+static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
+				 const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
@@ -1169,7 +1169,7 @@ static bool intel_dp_hdmi_bpc_possible(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
 				       int bpc)
 {
-	bool ycbcr420_output = intel_dp_hdmi_ycbcr420(intel_dp, crtc_state);
+	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
 	return intel_hdmi_bpc_possible(crtc_state, bpc,
-- 
2.34.1

