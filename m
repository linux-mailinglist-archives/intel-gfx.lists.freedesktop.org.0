Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29839B0912
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A2110EB12;
	Fri, 25 Oct 2024 16:02:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elgd0/ri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C8E410EB0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872155; x=1761408155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N2hnF0gqNWle+Xv+USele4xvrjDev63+mWfUhMZY2Go=;
 b=elgd0/riyxOd91ThJv96azwvMuA5cGO1D+PHMvDYKioFM+c8bkPsmHoe
 yuGV0Aop2LzLelb2T7Nfuxgg1DORYDJb0006suEbAbqxkSh1K62HrohVp
 B+//LjRHgcuc7xsCnKqYwfFDqWjf0LVKsxKkjPaj7UK6aWN3sQYEjD+a8
 WMVDsM0krkiCmdS9H2RO1kEIzPySRcoh6lUKvw4f7uqRc5bhJ+mtlgXqp
 cs0B3IWZ0eONPQ97uqk0QApSy8OJDUbgV/Ueo806iOy2XRQNEI17UCBcx
 87iG3RY2AEC8yqOq9o7oKXLCKFLQ0mnAedjjcSHslzvlimLqRtxw2f4qW Q==;
X-CSE-ConnectionGUID: SDBTZAQeSqKRVoXwuGy1iQ==
X-CSE-MsgGUID: ym8OcCsGSwu7g2J43GeW4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242398"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242398"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:35 -0700
X-CSE-ConnectionGUID: UQVrsGAmSnWJOanfgJee/w==
X-CSE-MsgGUID: qNzwE5MGR6SKdkN3sdBemg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783709"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 6/8] drm/i915/dp: Write the source OUI for eDP before
 detecting sink capabilities
Date: Fri, 25 Oct 2024 19:02:57 +0300
Message-ID: <20241025160259.3088727-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The eDP sink's capabilities, like DSC, may depend on the source OUI
written to the sink, so ensure the OUI is written before reading out the
capabilities.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a3bc631d64095..0d6d7dc1e4ccd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4196,6 +4196,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 		intel_dp->use_max_params = intel_dp->edp_dpcd[0] < DP_EDP_14;
 	}
 
+	/*
+	 * If needed, program our source OUI so we can make various Intel-specific AUX services
+	 * available (such as HDR backlight controls)
+	 */
+	intel_dp_init_source_oui(intel_dp);
+
 	/*
 	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
 	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
@@ -4208,12 +4214,6 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	/* Read the eDP DSC DPCD registers */
 	intel_dp_detect_dsc_caps(intel_dp, connector);
 
-	/*
-	 * If needed, program our source OUI so we can make various Intel-specific AUX services
-	 * available (such as HDR backlight controls)
-	 */
-	intel_dp_init_source_oui(intel_dp);
-
 	return true;
 }
 
-- 
2.44.2

