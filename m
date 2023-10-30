Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 681007DBD1D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B936D10E312;
	Mon, 30 Oct 2023 15:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B424610E312
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681514; x=1730217514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jQk4RHnqw4GH5JF1p/8bzTdSQ28u+exrUQP4X61I+ZA=;
 b=kHB4TEdo9bS5eHAzMYjglWq6WgqNO1C9gg4ePdWvpg3uNi1733Vtn/kR
 EAnandq3z3L+z+ypbYJSKEfEtVl6Wuvd/r47AL2D4mrc9ELLRauw+/zyd
 yDUdXWhNyZ2MIMfYVbu34AKkIZCOLEsDUZJulQ7iB3ofclOcAhNJpPCVE
 CGpPz0HozK5LrECvWpm8Lx1U3ap+D2zY+p758f5n0lERUPspm3geW8/wo
 DTMHJT/iIWENJIBM1xmPbLJRW/U3/zD3W18d9deIqNd8fvW2IG8YbqG6x
 vQUkHQok/i0qvA8KjNzklBloFDZEiNwxh1O4zDSbljN9VAJ4zzpaV8czL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974456"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974456"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789493982"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789493982"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:24 +0200
Message-Id: <20231030155843.2251023-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/30] drm/i915/dp: Specify the FEC overhead
 as an increment vs. a remainder
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

A follow-up patch will add up all the overheads on a DP link, where it
makes more sense to specify each overhead factor in terms of the added
overhead amount vs. the reciprocal remainder (of usable BW remaining
after deducting the overhead). Prepare for that here, keeping the
existing behavior.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b747fda960e49..4d8f068218ea3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -85,8 +85,8 @@
 #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
 #define DP_DSC_MAX_ENC_THROUGHPUT_1		400000
 
-/* DP DSC FEC Overhead factor = 1/(0.972261) */
-#define DP_DSC_FEC_OVERHEAD_FACTOR		972261
+/* DP DSC FEC Overhead factor in ppm = 1/(0.972261) = 1.028530 */
+#define DP_DSC_FEC_OVERHEAD_FACTOR		1028530
 
 /* Compliance test status bits  */
 #define INTEL_DP_RESOLUTION_SHIFT_MASK	0
@@ -680,8 +680,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 {
-	return div_u64(mul_u32_u32(mode_clock, 1000000U),
-		       DP_DSC_FEC_OVERHEAD_FACTOR);
+	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
+		       1000000U);
 }
 
 static int
-- 
2.39.2

