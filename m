Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5427EE15E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987DF10E5E4;
	Thu, 16 Nov 2023 13:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF2610E5DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140731; x=1731676731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dNjcgLmoC6ndEvhGOaf9giYyqRnO0QOn/R5NTPh5Vm0=;
 b=Q2Y1UqX6yl9Z5Z5anJ/MNnIVaeRcAbi1rc/MujgpmyEFSSzorb2Q8zwC
 y5uyS7r3t4pEeQiEXCOtPsanf0BObHCJq9LtLwcyz6rO1M+GL9DGz3G9A
 czuAZEIWqa8UPahVtjYtrgHapWvJHLh3Ox41nu3+Rk4YAS1KKEJE3PlQB
 xmKZSc1nHMNvhAD6tDFA3HRvyUO+QO0VUZlUOMl6dEjXo24Xz4eoeZLz3
 aDXafTzfLsOc/ZELbCIvJyTPrek/jGR02qKAJvg9vRaku7Eq/59+OzO+M
 vAYjlLghs0QKsWXxGaniafJEg92sb9krhtWKryYU82qykjjtHleEvxeMI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177160"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177160"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834352"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834352"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:49 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:35 +0200
Message-Id: <20231116131841.1588781-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/11] drm/i915/dp: Account for channel
 coding efficiency on UHBR links
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

Apply the correct BW allocation overhead and channel coding efficiency
on UHBR link rates, similarly to DP1.4 link rates.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e045e4fbe582..9755e0a5042c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2398,16 +2398,6 @@ add_bw_alloc_overhead(int link_clock, int bw_overhead,
 	int ch_coding_efficiency =
 		drm_dp_bw_channel_coding_efficiency(is_uhbr);
 
-	/*
-	 * TODO: adjust for actual UHBR channel coding efficiency and BW
-	 * overhead.
-	 */
-	if (is_uhbr) {
-		*data_m = pixel_data_rate;
-		*data_n = link_data_rate * 8 / 10;
-		return;
-	}
-
 	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
 				   1000000);
 	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
-- 
2.39.2

