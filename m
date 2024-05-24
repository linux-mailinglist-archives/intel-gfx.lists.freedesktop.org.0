Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED068CE434
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 12:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B13010E9AD;
	Fri, 24 May 2024 10:30:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SODL2IUT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89A310E967
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716546627; x=1748082627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mABwUKog6wI/OIG1iFlFckqcCCcMqs7RlaHVQpOkjNU=;
 b=SODL2IUTalgsbj+Xi1CPZ435DoF0tdek8f5V4GQEWB31RTobHeuxMCgD
 AvHLYsWNDrKcLPnmfbPK7SeGVI2FuIFHJhJVO9yXQVAVx1vRWwk1Q+TUd
 LFUvktqKuKOmbCk+q5d62CSMVA6Mp8+R3rXYHJ4HUOX+zIfncYUMOuW/t
 869nKR95hhIB0wo6qm6hYRcJVCf1UOOC/kOIz+MCGujbwuEtkvDZ4xZyy
 O7S13zRXUgjxEU9/VdOf3T5PaW7NPqyPIju7FLy23/N9La5R3Y3nlyPJK
 fwL0K3pLfrqIC2sEecwUv/4g0DP9kFAJyltjiPt5I0VMni2uO5f6Er0ae w==;
X-CSE-ConnectionGUID: HzBXHDPdSAGOYP548N6pgA==
X-CSE-MsgGUID: J0+N6q9fSbuP3UWAE+oBNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="15862744"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="15862744"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:30:24 -0700
X-CSE-ConnectionGUID: 59faEmqJTpOBdNwZ3I6e9Q==
X-CSE-MsgGUID: 7xw3UtOlSyalza0ZMKcfmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71385720"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 24 May 2024 03:30:23 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v9 8/8] drm/i915/display: Compute cmrr.enable flag
Date: Fri, 24 May 2024 15:54:32 +0530
Message-Id: <20240524102432.2499104-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
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

Set cmrr.enable flag during intel_vrr_compute_config.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 07be70f7c536..a981c8384f91 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -226,6 +226,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	} else if (is_cmrr_frac_required(crtc_state, is_edp)) {
 		crtc_state->vrr.enable = true;
+		crtc_state->cmrr.enable = true;
 		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
 		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
 		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-- 
2.25.1

