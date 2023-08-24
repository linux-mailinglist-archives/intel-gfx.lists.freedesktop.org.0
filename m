Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A000F786970
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3421F10E4FA;
	Thu, 24 Aug 2023 08:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEEF10E4E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864325; x=1724400325;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WGmbKgKmkdq7WtN7DjS9+Sgwid3gKnSYuuXcly0ykng=;
 b=P1inuqckBKEwfO3XCFieypy7E6e+RMSmvjT/JELM1Y2/8JrWdp7x4tf8
 PxvyykomXtAdmdwTdr/IuYXq6M9Dkaixhcc1lp/AP8c8I61P0OOorivB0
 sza+0KJxYzOu3OpNeD9m99Wxu8DTsEX3YtgirpOh/1z2jHRikYdrQswpW
 k95WfOKw8fapCyWgGY1LFfW6hhfuO6qjDUHUIGhwi5VeAYY3HQlvtZWJH
 ukHEcQ38Tb1sishyS/RAEY45KUmuKGsDwWUt6HlJMSnoWXZQe6paohavW
 Spu7AMScBtUSZioNyGCLRGT+dPb+Ptosq/Ilx5YJ5V7nZes1HZ6NEZLx0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345892"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345892"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710352"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:13 +0300
Message-Id: <20230824080517.693621-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 18/22] drm/i915/dp_mst: Enable DSC
 decompression if any stream needs this
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

Atm DSC decompression is enabled in the sink only if the first stream is
compressed. This left compressed streams blank if the first stream was
uncompressed.

Enable decompression whenever FEC is enabled, which will be true for all
streams if any stream is compressed. Enabling FEC correctly in all
streams will be only fixed by an upcoming patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 48f005932ad8b..e5b1567d2a9d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2907,7 +2907,13 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int ret;
 
-	if (!crtc_state->dsc.compression_enable)
+	/*
+	 * In case of MST any stream can be compressed not just the first. If
+	 * any stream is compressed FEC will be enabled in all streams, so toggle
+	 * decompression whenever FEC is enabled.
+	 */
+	if (!crtc_state->dsc.compression_enable &&
+	    !crtc_state->fec_enable)
 		return;
 
 	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
-- 
2.37.2

