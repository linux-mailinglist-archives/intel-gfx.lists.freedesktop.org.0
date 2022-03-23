Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B144E5869
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:30:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4986B10E0EC;
	Wed, 23 Mar 2022 18:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5802610E1B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060202; x=1679596202;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NFfhFr3CNlxcWLuYQDmPi5OQIWVLk0/20L7Cr2AtHrE=;
 b=Nr4fM0qUN0MkiPHEjSY5Hh4n3I7TI2GZojDflmwM4vULHcLjtwK2xGAc
 k2j8jdG02BTnjqkInFowzaHOrvOksr41Sz7B910VtwDMctWcsr6+rp6YQ
 vYSCp1FvFCZkeU7+kZJb31yElws7RanDhWHt9Gz6+zzS8SnK4aEQt8EP8
 xdtXHfALAWXMEqfppm6ckoWC2YYBJVBMabfiRb5MNbCiBLIStSsUe2yoz
 rTdQdq/eUncdYrr+JyuCAtCWyChyV3R5IAR1zT5pFSSxaOPPt//S0kvMC
 qlod8ihL0CHtPEii1zepnXntb3ZzQGIU0O63uoYCnZ3tbeQCpxBsIhzZu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="321395374"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="321395374"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="647585448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 23 Mar 2022 11:29:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:34 +0200
Message-Id: <20220323182935.4701-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Use intel_panel_edid_fixed_mode()
 for sdvo
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

Despite the name intel_panel_edid_fixed_mode() doesn't actually
look in the EDID. All it does is dig out the preferred mode from
the connector's probed_modes list. That is also what the SDVO
LVDS code is doing by hand. Let's just call
intel_panel_edid_fixed_mode().

The slight difference in behaviour is that the SDVO code currently
bails if it can't find the preferred mode, whereas
intel_panel_edid_fixed_mode() will fall back to just returning
the first mode from the probed_modes list. Can't imagine why
such an LVDS panel would even exist, and also why would you have
a panel and be expected to not use it? So I'm going to assume
this is a total non-issue.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 27b3d3a79989..62e2e8b4358c 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2886,7 +2886,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
-	struct drm_display_mode *mode;
+	struct drm_display_mode *fixed_mode;
 
 	DRM_DEBUG_KMS("initialising LVDS device %d\n", device);
 
@@ -2917,16 +2917,9 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 
 	intel_sdvo_get_lvds_modes(connector);
 
-	list_for_each_entry(mode, &connector->probed_modes, head) {
-		if (mode->type & DRM_MODE_TYPE_PREFERRED) {
-			struct drm_display_mode *fixed_mode =
-				drm_mode_duplicate(connector->dev, mode);
+	fixed_mode = intel_panel_edid_fixed_mode(intel_connector);
 
-			intel_panel_init(intel_connector,
-					 fixed_mode, NULL);
-			break;
-		}
-	}
+	intel_panel_init(intel_connector, fixed_mode, NULL);
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
 		goto err;
-- 
2.34.1

