Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F9A994139
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0DF110E497;
	Tue,  8 Oct 2024 08:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4Xm7cpo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C3710E497
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375827; x=1759911827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XnwrjhXAsKJYoN8R+oq/1XZ2riKRblkbWgTdq/9DOYA=;
 b=j4Xm7cpofb4HIxuXSFB+eADBgsM8/wMSGuTWGf0ecw1lHkJbReswnJ3O
 XmKa1b5YT7FjWc/ZPVJt0yrE4ouLZvpE/THiuoBNn/00tr0xe8s1DY/6T
 Vhg2RNbHKajoShrQ0qFOmtigtxDzgNaya0GDR+SxqnLljWSBoqVv8vKpN
 PeSTbFBCFJnargUDroHwvxf1tEtDQ0a/Ee9lY++vNuZ5D+a9pcGmGdXWI
 hOU6SCvj0m4QyQmelLf5g6hcMLmED9FsL0TpRiGHrcNH5bSFobDvNkP3f
 KTF6D2nYiBPGQCSA982Rj2moz09MGq+gT7Yv/ub5BdNSj2iCbz19XOVhK A==;
X-CSE-ConnectionGUID: A8cCXRd/Rfu9yPjs0ThrFg==
X-CSE-MsgGUID: z5+0LQzBS7yU14SNyt3G4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079112"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079112"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:47 -0700
X-CSE-ConnectionGUID: BZ5cFz+RScmmTG3sQ9NbJA==
X-CSE-MsgGUID: 7Fr5Q2BjQQ+7NJJN/VpvqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755758"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:45 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 2/9] drm/i915/display: create a common function to check
 validity of ELD
Date: Tue,  8 Oct 2024 11:23:20 +0300
Message-Id: <20241008082327.342020-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
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

We would need to check the validity of connector ELD from multiple
places in the follow up patches. So create a separate function to
check the validity for ELD.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 1afd3b99e3ea..6946f3b0f8c9 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -690,13 +690,10 @@ void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
 }
 
-bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
-				struct drm_connector_state *conn_state)
+static bool intel_audio_eld_valid(struct drm_connector_state *conn_state)
 {
 	struct drm_connector *connector = conn_state->connector;
 	struct drm_i915_private *i915 = to_i915(connector->dev);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 
 	if (!connector->eld[0]) {
 		drm_dbg_kms(&i915->drm,
@@ -705,6 +702,19 @@ bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
 		return false;
 	}
 
+	return true;
+}
+
+bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state)
+{
+	struct drm_connector *connector = conn_state->connector;
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!intel_audio_eld_valid(conn_state))
+		return false;
+
 	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
 
-- 
2.34.1

