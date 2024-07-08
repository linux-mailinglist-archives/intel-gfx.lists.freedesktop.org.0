Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE1892A96B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 21:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FAE610E3E1;
	Mon,  8 Jul 2024 19:00:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jaPtst+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA7910E3D9
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 19:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720465223; x=1752001223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HHG/aKWUkyxI2BTR9i9QbcSviH8/co/BlyUjy9YMMHc=;
 b=jaPtst+7d7fOKmVkgOnvvrcurGq3bPJFP+HqQn2SkrNkMe+mJTY3BtfH
 CWJXBTpcYyr7BlNyd4phApsPRjLw1Q34o3oIGPRcqRyzPc+gsMnxIY+G+
 D5E3FMulOsWSMxE91Ogp+vl2Fulo9RaUF6YzesXoYriWGFKfq2kd5/MkD
 mWacoLgtSOUyknTcLYdjC0CYuTJq4nYSlAHuLAWjUJeJr3AyzqrdOMVDr
 cVDL91qxygZk5DtGiph736hgtGu5LCQ/i6R8yKplpSYTEG19AWvtSdvKZ
 8WD870n83HTbN4ULRSQZsi9jJYtrNwnfGXcVoDShRgk4mX32Gv3tD3C5r A==;
X-CSE-ConnectionGUID: dRDCFWKnRhKhHAyD2BP4sQ==
X-CSE-MsgGUID: mbSfIP6iRTyKiqxA3r0vnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17821052"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17821052"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:23 -0700
X-CSE-ConnectionGUID: cH6gCthySCOxfJTElRqzsA==
X-CSE-MsgGUID: oZxxU1VZS/W++5rcPA9Jjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="85140017"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 4/6] drm/i915/dp: Keep cached LTTPR mode up-to-date
Date: Mon,  8 Jul 2024 22:00:27 +0300
Message-ID: <20240708190029.271247-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240708190029.271247-1-imre.deak@intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
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

Nothing depends on the cached LTTPR mode, however for consistency keep
it up-to-date with the value programmed to the DPCD register.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 56b9c5cb1254d..af0b71bdf1fcf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -114,7 +114,13 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
 			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
 
-	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
+	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
+		return false;
+
+	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
+				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
+
+	return true;
 }
 
 static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
-- 
2.43.3

