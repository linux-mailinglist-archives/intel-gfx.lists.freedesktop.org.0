Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4C1899BEB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94936113B42;
	Fri,  5 Apr 2024 11:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDSufsPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7CD5113B43
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712316965; x=1743852965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iUoOzvayCFvXlBkNxK0i40hGTQRz8yi0b0kFto1PYAE=;
 b=KDSufsPtFKh+WrcxG+3SvBdkrNn/IWaZcMk/qQ/fkezYuL676/SHs3jh
 x+L95Uji+esTxEVT/yGerjPt0Tnns1CPp7OPYKAKeVteTJ0ZTAYXcfAq2
 2fvbcM3o5fg1cl7+qf+AHnXaqc+oR8+hfr65gAwBbRgzcjYn2oqdatcO0
 SVH86YbnMrHXM5Jkr143JmTCVIt2c50qaFYUoRUPI+JrXmTMFA5X4qWZ0
 +KySTlPM0cavH3CG87oqlmSUIhxHUL6HOY3FbF02rnHn3wdEVDKIfu0Rr
 oBz3Zru1eaIwT22b0aDRsxXWykDe1HZ+qzRYYiPqmNj8+0Lduu68uqIv4 A==;
X-CSE-ConnectionGUID: r8PbXZSKQy6pROEeLb86yw==
X-CSE-MsgGUID: 5tQgDYAvSkyBdkgOe7tojw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7540257"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7540257"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:04 -0700
X-CSE-ConnectionGUID: tmQ69ESTTQW5Vl0dRQsW3w==
X-CSE-MsgGUID: kSedGdOsRamcZvQof50xPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19066080"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.58.154])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:02 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v10 5/6] drm/i915/display: handle systems with duplicate psf
 gv points
Date: Fri,  5 Apr 2024 14:35:32 +0300
Message-Id: <20240405113533.338553-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

There could be multiple qgv and psf gv points with similar values.
Apparently pcode's handling og psf and qgv points are different. For
qgv case, pcode sets whatever is asked by the driver. But in case
of psf gv points, it compares the bw from points before setting the
mask. This can cause problems in scenarios where we have to disable
sagv by setting the highest bw point and there could be multiple
points with highest bw. So to set the maximum psf gv point, find
out all the points with the highest bw and set all together.

v1: - use the same treatment to qgv points as well (Vinod)

v2: - pcode confirms that for qgv points, it sets whatever the
      driver sets (Vinod)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 5f4f93524bef..6fb228a1a28f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -874,6 +874,8 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
 		if (max_data_rate > max_bw) {
 			max_bw_point_mask = BIT(i);
 			max_bw = max_data_rate;
+		} else if (max_data_rate == max_bw) {
+			max_bw_point_mask |= BIT(i);
 		}
 	}
 
-- 
2.34.1

