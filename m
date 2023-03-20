Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8241E6C1D07
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 18:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62D710E1F4;
	Mon, 20 Mar 2023 17:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6EDB10E1F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 17:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679331615; x=1710867615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s5nGi2aPYihch5q0NsLcAFjp45LZwWbbxTpkrVdhvOQ=;
 b=BCGkRskiOhN+PvqIFWzC1iAioMWobfl8WXm/Cd7DU5+FtgA9S/Kg8L33
 RROGQ1be7vz+0rDX3e0pCJ2jbBWyUGwS2n5/Y5o4kVlRVm9l0vRfbWIgg
 GQ5I71sJiiBZ/f6GEUihk+L0W8lEc4qavqPxOsm5fVLm+w7pIDsP7WNCw
 G6a00rWSj24n2j3nsRqI7gSRRRuxdY9QWjw8UigTFuUDvAW5jLPDE0r2r
 8rMEOgsjlh++5foCqdy7hGOyjPYUv/56nzAWKtC+UjQUqjAeseDaYtOmA
 LG45nWZ0UK1wkoaVGOo61Dw1VK55tgqudsejvmFqWJxL3sv8wfxlYFfJP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318367870"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="318367870"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855328299"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="855328299"
Received: from mmazilu-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 18:59:42 +0200
Message-Id: <20230320165945.3564891-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230320165945.3564891-1-jouni.hogander@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/psr: Unify pre/post hooks
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

pre/post hooks are doing thing differently. Unify them.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 31084d95711d..8dbf452d63c2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1954,23 +1954,22 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
+		bool keep_disabled = false;
 
 		mutex_lock(&psr->lock);
 
-		if (psr->sink_not_reliable)
-			goto exit;
-
 		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
 
-		/* Only enable if there is active planes */
-		if (!psr->enabled && crtc_state->active_planes)
+		keep_disabled |= psr->sink_not_reliable;
+		keep_disabled |= !crtc_state->active_planes;
+
+		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
-exit:
 		mutex_unlock(&psr->lock);
 	}
 }
-- 
2.34.1

