Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E02844E60E4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 10:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B1510E86B;
	Thu, 24 Mar 2022 09:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44F010E86B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 09:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648113046; x=1679649046;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dyPhbf5AmkMy9O0TMYE4Ho4epGlMLy0pkda+i7BEdwU=;
 b=QHiKWfrBKm1Yy6/4Jc6kQsuA01HDpQgikmYkL8lJql6cLCZUG9a8ryJ9
 RAeo/RZIAUac4hD5peOLLcZJtB/oD7hKYZ0lSPitfcP7enyB5qiU+/+hi
 ARSSGDLi2imGdKwbqGkB1L+3iixtUha7l0vbk2lkt4NLNU8/q59fXW8qQ
 31Z7IQZ/piw9yBT/x+o+A0aOjAUnp2wza+rUnXyYQMk/vRfZeFPjZuW9o
 Nd1X4UY2Aq1Y3mGLkowYunbX/3+Gf4E7P0E4BWN8h0Fg6jqYQPKD03um6
 08WwUCPL+jAR0zVgYRjKFIGpsRK7DT7VHsqPatCb9Y6NSvT2yDz/yHYyj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="245802373"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="245802373"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:10:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="647796868"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmsmga002.fm.intel.com with ESMTP; 24 Mar 2022 02:10:44 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:42:15 +0530
Message-Id: <20220324091215.1784426-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/display: Extend DP HDR support to hsw+
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

HSW+ platforms are able to send out HDR Metadata SDP DIP
packet as GMP. Hence, extending the support for HDR on DP
encoders for the same.

v2: Limited to non eDP ports on hsw/bdw and removed it for
lspcon as it is done separately (suggested by Ville)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9e19165fd175..09382b6133bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4939,10 +4939,12 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
-		drm_object_attach_property(&connector->base,
-					   connector->dev->mode_config.hdr_output_metadata_property,
-					   0);
+	if (!intel_bios_is_lspcon_present(dev_priv, port))
+		if (((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
+		     !intel_dp_is_edp(intel_dp)) || DISPLAY_VER(dev_priv) >= 9)
+			drm_object_attach_property(&connector->base,
+					connector->dev->mode_config.hdr_output_metadata_property,
+					0);
 
 	if (intel_dp_is_edp(intel_dp)) {
 		u32 allowed_scalers;
-- 
2.25.1

