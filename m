Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3089ADA7D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 05:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0BD10E898;
	Thu, 24 Oct 2024 03:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RGDrUkP/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AFB10E0B0;
 Thu, 24 Oct 2024 03:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729741132; x=1761277132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KvydmP62FuktLZ40Jssp76zAUkmY4+Jg9706EIwUYkA=;
 b=RGDrUkP/pblKGRYvIr8J9v2h3HxfBdBPg7MY1XWLZcFbsO+j2C2A08BD
 0ybsGVPopNaDMJE5hlrSpMrvOdJH9vLNCitn/klyQpq27Fby37MFjfARO
 BopvfITsg3NHQAS5I7sds1DZzoQ4YHF44I/wkDPbwaYm/6x1wWZ/U0PXF
 rCCc2LhvGthISIulIcvLfsJqBmEF/9N6tf8LZMaKKS97upWATgkOJjeLk
 0Ljhp/rjWdSAXu6qXBAA1L8z5kpl6ZKqdDmZykNqsezNsWk0MmB1DTXOS
 bGkV4qbcmCmhAKzvwbSOKpceA32gmOSKAa/eHH7KlE99odtil9P5e0JHF g==;
X-CSE-ConnectionGUID: ENlWZDatShCN6lk0JL1Cjw==
X-CSE-MsgGUID: Tr+oM98ySe2KCxsRffNXsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="33264993"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="33264993"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:38:52 -0700
X-CSE-ConnectionGUID: 9rCVmkJcRSWfBzBKlL5l/g==
X-CSE-MsgGUID: 8ZbDq4diQkSiaUEQCffhDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80384957"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:38:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: stable@vger.kernel.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH xe-i915-for-6.11 08/22] drm/i915/display/dp: Compute AS SDP
 when vrr is also enabled
Date: Wed, 23 Oct 2024 20:38:00 -0700
Message-ID: <20241024033815.3538736-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241024033815.3538736-1-lucas.demarchi@intel.com>
References: <20241024033815.3538736-1-lucas.demarchi@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

commit eb53e5b933b9ff315087305b3dc931af3067d19c upstream.

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
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
(added prefix drm in subject)
Link: https://patchwork.freedesktop.org/patch/msgid/20240730040941.396862-1-mitulkumar.ajitkumar.golani@intel.com
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 999557a5c0f12..4ec724e8b2207 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2627,7 +2627,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.47.0

