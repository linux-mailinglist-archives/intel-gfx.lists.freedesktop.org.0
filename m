Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3F58C8888
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A2310EEF5;
	Fri, 17 May 2024 14:54:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwJagfLU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1601110EEF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957651; x=1747493651;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xfaJmIxn+4QUxHLChpChUSQea4DLYrFPr1pMkNwDfrk=;
 b=MwJagfLU5Ht1Gm0iBtKykoAGbP6sMsRGAEfqUDkvs0LrDuPMU6WENGDw
 qpS1N7lcETpwd4QREho8kZgM+p2lQaTF8i/bdNWN4WhQ0YZ50/rekaaol
 Mmw5PyMx7wLTwi0AR93UVYmPb4v1xRnP3HqI+Te8WIFOQ+/7zkH8XAd8O
 rHyD2R8o8+TmEmv+0I4gqpkxcyzYq9ScpShhZVvkq2/AT1/zBdZhZRFXP
 hM1BHRMQytjzPa49YoHl+cuf+8xzBG0wgvEvZFMqSN5f8/4ygHqps4MYK
 yS5kszLkgudcHLf2iXXnU69GL6Wxv+pS1xx8yLtE6TboeG9slZKUafKzK w==;
X-CSE-ConnectionGUID: bD/pg2k4TR2iqdKSd08yFQ==
X-CSE-MsgGUID: S+CGL27mRvKZKefCqvjBvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008032"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008032"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:08 -0700
X-CSE-ConnectionGUID: cxPEdOjUS0yP2hAA36o5tQ==
X-CSE-MsgGUID: ocw+BUVcRyyBOMZEQQHvQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31800954"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:54:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915: Handle MST in intel_dp_has_dsc()
Date: Fri, 17 May 2024 17:53:52 +0300
Message-ID: <20240517145356.26103-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Utilize intel_dp_has_dsc() for MST as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7bf283b4df7f..a4703b71c498 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1220,13 +1220,16 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	       connector->force_bigjoiner_enable;
 }
 
-static bool intel_dp_has_dsc(struct intel_connector *connector)
+bool intel_dp_has_dsc(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (!HAS_DSC(i915))
 		return false;
 
+	if (connector->mst_port && !HAS_DSC_MST(i915))
+		return false;
+
 	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index aad2223df2a3..c0d3e315559e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -90,6 +90,7 @@ bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
+bool intel_dp_has_dsc(struct intel_connector *connector);
 int intel_dp_link_symbol_size(int rate);
 int intel_dp_link_symbol_clock(int rate);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c772ba19c547..b57753d2d82c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1434,8 +1434,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	if (HAS_DSC_MST(dev_priv) &&
-	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
+	if (intel_dp_has_dsc(intel_connector)) {
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
-- 
2.44.1

