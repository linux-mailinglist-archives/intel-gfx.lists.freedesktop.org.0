Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392C87EE165
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BBD10E5ED;
	Thu, 16 Nov 2023 13:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDF610E5E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140738; x=1731676738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IRc4p+jRwfxZroxJSn/irAL2vcaomMYpak79qT8Hwck=;
 b=hOLtGqTjP6s5n7Jq7nfxXO8H+yNkGovtQJJypiuXzp6Hib+53lcr0InN
 rnEy8SO28za237X+Ap61sLFzLvyU4E0qjE7JmD1Japk0D3jj57hiEyS+q
 l6xifVDjxZ8kCcAP9bL4z0MjBeLos22fcpXXr6wJFhjSzBAz08KNyu76D
 w8pCXYeCkiRWFpaq/6sV/psHFcS6zyuhAzKgZGOhcYYK/dAMTOTlw6ZMI
 ZAWXcv1VuHB/03LB85dyzlfLOXNo1U3X2rpJBU2O+2z74gwkf5L/rTAX3
 mzIaJx5rGnUJZkI+1dNQos8LcH/YRDfkNsxyMX+WukIZEu7vMD9fqdMjL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177188"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177188"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834370"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834370"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:56 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:41 +0200
Message-Id: <20231116131841.1588781-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/11] drm/i915/dp: Reuse intel_dp_{max,
 effective}_data_rate in intel_link_compute_m_n()
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

Reuse intel_dp_max_data_rate() and intel_dp_effective_data_rate() in
intel_link_compute_m_n(), instead of open-coding the equivalent. Note
the kbit/sec -> kByte/sec unit change in the M/N values, but this not
reducing the precision, as the link rate value is based anyway on a less
precise 10 kbit/sec value.

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 +++-----------------
 1 file changed, 3 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 744c321792fcf..199ecd8879461 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2389,36 +2389,17 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
 	intel_reduce_m_n_ratio(ret_m, ret_n);
 }
 
-static void
-add_bw_alloc_overhead(int link_clock, int bw_overhead,
-		      int pixel_data_rate, int link_data_rate,
-		      u32 *data_m, u32 *data_n)
-{
-	bool is_uhbr = drm_dp_is_uhbr_rate(link_clock);
-	int ch_coding_efficiency =
-		drm_dp_bw_channel_coding_efficiency(is_uhbr);
-
-	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
-				   1000000);
-	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
-				     1000000);
-}
-
 void
 intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 		       int pixel_clock, int link_clock,
 		       int bw_overhead,
 		       struct intel_link_m_n *m_n)
 {
-	u32 data_clock = DIV_ROUND_UP(bits_per_pixel_x16 * pixel_clock, 16);
 	u32 link_symbol_clock = intel_dp_link_symbol_clock(link_clock);
-	u32 data_m;
-	u32 data_n;
+	u32 data_m = intel_dp_effective_data_rate(pixel_clock, bits_per_pixel_x16,
+						  bw_overhead);
+	u32 data_n = intel_dp_max_data_rate(link_clock, nlanes);
 
-	add_bw_alloc_overhead(link_clock, bw_overhead,
-			      data_clock,
-			      link_clock * 10 * nlanes,
-			      &data_m, &data_n);
 	/*
 	 * Windows/BIOS uses fixed M/N values always. Follow suit.
 	 *
-- 
2.39.2

