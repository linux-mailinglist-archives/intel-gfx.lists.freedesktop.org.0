Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B23237A66B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2DD56EA24;
	Tue, 11 May 2021 12:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46DF36EA24
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 12:18:00 +0000 (UTC)
IronPort-SDR: S8F6Kd/xg2zAiEYUf/eBRS7JYt6iIWE/sFiyVsgYmwc4483XlEOkwSugdKmkEpgTkvUZTIlPzs
 be91Fy31SR0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="186560025"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="186560025"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 05:17:58 -0700
IronPort-SDR: ParfDox14Pq8M2ZrwBntxkT/4pPYEfKIic8ZfK7eDlPRyG/A/hDcv1/CIPTxjS3+0vlC0eQyaz
 7wJXCWMLNLxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="468882592"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga002.fm.intel.com with ESMTP; 11 May 2021 05:17:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 17:39:30 +0530
Message-Id: <20210511120930.12218-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210505073235.27934-1-ankit.k.nautiyal@intel.com>
References: <20210505073235.27934-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Use correct downstream caps for
 check Src-Ctl mode for PCON
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

Fix the typo in DPCD caps used for checking SRC CTL mode of
HDMI2.1 PCON

v2: Corrected Fixes tag (Jani Nikula).
v3: Rebased.

Fixes: 04b6603d13be ("drm/i915/display: Configure HDMI2.1 Pcon for FRL only if Src-Ctl mode is available")

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: "Ville Syrj_l_" <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Sean Paul <seanpaul@chromium.org>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9a8dfdf15530..072d3edf9197 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2113,7 +2113,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 	 * -PCON supports SRC_CTL_MODE (VESA DP2.0-HDMI2.1 PCON Spec Draft-1 Sec-7)
 	 * -sink is HDMI2.1
 	 */
-	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||
+	if (!(intel_dp->downstream_ports[2] & DP_PCON_SOURCE_CTL_MODE) ||
 	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
 	    intel_dp->frl.is_trained)
 		return;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
