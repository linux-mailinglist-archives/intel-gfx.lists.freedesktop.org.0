Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4A64D6786
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E917D10E646;
	Fri, 11 Mar 2022 17:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE74910E646
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019495; x=1678555495;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I7mcBV7fynie3TkKal99oeexbN/Gh8qVvqvLsV6Ccrk=;
 b=GTNI7fMV3QNB5fm2bMybtt6e5K8FehnlrEuDGzclKHZmHC3PufUtIen6
 PkDk37qf6/wTUTocqsrQAsPCLKv/WLbAGvIocWsI2KT4r6hOhuSWBxj1V
 3UqaJXJgjjspYir1MhVUCFEbGNpw0wTpYFJ9N2KTL+G37wxPJdueXb7aj
 fsp3W4xM+++lJ9tiIUh8n6PD4X4rA7/xNAxxJULhTyhyQfIFTQDubh1fF
 BWPOWTL+uL++Wo/gjMJkLgGj516NqAdRAbZfx47XBxPxKXGF0h5/fskX+
 FdsSMsMfpJrdDNX3ePMWIdQ6OLQWwyqDitGZ2bRMo6ZEbCefsmUYtdPm9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="318836012"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="318836012"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="597174847"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 11 Mar 2022 09:24:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:20 +0200
Message-Id: <20220311172428.14685-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/16] drm/i915: Introduce
 intel_panel_preferred_fixed_mode()
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

There are a couple of cases where we essentially just want to
get/check the preferred fixed mode of the panel. Add a small
helper for that to abstract away the direct pointer lookup.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    | 3 ++-
 drivers/gpu/drm/i915/display/intel_panel.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_panel.h | 2 ++
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 2 +-
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3c97cd5853cc..2709a8c08cee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -582,8 +582,9 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 						     int link_rate,
 						     u8 lane_count)
 {
+	/* FIXME figure out what we actually want here */
 	const struct drm_display_mode *fixed_mode =
-		intel_dp->attached_connector->panel.fixed_mode;
+		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
 	int mode_rate, max_rate;
 
 	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 222328d4e7a1..3ca37766ccb3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -45,6 +45,12 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
 }
 
+const struct drm_display_mode *
+intel_panel_preferred_fixed_mode(struct intel_connector *connector)
+{
+	return connector->panel.fixed_mode;
+}
+
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 051b86450156..88e6f5c217d8 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -25,6 +25,8 @@ enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
 bool intel_panel_use_ssc(struct drm_i915_private *i915);
 const struct drm_display_mode *
+intel_panel_preferred_fixed_mode(struct intel_connector *connector);
+const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
 const struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 04487b03b640..6e0a4f48d84d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2932,7 +2932,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 		}
 	}
 
-	if (!intel_connector->panel.fixed_mode)
+	if (!intel_panel_preferred_fixed_mode(intel_connector))
 		goto err;
 
 	return true;
-- 
2.34.1

