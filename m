Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA36F9DA75F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6481A10EAAD;
	Wed, 27 Nov 2024 12:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Li17yQkM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E74A910EAAD;
 Wed, 27 Nov 2024 12:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709256; x=1764245256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gN9s5+2KLW4xXyMAQlysGxn6ZMJyTNgyBHyWLj0xsrU=;
 b=Li17yQkMtW/plCKSVxrcwdD20HT7iH3FV9LVAcgtpoeiNgqpYoNyUdGg
 ia9JyY0A1X6v18jVX6C/pExzlazlA3UBRLwvpjvvbOLeqbV3Fox6WwVXD
 vTbrr4a13z4/yBL/DPLOTj5GDw26PQBWQXKSyHG6MJr7ltXhwHI92AcFW
 LR+AWG8WlVbnB/Ib3cFW/URLNt0jwCZMaeqYiYm4qObGSV/BaglgMFSg6
 FMsOyeGGUknYdcP6Ebbmww6m7o930OAeawTaZ3+zCJgESrNyvhQJDUQvq
 0LCbP2zMGyDnA+JCb2WiizbNIqE7azzl0Z84ZpKWeZeWK/CQVLEA/43nB g==;
X-CSE-ConnectionGUID: dlJN5Nq3SPWvMlYOKlJgBw==
X-CSE-MsgGUID: yrkAd1SrQ16sftxOYV8HOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972798"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972798"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:36 -0800
X-CSE-ConnectionGUID: 9HuhCkayTSyOnzZMrNqPEA==
X-CSE-MsgGUID: lVHVX5mGTIWwzRRO36R/eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754926"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:34 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 1/6] drm/i915/display: create a common function to check
 validity of ELD
Date: Wed, 27 Nov 2024 14:07:10 +0200
Message-Id: <20241127120715.185348-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
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

v2: Keep intel_encoder being passed to audio config calls
    Use intel_display instead of i915

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 23 ++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index c6b251f178c2..e8c2cbe34523 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -689,21 +689,32 @@ void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
 }
 
+static bool intel_audio_eld_valid(struct intel_encoder *encoder,
+				  struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_connector *connector = conn_state->connector;
+
+	if (!connector->eld[0]) {
+		drm_dbg_kms(display->drm,
+			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
+			    connector->base.id, connector->name);
+		return false;
+	}
+
+	return true;
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!connector->eld[0]) {
-		drm_dbg_kms(&i915->drm,
-			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
-			    connector->base.id, connector->name);
+	if (!intel_audio_eld_valid(encoder, conn_state))
 		return false;
-	}
 
 	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
-- 
2.34.1

