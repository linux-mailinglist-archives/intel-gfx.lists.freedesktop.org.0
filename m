Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C12A00A15
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121E010E8CD;
	Fri,  3 Jan 2025 13:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NdWIS+XW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41AAD10E8C9;
 Fri,  3 Jan 2025 13:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912411; x=1767448411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PycMmPZtkTEoZqFitJBU/oOppZ85TpqwiXeJUNbLAJY=;
 b=NdWIS+XWcUGnRDI9e6uncq09TdRduljRotv1AGTJ3xEJRlFBXvkoPgko
 e7pCORHkP7wMnOVo+en1vR3TwLwouRGzXjFxtgEhfpXxQs5lIf/AC9tgY
 g7zwi0UHmiIep1iKZ7JxeEASLPa6zVRahbpj9HUd/jMF0FLQ7qDJiAzVG
 JVoWyMD4/bYxAumhgiO6aSYUXLzR/qh8TMnxHzOaNXvNFS2u9uaa2SueV
 h87tcLR/JJDuhtM9EQp+FKRbziLPl5Zn+8YuPAULS9LVkqXm7ov1VS2N3
 BmJmTOP5EasFa7wX7ls3N2+Z7RAgmJfhhAcl9+hhXGV9QQyYPUPMKiKrd A==;
X-CSE-ConnectionGUID: Yaw3teDyQxiL5fgnhWiFHQ==
X-CSE-MsgGUID: fbsxZf+wQ5KIF6vShOA68w==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040291"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040291"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:30 -0800
X-CSE-ConnectionGUID: DfL/cADjROKdN5k6sJej9Q==
X-CSE-MsgGUID: ppYNP+k2TD+0MUhtfACY2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105852000"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 09/16] drm/i915/ddi: 128b/132b SST also needs
 DP_TP_CTL_MODE_MST
Date: Fri,  3 Jan 2025 15:52:32 +0200
Message-Id: <b29fbba8c979a8bab2bf03088610fe408faaf704.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

It's not very clearly specified, and the hardware bit is ill-named, but
128b/132b SST also needs the MST mode set in the DP_TP_CTL register.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6e0684545b48..80a76c1c2727 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3656,7 +3656,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 
 	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+	    intel_dp_is_uhbr(crtc_state)) {
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	} else {
 		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
@@ -3716,7 +3717,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	}
 
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+	    intel_dp_is_uhbr(crtc_state)) {
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	} else {
 		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
-- 
2.39.5

