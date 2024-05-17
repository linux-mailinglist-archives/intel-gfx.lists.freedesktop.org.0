Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 775238C888E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31C910EEFF;
	Fri, 17 May 2024 14:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IS9I2GNz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000C510EEFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957657; x=1747493657;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FRhXMi3zM27rh8S59/vcAoKuj2jO1WfMuROjTkOt2ew=;
 b=IS9I2GNzWl9lUHg8GkhT+652zD4EP9Aqtk2RtpOEJEgVAQ3rYJNXxeuq
 aTNdQe1cPsb2T8Uk6Fn4GIOdDpDWveUuPr+hiDWCdrgCuvaODVO8xWHdG
 SwAjrsmeS8oHVQx26KCMN3Iu5pm/445UtlLaj+w83qChsC+2FJltEemr2
 FxyoM/GE2aT105GG0AMywrRuVVq3tAtDUOefyTo+t+ypH7IajbUQaZD+Y
 EkxQDPDgBAcLyu6cHHzPk1VTUfsgBxnwuGKfBxO+SxEMLcqlMaDLhIVEs
 byOrcAvs5TA50/VdoxgPiFzcfeANRa63Tl6ktZR473wXJXQ6K+U143aG+ Q==;
X-CSE-ConnectionGUID: OGD1q1O3SQOab2BelFi8rw==
X-CSE-MsgGUID: EK7lP1mzQdWgfVG4JDSbCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008045"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008045"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:17 -0700
X-CSE-ConnectionGUID: 6K0bFiFkQK+Ht4lSCXKH8Q==
X-CSE-MsgGUID: o5K5+sy3QE+Y/uKRy+MQeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31801015"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:54:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915: Utilize edp_disable_dsc from VBT
Date: Fri, 17 May 2024 17:53:55 +0300
Message-ID: <20240517145356.26103-7-ville.syrjala@linux.intel.com>
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

Disable eDP DSC usage when instructed to do so by the VBT.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++++
 3 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b0a49b2f957f..97c6fcf0fe2b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1512,6 +1512,10 @@ parse_edp(struct drm_i915_private *i915,
 	if (i915->display.vbt.version >= 244)
 		panel->vbt.edp.max_link_rate =
 			edp->edp_max_port_link_rate[panel_type] * 20;
+
+	if (i915->display.vbt.version >= 251)
+		panel->vbt.edp.dsc_disable =
+			panel_bool(edp->edp_dsc_disable, panel_type);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9678c2b157f6..5e0372c14643 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -329,6 +329,7 @@ struct intel_vbt_panel_data {
 		u8 drrs_msa_timing_delay;
 		bool low_vswing;
 		bool hobl;
+		bool dsc_disable;
 	} edp;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a15ef6c015c8..af298d5017d9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1230,6 +1230,10 @@ bool intel_dp_has_dsc(struct intel_connector *connector)
 	if (connector->mst_port && !HAS_DSC_MST(i915))
 		return false;
 
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_eDP &&
+	    connector->panel.vbt.edp.dsc_disable)
+		return false;
+
 	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
 		return false;
 
-- 
2.44.1

