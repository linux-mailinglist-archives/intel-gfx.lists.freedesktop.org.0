Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943392AEB2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B2CE10E33A;
	Tue,  9 Jul 2024 03:26:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fo/g7wAj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBBA10E33A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495565; x=1752031565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1DWeqDZ21skzl7OMON7e040OWqRJaPSPd9ztXxfl7zY=;
 b=Fo/g7wAjObDosBOwG4mLh2DXNvKgQIMeOYBidEEVM4sKknWOsxHtut7M
 oS8hc7jAgI2CNPwbNEWDgoMYC8T6mH1huSn4vWHkRZYhPVfl1DEGMpdpM
 f8CqWVkhtNFPPKYLZ5678jBadE5cBxJZWhJ+2PDBUqiYYWpHs2d0d0dvV
 hmUU/jaR2Oh5f5VHrujcYwXchRAJmR0iUoerLwJ7A9ZABJija9JiUErtM
 50i/x2IHc3Dd6VmP3aRuHmbxY02oJ6XoMVPy3do2zqnGccRw1ud2wwB/s
 KTD7CnGxphWPL13qQzNClxIp/qRecUmJ5tDhAWs5Fot6SFVYJalny4jbm Q==;
X-CSE-ConnectionGUID: OwZHnJjqQnOww/7gm4xXMw==
X-CSE-MsgGUID: merG/KpiREuMITijJcinqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536456"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536456"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:05 -0700
X-CSE-ConnectionGUID: 8mxmXu/mTHuCta3j8RTfyw==
X-CSE-MsgGUID: mhfc6sfVQtCXGHSClGY56w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374176"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/10] drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh
 rate
Date: Tue,  9 Jul 2024 08:56:44 +0530
Message-Id: <20240709032651.1824185-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3f46e13bb7b8..dcb94526cf00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2642,6 +2642,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
+		if (crtc_state->vrr.fixed_rr)
+			as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		else
+			as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
-- 
2.40.1

