Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2510788A0C4
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 14:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0DB10E895;
	Mon, 25 Mar 2024 13:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RbiLMVh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD4110E896
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 13:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711371748; x=1742907748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S5kyGuq4YyhOP3Iwl+2s6IB8W0grunspLUcQ0SMvCbg=;
 b=RbiLMVh+ls3418TCDKR4qq9m19LYPcChafBNx0vslMTpvJYkk4uSXubH
 hwIGFWNxKSlik7+z0B4YjZZdE42FpTpPZ/A3r8UsLHw8OoYgSwF7yYSEJ
 QZxnui6OV1+HA7cYlrGFmK5gNkg+5ebdImalwvOoUX1MxRQUGvFq/RWOK
 8ZgNo+EYRI0ppXBNqQem13TDw4kqn8F0f14DNS8xCv0EDwU3V429yiihy
 67WRgKOWLhaTgDbhnR/wwRhh2egpGR22n8sSxInoA0RhrwwEgvtqITJ2C
 SUK+F7dtwJMLFq+yeuXeXPU9ilbO9TzFbKTQD+9XeY6USk/B79h1deH3y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6484251"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6484251"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20289179"
Received: from kridax-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.55.79])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:20 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v8 4/4] drm/i915/display: handle systems with duplicate
 qgv/psf gv points
Date: Mon, 25 Mar 2024 15:01:56 +0200
Message-Id: <20240325130156.205726-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325130156.205726-1-vinod.govindapillai@intel.com>
References: <20240325130156.205726-1-vinod.govindapillai@intel.com>
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

There could be multiple qgv and psf gv points with similar values
In case if we need to set one such QGV or psf gv  point where there
could be duplicate entries, we would have to select all those
points. Otherwise pcode might reject the GV configuration. We do
handle this when we set appropriate qgv and psf gv as part of
intel_bw_atomic_check calls. But during the bw_init force disable
QGV points phase, we need to select all those points corresponding
to the maximum bw as well.

v1: - use the same treatment to qgv points as well (Vinod)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 844d2d9efeb4..20c67474154e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -847,6 +847,8 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 		if (max_data_rate > max_bw) {
 			max_bw_point_mask = BIT(i);
 			max_bw = max_data_rate;
+		} else if (max_data_rate == max_bw) {
+			max_bw_point_mask |= BIT(i);
 		}
 	}
 
@@ -866,6 +868,8 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
 		if (max_data_rate > max_bw) {
 			max_bw_point_mask = BIT(i);
 			max_bw = max_data_rate;
+		} else if (max_data_rate == max_bw) {
+			max_bw_point_mask |= BIT(i);
 		}
 	}
 
-- 
2.34.1

