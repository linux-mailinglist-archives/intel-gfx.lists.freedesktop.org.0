Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D887302742
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777F86E21D;
	Mon, 25 Jan 2021 15:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7086E21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:52:56 +0000 (UTC)
IronPort-SDR: kamTPRAJQHtsSnJ8Ec++c/4ahen/AFo0DF25GXMndTGPzlEDJ7cA2V/0nJvjA6BmAqxH6VRBQ7
 PuSFMRSYpj2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="178970095"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="178970095"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:55 -0800
IronPort-SDR: qhl4SdeBPA//V+m9mNsl1ttGLIrLWimiPbjhNlLyPdRBnGuW1cqYAfUmJ9Sr5nWxnlx4+rBXq2
 vpfOM+VlfQpQ==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="472355344"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:27 +0200
Message-Id: <a8e020ba2aa5120a1e7546bbbe802f84d5c647c9.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/edp: always add fixed mode to
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
 drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6afea0681ce9..7b4dd55021dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5543,15 +5543,13 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct edid *edid;
+	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
-	if (edid) {
-		int ret = intel_connector_update_modes(connector, edid);
-		if (ret)
-			return ret;
-	}
+	if (edid)
+		num_modes = intel_connector_update_modes(connector, edid);
 
-	/* if eDP has no EDID, fall back to fixed mode */
+	/* Also add fixed mode, which may or may not be present in EDID */
 	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
 	    intel_connector->panel.fixed_mode) {
 		struct drm_display_mode *mode;
@@ -5560,10 +5558,13 @@ static int intel_dp_get_modes(struct drm_connector *connector)
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
@@ -5573,11 +5574,11 @@ static int intel_dp_get_modes(struct drm_connector *connector)
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
