Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1D47D4499
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2A210E2C2;
	Tue, 24 Oct 2023 01:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDA910E2C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109760; x=1729645760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CO/EAEU8pZYZ/aIdxeafddUthLNmeWZgrtC5kzHx0Z8=;
 b=YavNRRqsZouhFyfeUcq56L4mSKGUfk3iwjTObR95AoJ4AWNxsAkLmyrc
 6hDNJb3ww48GCGoBhF2gAGxYtG9mpciw3/U59HF5Ut4udhrKxkAlEIym6
 5li89GnoqQnD8L5SPdsHRmoiGcj6eMN6VnLLz79MOvPklrT2NZSSeEdZC
 t2W3qZZpKmvsthXOG30V4H5kI3Ylwuvocw726G0h1jHIqIvF1uAtyqkBx
 SOl7X01wRVN3hfqG+zvePXZNQr/aRk/9q48cOwwdl+Aub7vFFnaR7gP05
 mEOC5z7O3rhhaTXolOnYQP2m9zvkD6xGzvfuSEfgCkdA9xv37z/dyLpjf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304372"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304372"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870073"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870073"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:11 +0300
Message-Id: <20231024010925.3949910-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/29] drm/i915/dp: Make sure the DSC PPS SDP is
 disabled whenever DSC is disabled
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

Atm the DSC PPS SDP will stay enabled after enabling and disabling DSC.
This leaves an output blank after switching off DSC on it. Make sure the
SDP is disabled for an uncompressed output.

v2:
- Disable the SDP already during output disabling. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0235de5bb8cd1..7d185d6b2fe9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4069,7 +4069,10 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
 	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
 
-	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
+	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
+	if (!enable && HAS_DSC(dev_priv))
+		val &= ~VDIP_ENABLE_PPS;
+
 	/* When PSR is enabled, this routine doesn't disable VSC DIP */
 	if (!crtc_state->has_psr)
 		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 02da25631b6ef..0c3851f099b98 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -721,9 +721,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 * BSpec 4287: disable DIP after the transcoder is disabled and before
 	 * the transcoder clock select is set to none.
 	 */
-	if (last_mst_stream)
-		intel_dp_set_infoframes(&dig_port->base, false,
-					old_crtc_state, NULL);
+	intel_dp_set_infoframes(&dig_port->base, false,
+				old_crtc_state, NULL);
 	/*
 	 * From TGL spec: "If multi-stream slave transcoder: Configure
 	 * Transcoder Clock Select to direct no clock to the transcoder"
-- 
2.39.2

