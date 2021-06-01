Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6CF3970E0
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 12:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D956F6E9C4;
	Tue,  1 Jun 2021 10:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4166E9C3;
 Tue,  1 Jun 2021 10:05:59 +0000 (UTC)
IronPort-SDR: cgztEJslFxBBWpUDUkA+PSxQDynY9ofskMBfvxPtTATzLzRp7KiK0Mg5eDen/fyxc63pibDBs1
 OgLzZI0e2Bhg==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="183197753"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="183197753"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:05:54 -0700
IronPort-SDR: o76rtFl+KRO2SrF+2YJbZSX0yvpPsFylG52BqFIM1OwS9+TTVkb5i8hp/fMqNIJoBP1RfTiQrd
 wM/+e7dDuMDQ==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="399245243"
Received: from linux-desktop.iind.intel.com ([10.223.34.178])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:05:53 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  1 Jun 2021 16:11:32 +0530
Message-Id: <20210601104135.29020-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210601104135.29020-1-uma.shankar@intel.com>
References: <20210601104135.29020-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/xelpd: logarithmic gamma enabled
 only with advance gamma mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only Enable Logarithmic Gamma if client caps for advance gamma mode
is enabled. Fallback to 10bit gamma in case its not supported.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index cae96fbec1a7..18b51b9cc2aa 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1606,13 +1606,17 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 		gamma_mode |= POST_CSC_GAMMA_ENABLE;
 
 	if (!crtc_state->hw.gamma_lut ||
-	    crtc_state_is_legacy_gamma(crtc_state))
+	    crtc_state_is_legacy_gamma(crtc_state)) {
 		gamma_mode |= GAMMA_MODE_MODE_8BIT;
-	else if (crtc_state->uapi.gamma_mode_type ==
-		 GAMMA_MODE_LOGARITHMIC_12BIT)
-		gamma_mode |= GAMMA_MODE_MODE_12BIT_LOGARITHMIC;
-	else
+	} else if (crtc_state->uapi.gamma_mode_type ==
+		 GAMMA_MODE_LOGARITHMIC_12BIT) {
+		if (crtc_state->uapi.advance_gamma_mode_active)
+			gamma_mode |= GAMMA_MODE_MODE_12BIT_LOGARITHMIC;
+		else
+			gamma_mode |= GAMMA_MODE_MODE_10BIT;
+	} else {
 		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
+	}
 
 	return gamma_mode;
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
