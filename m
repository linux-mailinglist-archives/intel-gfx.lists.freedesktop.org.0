Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C34806F5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Dec 2021 08:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CE610E14F;
	Tue, 28 Dec 2021 07:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E66F10E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Dec 2021 07:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640676376; x=1672212376;
 h=from:to:cc:subject:date:message-id;
 bh=IYpvVYZZOlGCoEGR0888+8qMqB24BUd1+P+0j4qpmjk=;
 b=nSWI07wtbI9zSYtsUdTSBsz0xIN/3PIhMfvFROKPP07x49IjWkxR7lTu
 LkSPteCA92MzlSR8RRPya5+XBci4Okp5TMJzb575jRHloLNn2BRwFDIEd
 Yva6xf0cOxFPPamVaO6ig3UGfhNjMkXjCT1VKLHTSl0Xs2/ax6gFi76nn
 Dr21xzWtMcoxYPp0tvPrE6pAaNTs4cE3J60+PtF2iXaLGIvuS53TRXXwl
 GXz9fn3Vu+u4B95mDA1k+thJ9Bl/fZAdiSym4r01oaAwa1/S9KVWjpD0n
 q2kdLO7qTqFxnsTgzIQ6LBzxNTL1oxf+eQDU+GC0/Zk4+rOImtVGcuVo/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="221325162"
X-IronPort-AV: E=Sophos;i="5.88,241,1635231600"; d="scan'208";a="221325162"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 23:26:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,241,1635231600"; d="scan'208";a="469950608"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 23:26:14 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Dec 2021 15:26:03 +0800
Message-Id: <20211228072603.15347-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Get trail_cnt by division of
 tclk_trail_ns and tlpx_ns
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is to avoid over-specification of the TEOT timing
parameter, which is derived from calculating the value of
trail_cnt.  It is used to configure the dphy timing, CLK_TRAIL
for clock lane and HS_TRAIL for data lane (refer to the bspec
dphy timing).

trail_cnt is derived from DIV_ROUND_UP calculation but it may
cause TEOT parameter is larger than the maximum allowed value.

This is an example in the case of data lane dphy timing.
Supposed that TCLK-TRAIL, THS-TRAIL and THS-EXIT have the
minimum values, i.e., 60, 60 and 100 in ns. If SW is
overriding the HW default, the TEOT value becomes 150 ns,
approximately calculated by the following formula.

  tclk_trail_ns = max(60, 60)
  trail_cnt = DIV_ROUND_UP(tclk_trail_ns, 50)
  trail_cnt*50 + DIV_ROUND_UP(100, 50)*50/2,

where 50 is LP Escape Clock time in ns (i.e., tlpx_ns).

The TEOT value 150 ns is larger than the maximum value,
around 136 ns if UI is 1.8ns, (105 ns + 12*UI, defined by MIPI
DPHY specification).

However, the TEOT value will meet the specification if trail_cnt
is derived by the division of tclk_trail_ns and tlpx_ns.

The timing change is made for both data lane and clock lane.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 71fbdcddd31f..5806c1fc2b97 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1893,7 +1893,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	}
 
 	/* trail cnt in escape clocks*/
-	trail_cnt = DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
+	trail_cnt = tclk_trail_ns > tlpx_ns ? tclk_trail_ns / tlpx_ns : 1;
 	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
 		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
 			    trail_cnt);
-- 
2.17.1

