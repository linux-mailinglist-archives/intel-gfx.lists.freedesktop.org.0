Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD03881856
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 21:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54B910E648;
	Wed, 20 Mar 2024 20:11:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KxA/VvWT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E121210E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 20:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710965487; x=1742501487;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u1kWCvMqFtsl2SDW+fgT0shUAFpGUiIyU5bHKrLfag4=;
 b=KxA/VvWTA9nGuSV3WPMsgXjXU9+Bo1JQ2K1xwWYA7vb0xzwNIDVURyni
 +T2R8bIkZJ40oigysQfmW+OLy/zQ7eSiFxRjMRJdrz4zRv2f4v/5XtStS
 4tk0tbZ2P3ZgBmM1DDFm+Q4vqJzMsrUre+VViWI6SrfAYckeV99kLW6HF
 q0VNs4VB1Y4c8kKjVKYBEr1LCGFfGxe37m23lMvt1Iv9pDzIgn3t8tgII
 Ge7SGXrDidLdqD/ikpQNU0PtR3Yi6y8tUEbci2h6J+UmrR50S186nFQo1
 8c687gjtTBhkcBP1wRKl4vcDifQLBxPxC2ORyhehpufRLRFmhyAcD6BAi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31352332"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="31352332"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14246472"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915/dp_mst: Fix BW limit check when calculating
 DSC DPT bpp
Date: Wed, 20 Mar 2024 22:11:43 +0200
Message-ID: <20240320201152.3487892-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240320201152.3487892-1-imre.deak@intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
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

The DSC DPT bpp limit check should only fail if the available DPT BW is
less than the required BW, fix the check accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b2bcf66071b05..c21fd7a2cd44f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -60,7 +60,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 		int output_bpp = bpp;
 		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
 
-		if (output_bpp * adjusted_mode->crtc_clock >=
+		if (output_bpp * adjusted_mode->crtc_clock >
 		    symbol_clock * 72) {
 			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
 				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
-- 
2.43.3

