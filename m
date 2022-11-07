Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F5561FEDD
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A0810E3E8;
	Mon,  7 Nov 2022 19:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F7810E3E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 19:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667850374; x=1699386374;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cWS6uXscNTpFDdMawUTc37923ifo4gwPniDw9GVwJQs=;
 b=J3SnPq98xAP0jxzT8KxVkcykXj1P7hUQEwolCkrmCRDE6ViNqglrf/v8
 7wCy1r5YbZI0et0PvSmPlZDJH62UVeDO4ucnXDR8JK+HJwzjtGuyvKrjx
 cqkzr8AC6zw5LF6u5Q1HAmJ5MlVgBwOUfK501k0+4V5Ca8bBn7BeqyLeh
 47AiZqbZEKoY2U3Sv37MbFlgBMd0No/ZodhDyLxqEGjzij0wWwS8XZN5M
 XpVoZYjHWxuc0LaxIoN/3PDb/+/ZiSXAokVjA6Kif8iPosSXYgknlmoLv
 /xML/GqjuH5pa0SXeN7KmOxxJ8wyQ4ckabtEfKhd+e5YVM1E+IZepTAfY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="337229168"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="337229168"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965296759"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="965296759"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga005.fm.intel.com with SMTP; 07 Nov 2022 11:46:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Nov 2022 21:46:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 21:46:01 +0200
Message-Id: <20221107194604.15227-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Force RGB output for DVI sink
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

YCbCr output requires infoframes and whatnot, so don't allow
it when dealing with a DVI sink (or a HDMI sink we wishc to
treat as DVI).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f2a4431a7fbf..d3692c9a1d80 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2190,9 +2190,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 }
 
 static enum intel_output_format
-intel_hdmi_output_format(struct intel_connector *connector,
+intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
+			 struct intel_connector *connector,
 			 bool ycbcr_420_output)
 {
+	if (!crtc_state->has_hdmi_sink)
+		return INTEL_OUTPUT_FORMAT_RGB;
+
 	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
 	else
@@ -2211,7 +2215,8 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 	int ret;
 
-	crtc_state->output_format = intel_hdmi_output_format(connector, ycbcr_420_only);
+	crtc_state->output_format =
+		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
 
 	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
 		drm_dbg_kms(&i915->drm,
@@ -2226,7 +2231,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
-		crtc_state->output_format = intel_hdmi_output_format(connector, true);
+		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
 		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	}
 
-- 
2.37.4

