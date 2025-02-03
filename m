Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76362A25FB4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1BC10E4FB;
	Mon,  3 Feb 2025 16:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RcaJLrOH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2874510E4DF
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738599469; x=1770135469;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/3xHokRCPLaxOWZ8zmeYj9GSn5MhEt2XqtB3WypgDuE=;
 b=RcaJLrOHWJYqAf6H7su1FRwgBo/M48OaRHfB0+NDlGE1ibYcQbdYx9j8
 UXtdunTPyU2llaQijAUR0bGocCTuRtsNfI8JEoyYxl6Hm6SdNM6s7aSio
 qw/eyuM9hNgT55pCoJXMsPlSTDRUHj5Hvf7/ov7ZUMac+O/8sc/SrCxo0
 jVWIHb6ogreWdTs/kvIUkRX7E0JsVCftfu9Eekvz+/9/GJLadxjF8QSKe
 GVlLsvK0q84uDK6J3S9leWidAxSwb1WQ4+aM4KhN2PavanwIpxiUObDaJ
 /xZYWwfHKJBDCeCckZZ9phWlh1vKuw/ukc86+1v89Lq23Ije+x9GkQ2PQ A==;
X-CSE-ConnectionGUID: YHcx/hkMRd2+F+jg6yaHvg==
X-CSE-MsgGUID: k29naVHeRrWeUTE/gCbGfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50511928"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50511928"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:17:49 -0800
X-CSE-ConnectionGUID: YCd3xl7IS3K864Lqljxjuw==
X-CSE-MsgGUID: 7hC7JLr+QZGoORLGKG52Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110286941"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2025 08:17:49 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 2/2] drm/i915/dp: Compute AS SDP only when vrr.enable is set
Date: Mon,  3 Feb 2025 21:44:47 +0530
Message-ID: <20250203161447.2643039-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250203161447.2643039-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250203161447.2643039-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute AS SDP params only when VRR is enabled to
maintain PSR exclusivity.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 00b95da18cc5..1223133e0bb6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2826,7 +2826,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.48.1

