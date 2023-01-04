Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6F065D04B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 11:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E2210E557;
	Wed,  4 Jan 2023 10:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AE010E558;
 Wed,  4 Jan 2023 10:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672826807; x=1704362807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2ZxWQ1wXk0TRGoDjtG+BlrZwedVWlcUZikKSbyrwjSQ=;
 b=cOS4iML3nFCTi167vxols8+K7CI2DNA2yf6EwqcwhXTnCWUdc8pZyPJB
 FG9e3UkHMU30aVatqcods2r4NX8KkahDLAQcsveAtdRZPz0JxVocBiyzB
 xEEo2cAo9zVlR5mdzP9HUC7PHJCsnSaqPVfT6Srd5X18/02PHU+LGkLT2
 t+9DSF2a+hbchDKOJmhodSPVa2ZwktDnZ7vbN4kfcCney0aDRs/iQboZT
 R43w4TWX0B6Woq0nEEDAWoOCcarJ8b6ZsoDAXQ4ROAYgaoaaByg/6JEkP
 t5CQWTJYtpO+q452QXePdvHhAtxVKEyN4Q6MdBQpTAUsM/y2LrWUkG+yY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="386333844"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="386333844"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:06:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="983877120"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="983877120"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:06:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  4 Jan 2023 12:05:30 +0200
Message-Id: <8997e0fa3b0fd03c920e72d1dff24c0d96ff4dd0.1672826282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1672826282.git.jani.nikula@intel.com>
References: <cover.1672826282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 15/22] drm/edid: move EDID BPC quirk
 application to update_display_info()
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The BPC quirks are closer to home in update_display_info().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 810a5fca398a..5881df5bddb9 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6555,6 +6555,18 @@ static void update_display_info(struct drm_connector *connector,
 	if (info->quirks & EDID_QUIRK_CAP_DSC_15BPP)
 		info->max_dsc_bpp = 15;
 
+	if (info->quirks & EDID_QUIRK_FORCE_6BPC)
+		info->bpc = 6;
+
+	if (info->quirks & EDID_QUIRK_FORCE_8BPC)
+		info->bpc = 8;
+
+	if (info->quirks & EDID_QUIRK_FORCE_10BPC)
+		info->bpc = 10;
+
+	if (info->quirks & EDID_QUIRK_FORCE_12BPC)
+		info->bpc = 12;
+
 	/* Depends on info->cea_rev set by drm_parse_cea_ext() above */
 	drm_edid_to_eld(connector, drm_edid);
 }
@@ -6654,7 +6666,7 @@ static int add_displayid_detailed_modes(struct drm_connector *connector,
 static int _drm_edid_connector_update(struct drm_connector *connector,
 				      const struct drm_edid *drm_edid)
 {
-	struct drm_display_info *info = &connector->display_info;
+	const struct drm_display_info *info = &connector->display_info;
 	int num_modes = 0;
 
 	/*
@@ -6694,18 +6706,6 @@ static int _drm_edid_connector_update(struct drm_connector *connector,
 	if (info->quirks & (EDID_QUIRK_PREFER_LARGE_60 | EDID_QUIRK_PREFER_LARGE_75))
 		edid_fixup_preferred(connector);
 
-	if (info->quirks & EDID_QUIRK_FORCE_6BPC)
-		info->bpc = 6;
-
-	if (info->quirks & EDID_QUIRK_FORCE_8BPC)
-		info->bpc = 8;
-
-	if (info->quirks & EDID_QUIRK_FORCE_10BPC)
-		info->bpc = 10;
-
-	if (info->quirks & EDID_QUIRK_FORCE_12BPC)
-		info->bpc = 12;
-
 	return num_modes;
 }
 
-- 
2.34.1

