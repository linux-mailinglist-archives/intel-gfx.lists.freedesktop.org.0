Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B564C5180FA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1E010F815;
	Tue,  3 May 2022 09:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143A110F81F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569946; x=1683105946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JUr6nmaPHYa013vyjZPm1z/CYrohH/6B23kGD6SxEng=;
 b=Wng7GWRzwvtpBHdI4+oLHuL2SRFkIDq0z7LWkH0GDpz2LONRe7Y6sDwC
 OThbIOSgB6SNrDPoEWoYYnXMXDWpFtnvkgL9b7d3q6HqqdywfT6bXzeda
 1NSwMMw//ZzEMG47P8vunemLHpNFbKVoULNoMCQ7yIfuf1hpYUiwCEHsZ
 zvV8hq0m6K45dbQx4pBBzIuJvOQ7sJkQsIEEm8c2D1AmrHqfwtFw/rZxm
 Ud0imlSncFh0LIU+QmhHyAAZrbD7eG76MYrsNDrxrdeKWlrbtyqw90HV+
 n0ihZVsUUb1S5zWQADVcF2ac90uTTEsfYDwhd3D9+Ah2oJsTYXCb1TGqt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="265027126"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="265027126"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="691751855"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:24:04 +0300
Message-Id: <163ebbfd765066acbfc267256fb3b67fc711a78d.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 19/20] drm/edid: skip CTA extension scan in
 drm_edid_to_eld() just for CTA rev
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

The DisplayID CTA data block version does not necessarily match the CTA
revision. Simplify by postponing drm_edid_to_eld() slightly, and reusing
the CTA revision extracted by drm_parse_cea_ext().

By not bailing out early in drm_edid_to_eld() we may end up filling
meaningless data to the ELD. However, the main decision for audio is not
the ELD, but rather drm_detect_monitor_audio() called by drivers.

(Arguably a future cleanup could do that in drm_add_edid_modes() and
cache the result in the connector.)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 41f24f4c2d23..391c91199aa2 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4863,10 +4863,10 @@ static void clear_eld(struct drm_connector *connector)
 static void drm_edid_to_eld(struct drm_connector *connector,
 			    const struct edid *edid)
 {
+	const struct drm_display_info *info = &connector->display_info;
 	const struct cea_db *db;
 	struct cea_db_iter iter;
 	uint8_t *eld = connector->eld;
-	const u8 *cea;
 	int total_sad_count = 0;
 	int mnl;
 
@@ -4875,16 +4875,10 @@ static void drm_edid_to_eld(struct drm_connector *connector,
 	if (!edid)
 		return;
 
-	cea = drm_find_cea_extension(edid);
-	if (!cea) {
-		DRM_DEBUG_KMS("ELD: no CEA Extension found\n");
-		return;
-	}
-
 	mnl = get_monitor_name(edid, &eld[DRM_ELD_MONITOR_NAME_STRING]);
 	DRM_DEBUG_KMS("ELD monitor %s\n", &eld[DRM_ELD_MONITOR_NAME_STRING]);
 
-	eld[DRM_ELD_CEA_EDID_VER_MNL] = cea[1] << DRM_ELD_CEA_EDID_VER_SHIFT;
+	eld[DRM_ELD_CEA_EDID_VER_MNL] = info->cea_rev << DRM_ELD_CEA_EDID_VER_SHIFT;
 	eld[DRM_ELD_CEA_EDID_VER_MNL] |= mnl;
 
 	eld[DRM_ELD_VER] = DRM_ELD_VER_CEA861D;
@@ -5824,8 +5818,6 @@ static int drm_edid_connector_update(struct drm_connector *connector,
 		return 0;
 	}
 
-	drm_edid_to_eld(connector, edid);
-
 	/*
 	 * CEA-861-F adds ycbcr capability map block, for HDMI 2.0 sinks.
 	 * To avoid multiple parsing of same block, lets parse that map
@@ -5833,6 +5825,9 @@ static int drm_edid_connector_update(struct drm_connector *connector,
 	 */
 	quirks = drm_add_display_info(connector, edid);
 
+	/* Depends on info->cea_rev set by drm_add_display_info() above */
+	drm_edid_to_eld(connector, edid);
+
 	/*
 	 * EDID spec says modes should be preferred in this order:
 	 * - preferred detailed mode
-- 
2.30.2

