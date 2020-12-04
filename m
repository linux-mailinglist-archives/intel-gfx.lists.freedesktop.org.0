Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16A92CF5E2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 21:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CA56EC70;
	Fri,  4 Dec 2020 20:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBC16EC70
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 20:55:16 +0000 (UTC)
IronPort-SDR: VS6au0KJ/l3OsDZ7k2d7uUUxicgazSgS7+wFGHKrmwdVG3dAl2ASNKTJGXz7XVJQvAM/9ilN6S
 QLogjJqvIiyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="237559004"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="237559004"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 12:55:15 -0800
IronPort-SDR: fqiYjpMftnchfgUHrLJkrX8JHb4Nj5QPEXBPyiGpxgOZmoN46iXUHGRN1Oa0ooQiICaAxiPApK
 EYAuEg98I/KA==
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="331342251"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 04 Dec 2020 12:55:15 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 12:58:04 -0800
Message-Id: <20201204205804.25225-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/dp: Compute the correct slice
 count for VDSC on DP
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch fixes the slice count computation algorithm
for calculating the slice count based on Peak pixel rate
and the max slice width allowed on the DSC engines.
We need to ensure slice count > min slice count req
as per DP spec based on peak pixel rate and that it is
greater than min slice count based on the max slice width
advertised by DPCD. So use max of these two.
In the prev patch we were using min of these 2 causing it
to violate the max slice width limitation causing a blank
screen on 8K@60.

Fixes: d9218c8f6cf4 ("drm/i915/dp: Add helpers for Compressed BPP and Slice Count for DSC")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2d4d5e95af84..cb5e42c3ecd5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -615,7 +615,7 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 		return 0;
 	}
 	/* Also take into account max slice width */
-	min_slice_count = min_t(u8, min_slice_count,
+	min_slice_count = max_t(u8, min_slice_count,
 				DIV_ROUND_UP(mode_hdisplay,
 					     max_slice_width));
 
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
