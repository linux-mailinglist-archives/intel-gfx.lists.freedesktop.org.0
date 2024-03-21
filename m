Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611F2885C6B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 16:45:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9923210EE3C;
	Thu, 21 Mar 2024 15:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="deFsNP4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9DF10EE08
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 15:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711035904; x=1742571904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wAxrkB8hhnoinNWbz0l+c8pj9+fxwiOX146EIbp3dVs=;
 b=deFsNP4ICxzUqKsoDFVdlh7AKtj5EfkFsvlRTXKKe82nSvDm+brfqxMo
 7XB2br0PjHmYeBiwCEYeasxGfX0K8SWXyrEE51mQX7SuKCm7nMaMGFSgY
 Fv0szQRhh04DmexDnUFYUs3VvigFxIlcaSe/+rP7zxQITERBsGoOAjkGN
 UxiBXYqsAGsj0sqURF12K6vI21PdCQlAQX2ovMNz5XY+IWqWqevnqSOx9
 l9RamwfJD2MN1cWl5qKwVJxvdRNEA4zmknppPlH/j81JejXuAd1HDUBcQ
 B2/0dZ0YgMHC5X8NTwRo0Yj3Ehh9GYrt0YEkVz6vAfdAtmMIDBz+qbyMD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5867570"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5867570"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 08:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="19018769"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 21 Mar 2024 08:45:02 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v18 5/9] drm/i915/dp: Add wrapper function to check AS SDP
Date: Thu, 21 Mar 2024 21:08:19 +0530
Message-Id: <20240321153828.3815870-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240311094238.3320888-2-mitulkumar.ajitkumar.golani@intel.com>
References: <20240311094238.3320888-2-mitulkumar.ajitkumar.golani@intel.com>
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

Add a wrapper function to check if both the source and
sink support Adaptive Sync SDP.

--v1:
Just use drm/i915/dp in subject line.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 92fe90df6e37..f8a478501f4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -123,6 +123,14 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 	return dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
+bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	return HAS_AS_SDP(i915) &&
+		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
+}
+
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index c540d3a73fe7..9f880d7865d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -88,6 +88,7 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
+bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 int intel_dp_link_symbol_size(int rate);
 int intel_dp_link_symbol_clock(int rate);
-- 
2.25.1

