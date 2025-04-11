Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F3FA853D9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 08:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABE610EAEC;
	Fri, 11 Apr 2025 06:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JCx2zW4R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D78910EAFA;
 Fri, 11 Apr 2025 06:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744351359; x=1775887359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QNpOCQ6jBmZFGy7dgLxnhrBe/bS0I4kigIwgZmiVObY=;
 b=JCx2zW4RXKzEgmZ33/XQYj35Ao03LggNnb2Rm03asc956N/lKSDObLHZ
 yWXk2ErgOL4oiqhUN5ZWOTF2CgtNLhzJBVDn0IS9WxgFWAihM2992NCR6
 f3KT2aMEPV3Ax6SSUNRPenshzxbB/A5Colp66TP0prtfKYPmtLdVb73ZS
 gT9CkyY6TLiQmM/Izf4AfCmC4n66R4Xsb3SEQgvu9R3hXXt4xvagJgGwF
 EarNkPvw090x/sHRJSSzXoBzgdwy71fMf76Zgn0my5aflTrWPSxgieiOp
 GE7yUZ2ZrZdU/1lK+ntz2UcWI2IrsQaJ748tZGCTCcH6AlKj5XJ5KUQKo g==;
X-CSE-ConnectionGUID: JUFM0x7yTT67HxN+jUeYMQ==
X-CSE-MsgGUID: AeSoRshbRVOcgyH5xrpmcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="46022211"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="46022211"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 23:02:39 -0700
X-CSE-ConnectionGUID: vRa0+Jr5T0uygDeBgwAiRQ==
X-CSE-MsgGUID: EODsEMTXRFq9rNxm7wbE9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129046783"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 10 Apr 2025 23:02:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/backlight: Modify condition to use panel
 luminance
Date: Fri, 11 Apr 2025 11:32:36 +0530
Message-Id: <20250411060235.2732060-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250411060235.2732060-1-suraj.kandpal@intel.com>
References: <20250411060235.2732060-1-suraj.kandpal@intel.com>
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

According to our internal spec we need to now check if both
panel luminance and smooth brightness are available in panel for
us to be able to change brightness using luminance value.

--v2
-Add Fixes tag [Ankit]

Fixes: 64481497924d ("drm/i915/backlight: Check Luminance based brightness control for VESA")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 8173de8aec63..20ab90acb351 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -663,7 +663,8 @@ intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if ((intel_dp->edp_dpcd[3] & DP_EDP_PANEL_LUMINANCE_CONTROL_CAPABLE)) {
+	if ((intel_dp->edp_dpcd[3] & DP_EDP_PANEL_LUMINANCE_CONTROL_CAPABLE) &&
+	    (intel_dp->edp_dpcd[3] & DP_EDP_SMOOTH_BRIGHTNESS_CAPABLE)) {
 		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] AUX Luminance Based Backlight Control Supported!\n",
 			    connector->base.base.id, connector->base.name);
-- 
2.34.1

