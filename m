Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6777E54CC5E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 17:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A43610FEFB;
	Wed, 15 Jun 2022 15:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0584510FEB8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 15:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655306098; x=1686842098;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xDVuq3bZHt8oi/9HF84sRVzmBjWY45l7bN+d+rDlzWo=;
 b=kQhmpFbqLdFPRkTNhtPt57HItHUuxJv6ty7e0Z/26hP7YefbhL2e2LbS
 vQIY6q2wG8sYHztfIqIUOvvK2XzfI/3u+/WtK41UwI/7rSAjTG5m2aYj6
 TcIg80bzf4Itc1TS7qggnkIg1wEj7n/qKrOHjpwkqFHOMoZasOaS3M1VB
 38tsOxFxm88EIcYf97TnS4Vmid0ckpqKPdsUw6Xqdx2aGmnd261aNOBYj
 QUin7b4itt4CvEmnPK4qQiAkkYmWvre5qpUJGpFUadbn/j3+EiXBRHWbC
 dE+A07OTdoxNzyovF36BexaauDNLvzptE1SnVwu8MIRDGHNduw2Vpy2jw g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="365345295"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="365345295"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="674550092"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 15 Jun 2022 08:14:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 18:14:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 18:14:43 +0300
Message-Id: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/bios: Move panel_type stuff out of
 parse_panel_options()
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

Parsing the panel_type is a bit special and should be done
before we parse anything else potentially panel-specific from
the VBT. So move it out from parse_panel_options(). It doesn't
neet to be there anyway since it'll do its own LVDS options
block lookup.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index fb5f8a9f5ab5..df52f406e1ae 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -746,11 +746,10 @@ static int get_panel_type(struct drm_i915_private *i915,
 /* Parse general panel options */
 static void
 parse_panel_options(struct drm_i915_private *i915,
-		    struct intel_panel *panel,
-		    const struct edid *edid)
+		    struct intel_panel *panel)
 {
 	const struct bdb_lvds_options *lvds_options;
-	int panel_type;
+	int panel_type = panel->vbt.panel_type;
 	int drrs_mode;
 
 	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
@@ -759,10 +758,6 @@ parse_panel_options(struct drm_i915_private *i915,
 
 	panel->vbt.lvds_dither = lvds_options->pixel_dither;
 
-	panel_type = get_panel_type(i915, edid);
-
-	panel->vbt.panel_type = panel_type;
-
 	drrs_mode = (lvds_options->dps_panel_type_bits
 				>> (panel_type * 2)) & MODE_MASK;
 	/*
@@ -3117,7 +3112,9 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
 {
 	init_vbt_panel_defaults(panel);
 
-	parse_panel_options(i915, panel, edid);
+	panel->vbt.panel_type = get_panel_type(i915, edid);
+
+	parse_panel_options(i915, panel);
 	parse_generic_dtd(i915, panel);
 	parse_lfp_data(i915, panel);
 	parse_lfp_backlight(i915, panel);
-- 
2.35.1

