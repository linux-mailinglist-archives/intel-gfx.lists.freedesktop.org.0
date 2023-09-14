Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1920C7A0E44
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F7810E593;
	Thu, 14 Sep 2023 19:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E089C10E593
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719629; x=1726255629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pqrqFloBCBVchcn7Igyop+PHcbPieYvFVeb9L21szQc=;
 b=Q3eW1M4ICcEAG9/k+gWwZS+0vFKrc87hUu6rySCqzq4s8rB4Est3KkXT
 XXv4hh632AteWNIx8mGl5EVvQjrTg53doPmWf5E5lh2YzY/AFbJ7KkVPB
 sDMzLqtTWFAbddp0MzS1UKjZ1t6cHxIpz0ImNvJEHc9r113MQf46FNXV3
 AdaAz+DX3ga7xJVQz00SR23mR9Mq4a1JIJZ9/j9kHCXJnwa0H7ooQDrJh
 iRYn3Qps2GkEakyteZ4D05PDrly6eAaUd86lOxh2ZE6enC2clEkcW+kev
 z41pVnzjYhixMHe41T07JmfMa4hHVYG7JOXAf5mpo9xSKwG9KMSLYso2Z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421777"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421777"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790618"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790618"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:54 +0300
Message-Id: <20230914192659.757475-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 20/25] drm/i915/dp: Make sure the DSC PPS SDP
 is disabled whenever DSC is disabled
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
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03010accc1c7f..e942eb95d688f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4027,7 +4027,10 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
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
index 19548242fa0f2..a38a0e6da01bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -662,9 +662,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
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
2.37.2

