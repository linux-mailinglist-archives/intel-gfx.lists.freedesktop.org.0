Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EA442534F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1086F460;
	Thu,  7 Oct 2021 12:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7DD6F460
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 12:42:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="312448248"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="312448248"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 05:42:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="478546230"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 05:42:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu,  7 Oct 2021 15:42:01 +0300
Message-Id: <20211007124201.18686-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211007115629.4531-1-jani.nikula@intel.com>
References: <20211007115629.4531-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg2: fix snps buf trans for uhbr
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

The UHBR check was using > instead of >=. Use the helper instead to
avoid mistakes. Also always use the non-UHBR values for HDMI.

v2: Use intel_crtc_has_dp_encoder() && intel_dp_is_uhbr() (Ville)

Fixes: 2817efaeb608 ("drm/i915/dg2: add SNPS PHY translations for UHBR link rates")
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index a2d39131ea53..78cd8f77b49d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -8,6 +8,7 @@
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1611,7 +1612,8 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		       const struct intel_crtc_state *crtc_state,
 		       int *n_entries)
 {
-	if (crtc_state->port_clock > 1000000)
+	if (intel_crtc_has_dp_encoder(crtc_state) &&
+	    intel_dp_is_uhbr(crtc_state))
 		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
 	else
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
-- 
2.30.2

