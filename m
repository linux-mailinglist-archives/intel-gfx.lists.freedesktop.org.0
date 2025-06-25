Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C402AE7F64
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A594710E6C6;
	Wed, 25 Jun 2025 10:33:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9f2r0MS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9DA10E6D1;
 Wed, 25 Jun 2025 10:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847595; x=1782383595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PufZETovy+u0qKGygQCyp9BOCNEc0wo2oUfU4C9nhbU=;
 b=j9f2r0MSysT5FJW0yU9cVpRFRKgDy+AxQDZPyc4n4dNaJFoyebVEemG3
 tiU92Ls9jWyWT7JfFhNRPRbK+odOl8LI5oF8imWLdDb8qy72PcosYkw/k
 fbtc4c+KmsDLPhW7DWtYQCOWsK2izLZSSggf0+aJ1n2Flj3QYdX0jp3Is
 N5r9OgYGrnOXuqcG+qKcQLzBqUkdQVTMv59sOx+vKMLvHEB6Bh/2djVeU
 KJooaLST2OEeoumMQW+mfcAIJ4pkzrL0y4ljEdNLo+Qc0OuwQHJUnDBXA
 7EnzQGW1IYInE4buPPhmFoOmVlL6nrSp99OlNqCsPpSnpLRQ4f8tKy4TM w==;
X-CSE-ConnectionGUID: TMhMwNr7RvGOqeYJ9Pw39g==
X-CSE-MsgGUID: 0wjXpaGCSxmp/Uejkl0Cag==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830288"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830288"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:14 -0700
X-CSE-ConnectionGUID: LWkKWpdwRKaoEoJjjXJGvA==
X-CSE-MsgGUID: 0jYzDvhCTpyH8Yg34NTj7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151798916"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 07/16] drm/i915/bw: abstract intel_bw_qgv_point_peakbw()
Date: Wed, 25 Jun 2025 13:32:25 +0300
Message-Id: <49a723e0f23e06a6045f8f9e0d06648a6bc899c7.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Add intel_bw_qgv_point_peakbw() helper to avoid looking at struct
intel_bw_state internals outside of intel_bw.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 5 +++++
 drivers/gpu/drm/i915/display/intel_bw.h       | 1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 2 +-
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 3c3b4dd71ec3..1f86f3cb9cae 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1739,3 +1739,8 @@ bool intel_bw_can_enable_sagv(struct intel_display *display,
 
 	return bw_state->pipe_sagv_reject == 0;
 }
+
+int intel_bw_qgv_point_peakbw(const struct intel_bw_state *bw_state)
+{
+	return bw_state->qgv_point_peakbw;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 68b95c2a0cb9..7728dc86a31a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -79,5 +79,6 @@ bool intel_bw_can_enable_sagv(struct intel_display *display,
 			      const struct intel_bw_state *bw_state);
 void icl_sagv_pre_plane_update(struct intel_atomic_state *state);
 void icl_sagv_post_plane_update(struct intel_atomic_state *state);
+int intel_bw_qgv_point_peakbw(const struct intel_bw_state *bw_state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 8334744a2e23..a4d53fd94489 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -346,7 +346,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 
 	/* firmware will calculate the qclk_gv_index, requirement is set to 0 */
 	new_pmdemand_state->params.qclk_gv_index = 0;
-	new_pmdemand_state->params.qclk_gv_bw = new_bw_state->qgv_point_peakbw;
+	new_pmdemand_state->params.qclk_gv_bw = intel_bw_qgv_point_peakbw(new_bw_state);
 
 	new_dbuf_state = intel_atomic_get_dbuf_state(state);
 	if (IS_ERR(new_dbuf_state))
-- 
2.39.5

