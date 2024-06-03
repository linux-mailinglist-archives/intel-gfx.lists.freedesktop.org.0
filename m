Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ADA8D8353
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4937E10E3B1;
	Mon,  3 Jun 2024 13:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pn6HASun";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCFE910E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419781; x=1748955781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oSyTQvxWKXRCSTK92OHkmBrwICvZSndIfJHN8fvbD4w=;
 b=Pn6HASuni9Pq5T9ssukD86tY0isaCjVDRu1z3FL5NTnQiFA8RSsIFcJm
 qKWBIgGsw4YnZ63/vxyWAhIIk0koUhSOwn9huikcfJj35WmOOJxsYEtLS
 S3zdS+dgAIGa5I1qxdqIV6/cDGt8cCfAjfZ12Q2jVBo1hyOiswa6qLNuu
 V9h9rts6pvEaVdxQsu8fR7G02JP7tW5i9RpHBf2PBzMZ/gSjuCORLY/Qx
 w97WMHGMEp7vpK8cDiaqDDzoqeg0rwl3CTFgJdk78AuZU6aJkPe8HsizI
 sU7KrnjqlaDq9zVpQu++q8Vo0AHz1tE3K+dAIUfcKpQfB8xch/SKaHAQf g==;
X-CSE-ConnectionGUID: /9NZ9zkWSnCXQ7KRl/wfhQ==
X-CSE-MsgGUID: PFt6PqxZRE2ItL5E9X72TQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="11873389"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="11873389"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:03:01 -0700
X-CSE-ConnectionGUID: L3f92+rsQzSvP3LCjB58Qg==
X-CSE-MsgGUID: +cuotV3ZS22/rrJBEaGBYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41960003"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 3/5] drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh
 rate
Date: Mon,  3 Jun 2024 18:33:17 +0530
Message-Id: <20240603130319.1594872-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
References: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
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

While running with fixed refresh rate and VRR timing generator set FAVT
mode (Fixed Vtotal) in DP Adaptive Sync SDP to intimate the panel
about Fixed refresh rate.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f33b2da1b084..8b362b20bc8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2634,10 +2634,12 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
 
-	/* Currently only DP_AS_SDP_AVT_DYNAMIC_VTOTAL mode supported */
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
-	as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
+	if (crtc_state->vrr.fixed_rr)
+		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+	else
+		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 	as_sdp->vtotal = adjusted_mode->vtotal;
 	as_sdp->target_rr = 0;
 	as_sdp->duration_incr_ms = 0;
-- 
2.40.1

