Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F88D3F0AD9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4C66E89E;
	Wed, 18 Aug 2021 18:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E866E89E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:11:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="195972926"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="195972926"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:11:45 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="594121073"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:11:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:41 +0300
Message-Id: <8a6fc84dadbf1b67fd72f7e7d5a911aa0e6bb510.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/17] drm/i915/dp: read sink UHBR rates
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

See if sink supports DP 2.0 128b/132b channel encoding, and update sink
rates accordingly.

FIXME: Also take LTTPR 128b/132b into account.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d273b3848785..079b5b37b85a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -141,6 +141,24 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->sink_rates[i] = dp_rates[i];
 	}
 
+	/*
+	 * Sink rates for 128b/132b. If set, sink should support all 8b/10b
+	 * rates and 10 Gbps.
+	 */
+	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {
+		u8 uhbr_rates = 0;
+
+		drm_dp_dpcd_readb(&intel_dp->aux,
+				  DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
+
+		if (uhbr_rates & DP_UHBR10)
+			intel_dp->sink_rates[i++] = 1000000;
+		if (uhbr_rates & DP_UHBR13_5)
+			intel_dp->sink_rates[i++] = 1350000;
+		if (uhbr_rates & DP_UHBR20)
+			intel_dp->sink_rates[i++] = 2000000;
+	}
+
 	intel_dp->num_sink_rates = i;
 }
 
-- 
2.20.1

