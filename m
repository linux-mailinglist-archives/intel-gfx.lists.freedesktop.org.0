Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299547D6B2E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A987410E5C7;
	Wed, 25 Oct 2023 12:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1417D10E5C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236389; x=1729772389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UOZCb/HOfjje1YpToEsft4X4ArMzUxZcnORzMiHZ/jY=;
 b=dfHyXipAwqLQOYXeSH0FLwXGcIARbkhZYdnGLf62gIiiwmno6amvWur0
 xt3yNraVUHkiJf152Prt86/Bs00RjsSflNsceRRbj4X4p/qeWpqHs2x+a
 +zQMPB9bhW8hRnV2NDznQ/T32TqXPI11xLjUiKHmB8uLNoRmR3DwylUCm
 AUfeeic41l+P1lcA7+iJq4udJ/jPgqWbHU+pZXs5AamMkWEhqY1K5kbNf
 24R8YDnF+/mYbJkgSRlVvFfPAe7mVjVYoFP3k/7Reqtg6FH1KlPC/pCH4
 M7XkGMYbEA2R5ZC1cN47TdPp3yHwuzL1sJAjnyCb/ripuyieBvkFpegJR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="451520535"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="451520535"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:19:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882435996"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882435996"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:19:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 17:43:18 +0530
Message-Id: <20231025121318.2732051-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
References: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Limit max_requested_bpc based
 on src DSC bpc limits
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the moment the max requested bpc is limited to 6 to 10/12.
For platforms that support DSC, min and max src bpc with DSC are
different.

Account for DSC bpc limitations, when setting min and max value for
max_requested_bpc property.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index abc718f1a878..1935b9014b12 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5907,8 +5907,17 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 	intel_attach_broadcast_rgb_property(connector);
 	if (HAS_GMCH(dev_priv))
 		drm_connector_attach_max_bpc_property(connector, 6, 10);
-	else if (DISPLAY_VER(dev_priv) >= 5)
-		drm_connector_attach_max_bpc_property(connector, 6, 12);
+	else if (DISPLAY_VER(dev_priv) >= 5) {
+		int min_bpc = 6, max_bpc = 12;
+		struct intel_connector *intel_connector = to_intel_connector(connector);
+
+		if (HAS_DSC(dev_priv) && drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
+			min_bpc = intel_dp_dsc_min_src_input_bpc(dev_priv);
+			max_bpc = intel_dp_dsc_max_src_input_bpc(dev_priv);
+		}
+
+		drm_connector_attach_max_bpc_property(connector, min_bpc, max_bpc);
+	}
 
 	/* Register HDMI colorspace for case of lspcon */
 	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
-- 
2.40.1

