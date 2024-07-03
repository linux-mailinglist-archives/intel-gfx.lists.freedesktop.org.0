Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BD892656F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 17:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CCF10E934;
	Wed,  3 Jul 2024 15:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPGDl4Sg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A1510E933
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 15:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720022375; x=1751558375;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NT6Aw5qtVIYJ1rnxcozOacNB3kE1MRxNYDGeKqmwXJ0=;
 b=MPGDl4Sgl/bQ4l66Oi2paZoLkZlCuS2Ls024Cf0VtJTlaWqv7oa03SQ0
 kwlo0+8+QvAaFKjlRQUtkAybXg6kDhx1WfJkZ+0zBuzLOBUxCOj7g+lzT
 JdFwA43H58AgEt0Sujayx3APOk7pLeRyiFVOnJeAq+kSsIJMuNcGsG4rX
 CUNjAG8M6TESezHy9OBCfc7Bk/PcbLIbWtgylDIf09FfMznvlqYu285nn
 U37NSNffk7n6/Ul6fCniQCgPuH1K7GDzC4Yt1RsXB8LdJE5tKyAoFQQKP
 uGfAMbm0i6Ky3fRtrd0+03h2hANAEUIb78lMzk/+YbdFN3VEzquvcWEwF A==;
X-CSE-ConnectionGUID: 36q2mLIhT4ms2+oY48sBfQ==
X-CSE-MsgGUID: A/FhNtrWQHGDUPgWqiAV3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17131782"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17131782"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:32 -0700
X-CSE-ConnectionGUID: +62xzA0qSGiOph3gKtBUfw==
X-CSE-MsgGUID: uOcI2F+RQ+y/QDZxxAQzKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46964127"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/dp: Dump the LTTPR PHY descriptors
Date: Wed,  3 Jul 2024 18:59:37 +0300
Message-ID: <20240703155937.1674856-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240703155937.1674856-1-imre.deak@intel.com>
References: <20240703155937.1674856-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Dump the descriptor of the detected LTTPRs in non-transparent mode to
help the debugging related to LTTPRs easier.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 31089f1b316d2..52b149793f3d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -199,6 +199,24 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 	return 0;
 }
 
+static void intel_dp_dump_lttpr_phy_desc(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_dp_dpcd_ident ident;
+
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_OUI_PHY_REPEATER(dp_phy),
+			     &ident, sizeof(ident)) < 0)
+		return;
+
+	drm_dbg_kms(&i915->drm,
+		    "%s: %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d\n",
+		    intel_dp->aux.name, drm_dp_phy_name(dp_phy),
+		    (int)sizeof(ident.oui), ident.oui,
+		    (int)strnlen(ident.device_id, sizeof(ident.device_id)), ident.device_id,
+		    ident.hw_rev >> 4, ident.hw_rev & 0xf,
+		    ident.sw_major_rev, ident.sw_minor_rev);
+}
+
 static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	int lttpr_count;
@@ -206,8 +224,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 
 	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
 
-	for (i = 0; i < lttpr_count; i++)
+	for (i = 0; i < lttpr_count; i++) {
 		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
+		intel_dp_dump_lttpr_phy_desc(intel_dp, DP_PHY_LTTPR(i));
+	}
 
 	return lttpr_count;
 }
-- 
2.43.3

