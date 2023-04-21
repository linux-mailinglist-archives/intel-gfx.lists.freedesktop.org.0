Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE59B6EA999
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E4810EDF7;
	Fri, 21 Apr 2023 11:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6076F10EDF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077680; x=1713613680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V0kGArqC6sg6/LpD4tfBM6qpSA9zuWWvJU9RuLFuH44=;
 b=CXKW/8+MyxrRMixZdXSYzhz2vpXvYTYhcKoBXCj0fZ6zgy0ej2lXHFRS
 HUjiY+IlyqSJmAkRwuoGDz9ZeDoTy6XCSpz+u9UX85nHvVFQu8KJ8FKaV
 AC/A2KgnhvTDzuejFP/F2h2yaMs1HRKJWFUHNXSoeH66N3sgOf55N3czQ
 GV24yHErplZ9Ufg6WQ1x1pcOTdFyLp3I6CzlbMYzYjHAYg3jEMrvJveGh
 Vb92cFVNY6MnnEYkraN/gOlG7fo6n36xwi0KnVsC4Ml03KIrPMvNSHxdK
 XmihWku9iJwFxexVwT8MoTYheC4RhhNrEUoWm8DUd0Y9pIudu8A36MoOO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730240"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730240"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709375"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709375"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:47:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:39 +0300
Message-Id: <964a765fd38a0da92c910aaef23bcf8eada07df0.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/edid: parse display info has_audio
 similar to is_hdmi
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

Since we already iterate everything that's needed for determining audio,
reduce the need to call drm_detect_monitor_audio() by storing has_audio
to connector info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c  | 6 ++++++
 include/drm/drm_connector.h | 8 ++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 0454da505687..813ce00a106a 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6243,6 +6243,9 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 			info->color_formats |= DRM_COLOR_FORMAT_YCBCR444;
 		if (edid_ext[3] & EDID_CEA_YCRCB422)
 			info->color_formats |= DRM_COLOR_FORMAT_YCBCR422;
+		if (edid_ext[3] & EDID_BASIC_AUDIO)
+			info->has_audio = true;
+
 	}
 	drm_edid_iter_end(&edid_iter);
 
@@ -6268,6 +6271,8 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 			drm_parse_hdr_metadata_block(connector, data);
 		else if (cea_db_tag(db) == CTA_DB_VIDEO)
 			parse_cta_vdb(connector, db);
+		else if (cea_db_tag(db) == CTA_DB_AUDIO)
+			info->has_audio = true;
 	}
 	cea_db_iter_end(&iter);
 
@@ -6424,6 +6429,7 @@ static void drm_reset_display_info(struct drm_connector *connector)
 	info->max_tmds_clock = 0;
 	info->dvi_dual = false;
 	info->is_hdmi = false;
+	info->has_audio = false;
 	info->has_hdmi_infoframe = false;
 	info->rgb_quant_range_selectable = false;
 	memset(&info->hdmi, 0, sizeof(info->hdmi));
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 7b5048516185..c8be6a343589 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -653,6 +653,14 @@ struct drm_display_info {
 	 */
 	bool is_hdmi;
 
+	/**
+	 * @has_audio: True if the sink supports audio.
+	 *
+	 * This field shall be used instead of calling
+	 * drm_detect_monitor_audio() when possible.
+	 */
+	bool has_audio;
+
 	/**
 	 * @has_hdmi_infoframe: Does the sink support the HDMI infoframe?
 	 */
-- 
2.39.2

