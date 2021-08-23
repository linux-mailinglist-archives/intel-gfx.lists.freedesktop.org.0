Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CE73F4E35
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5607B6E071;
	Mon, 23 Aug 2021 16:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36AD6E093
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:18:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="239273418"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="239273418"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:18:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="493068189"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:18:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:07 +0300
Message-Id: <089d807e887d308c52c84cf58dfb6777de18872d.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
References: <cover.1629735412.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/19] drm/i915/dp: read sink UHBR rates
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

v2: Add build-time check for ->sink_rates size (Ville)

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b21dac19ae76..3a701728e47e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -141,6 +141,26 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->sink_rates[i] = dp_rates[i];
 	}
 
+	/*
+	 * Sink rates for 128b/132b. If set, sink should support all 8b/10b
+	 * rates and 10 Gbps.
+	 */
+	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {
+		u8 uhbr_rates = 0;
+
+		BUILD_BUG_ON(ARRAY_SIZE(intel_dp->sink_rates) < ARRAY_SIZE(dp_rates) + 3);
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

