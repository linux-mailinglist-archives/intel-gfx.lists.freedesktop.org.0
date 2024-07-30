Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F2B940633
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 06:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA43110E3B9;
	Tue, 30 Jul 2024 04:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NuV4899d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 820F310E3B9;
 Tue, 30 Jul 2024 04:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722312539; x=1753848539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kBt1nQUt2Z9tbOcRDrC8iBOn6XJW4BtgDVITyGR0DTI=;
 b=NuV4899dWLc5EfGi13wwsn2reApM5rgFGhmOU9hg4pRJp41mmpnUmpJu
 1s2Pb1CAau2N8yN2eRlWx70sN0o8JbLj96W4EEa0GXi/bOJAoc/ExI5uK
 W6138nsdlYLcMWxbAEzxir5up6PnMAfo3etptdEkkZhC361K3N5vGjHGY
 6wtq+i2MCq93TVROYrNlSK9mDC49XT8sDEVgWclp1MO2J77gt8//LOVk+
 +GlSCj+jpK3f0/pMprrUZRB3P2EJjro2Deb3+3QnQZ1t0tOKgkRQajqVU
 SYW7LgGjmIvFKH/DbqLYo+TbZ5kn/i6d37GSzlPN/eEcls7dLFWf0uY36 g==;
X-CSE-ConnectionGUID: BnD41IyTRDGROIdQA8w4OA==
X-CSE-MsgGUID: 7FGR7ZScSdaAas+YQ7rb1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19989303"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="19989303"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 21:08:58 -0700
X-CSE-ConnectionGUID: RIK72WKIR1qkYtwlIo2D2g==
X-CSE-MsgGUID: IWAgTHqxQSWgDkWfl6Kpqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="59021647"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 29 Jul 2024 21:08:56 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, arun.r.murthy@intel.com,
 intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3] i915/display/dp: Compute AS SDP when vrr is also enabled
Date: Tue, 30 Jul 2024 09:39:40 +0530
Message-ID: <20240730040941.396862-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240726085012.277687-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240726085012.277687-1-mitulkumar.ajitkumar.golani@intel.com>
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

AS SDP should be computed when VRR timing generator is also enabled.
Correct the compute condition to compute params of Adaptive sync SDP
when VRR timing genrator is enabled along with sink support indication.

--v2:
Modify if condition (Jani).

Fixes: b2013783c445 ("drm/i915/display: Cache adpative sync caps to use it later")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5d6568c8e186..86412ae7b48f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.45.2

