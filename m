Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FDE318DA2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE98C6EE38;
	Thu, 11 Feb 2021 14:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965C96EE4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:52:47 +0000 (UTC)
IronPort-SDR: f05tDQSpK2M230jRTqDZgdb8dBdCAJQdNjbEpAYHY7EDLHe0kGzNM03/HiDupOqUBZ3E7yCxI+
 uQnZMyVtQfFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="201379599"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="201379599"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:46 -0800
IronPort-SDR: 3DLxN1x63IAvrzNWCDYJGZro+irUxJS3dJ6L6byhJYqHvhuCf3nKYapa1p1hKLrH3cn3fLTq96
 K5/CXhuh8jxw==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="437138159"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:13 +0200
Message-Id: <6979f123f3e4ed948333f1b181202bbced3c3e85.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/9] drm/i915/edp: always add fixed mode to
 probed modes in ->get_modes()
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unconditionally add fixed mode to probed modes even if EDID is present
and has modes. Prepare for cases where the fixed mode is not present in
EDID (such as eDP MSO).

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 169b44c8ebbc..8d7ca03453e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5547,19 +5547,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct edid *edid;
+	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
 	if (edid) {
-		int ret = intel_connector_update_modes(connector, edid);
+		num_modes = intel_connector_update_modes(connector, edid);
 
 		if (intel_vrr_is_capable(connector))
 			drm_connector_set_vrr_capable_property(connector,
 							       true);
-		if (ret)
-			return ret;
 	}
 
-	/* if eDP has no EDID, fall back to fixed mode */
+	/* Also add fixed mode, which may or may not be present in EDID */
 	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
 	    intel_connector->panel.fixed_mode) {
 		struct drm_display_mode *mode;
@@ -5568,10 +5567,13 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 					  intel_connector->panel.fixed_mode);
 		if (mode) {
 			drm_mode_probed_add(connector, mode);
-			return 1;
+			num_modes++;
 		}
 	}
 
+	if (num_modes)
+		return num_modes;
+
 	if (!edid) {
 		struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
 		struct drm_display_mode *mode;
@@ -5581,11 +5583,11 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 					      intel_dp->downstream_ports);
 		if (mode) {
 			drm_mode_probed_add(connector, mode);
-			return 1;
+			num_modes++;
 		}
 	}
 
-	return 0;
+	return num_modes;
 }
 
 static int
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
