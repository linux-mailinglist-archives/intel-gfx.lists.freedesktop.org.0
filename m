Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDE0886BFB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 13:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C4510E3B2;
	Fri, 22 Mar 2024 12:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FK7S9DYf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D7A10E3B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711110294; x=1742646294;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hvGWrwDzvE0P8RHKx7UXP2xMBzYnN06qzuYysZ6IAKg=;
 b=FK7S9DYfeLvxX0QusAYj2ABr35FV/8nbUrpvBOwoepO5G8RZ7Jrtww3l
 CpVPk7DD2BSxGM+7HDkXWG+DguIzjTLAsBKiwRT6nnpMwS9sBZryJUVmW
 XwTItHOE+od/cbYYofdnvWAilyWqIzXptSw1ndWxSAe1k597pvSTtSUpG
 AxzDvbmVSyWx6AMiJtWeH6z8Xy+5lRIT4yjGYikaj5GzJDK+80tX5NxtW
 uZTUoZD5Qi4dREhugkuln69q4POE5pxCtPDYhgmvJ0YPBvHDYM06ReTZb
 0EE02qU2RLqLiW+AKruh0mvIJEZWWq2lnTex40XMP4atVgwQEGz0uvXJS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6281202"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6281202"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 05:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="15322042"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 05:24:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/lspcon: Separate lspcon probe and lspcon init
Date: Fri, 22 Mar 2024 17:48:32 +0530
Message-Id: <20240322121832.4170061-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
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

Currently we probe for lspcon, inside lspcon init. Which does 2 things:
probe the lspcon and set the expected LS/PCON mode.

If there is no lspcon connected, the probe expectedly fails and
results in error message. This inturn gets propogated to
lspcon init and we get again error message for lspcon init
failure.

Separate the probe function and avoid displaying error if probe fails.
If probe succeeds, only then start lspcon init and set the expected
LS/PCON mode as first step.

While at it move the drm_err message in lspcon init, instead of the
caller.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
 drivers/gpu/drm/i915/display/intel_lspcon.c | 27 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
 3 files changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 94fa34f77cf0..ea8d3e70127e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5882,6 +5882,9 @@ intel_dp_connector_register(struct drm_connector *connector)
 	 * ToDo: Clean this up to handle lspcon init and resume more
 	 * efficiently and streamlined.
 	 */
+	if (!lspcon_probe(lspcon))
+		return ret;
+
 	if (lspcon_init(dig_port)) {
 		lspcon_detect_hdr_capability(lspcon);
 		if (lspcon->hdr_supported)
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 62159d3ead56..570fde848d00 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -266,7 +266,7 @@ static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
 	return true;
 }
 
-static bool lspcon_probe(struct intel_lspcon *lspcon)
+bool lspcon_probe(struct intel_lspcon *lspcon)
 {
 	int retry;
 	enum drm_dp_dual_mode_type adaptor_type;
@@ -676,30 +676,31 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 	lspcon->active = false;
 	lspcon->mode = DRM_LSPCON_MODE_INVALID;
 
-	if (!lspcon_probe(lspcon)) {
-		drm_err(&i915->drm, "Failed to probe lspcon\n");
-		return false;
-	}
-
 	if (!lspcon_set_expected_mode(lspcon)) {
 		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
-		return false;
+		goto lspcon_init_failed;
 	}
 
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
 		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
-		return false;
+		goto lspcon_init_failed;
 	}
 
 	if (!lspcon_detect_vendor(lspcon)) {
 		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
-		return false;
+		goto lspcon_init_failed;
 	}
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
 	return true;
+
+lspcon_init_failed:
+	drm_err(&i915->drm, "LSPCON init failed on port %c\n",
+		port_name(dig_port->base.port));
+
+	return false;
 }
 
 u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
@@ -721,11 +722,11 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 		return;
 
 	if (!lspcon->active) {
-		if (!lspcon_init(dig_port)) {
-			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
-				port_name(dig_port->base.port));
+		if (!lspcon_probe(lspcon))
+			return;
+
+		if (!lspcon_init(dig_port))
 			return;
-		}
 	}
 
 	if (lspcon_wake_native_aux_ch(lspcon)) {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index e19e10492b05..b156cc6b3a23 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -16,6 +16,7 @@ struct intel_encoder;
 struct intel_lspcon;
 
 bool lspcon_init(struct intel_digital_port *dig_port);
+bool lspcon_probe(struct intel_lspcon *lspcon);
 void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
 void lspcon_resume(struct intel_digital_port *dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
-- 
2.40.1

