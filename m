Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5319392D2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CACB10E204;
	Mon, 22 Jul 2024 16:55:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AihNMC+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18CC10E1F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667302; x=1753203302;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pM8xlaGElT6CoZ5y8PbDxo021uRP644NZGDCgzjE3o8=;
 b=AihNMC+1tOwaPsSuAj7+8Di49s6H4CVzxxrwHUr5BUbPu1WIopWKHwDT
 OkX/MWAV7gaQmdl+Re0HU8oKN5V6NYigTTYZ2K605x7+nvdllyF/dWZjO
 nhBZyaWKIe6M+zstTZhWQQFH34XzHNhq9ON+lYvYs6zw/kmLXDtQDKewC
 kfjgHPSnuXLK9ExojZuNJ/iqJ/RPw8/dYg+bQ9js+YBBTiCXyyJZkLc7m
 lkUHCI8uBmrSSm0J5sxXC6Xp0117mALKO29usNFgHZv+ZkmC9qC4GmY20
 KdCtNL9LHeqycIlDelvfeHA47ye4JdzQfQRwluSV1KHZ+2R55a6UHentx A==;
X-CSE-ConnectionGUID: MEz1+qJ3SAueK1JlEpnkPQ==
X-CSE-MsgGUID: Ut2IN0OmR5eoCzuQn96HPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117319"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117319"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:02 -0700
X-CSE-ConnectionGUID: Z4EKBMoERdGpur9bhn8g2w==
X-CSE-MsgGUID: vyQZFh7OT2KGPmL1Eb1Btw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056270"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:55:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/14] drm/i915/dp_mst: Queue modeset-retry after a failed
 payload BW allocation
Date: Mon, 22 Jul 2024 19:55:00 +0300
Message-ID: <20240722165503.2084999-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
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

If the MST payload allocation failed, enabling the output also failed
most probably, so send a uevent accordinly requesting the user to retry
the modeset. While at it remove the driver specific debug message, there
is already one printed by drm_dp_add_payload_part1().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 27ce5c3f5951e..57f29906fa28f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1158,8 +1158,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	ret = drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
 				       drm_atomic_get_mst_payload_state(mst_state, connector->port));
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Failed to create MST payload for %s: %d\n",
-			    connector->base.name, ret);
+		intel_dp_queue_modeset_retry_for_link(state, &dig_port->base, pipe_config);
 
 	/*
 	 * Before Gen 12 this is not done as part of
@@ -1223,6 +1222,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
 	struct intel_crtc *pipe_crtc;
+	int ret;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -1254,8 +1254,11 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	if (first_mst_stream)
 		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
 
-	drm_dp_add_payload_part2(&intel_dp->mst_mgr,
-				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
+	ret = drm_dp_add_payload_part2(&intel_dp->mst_mgr,
+				       drm_atomic_get_mst_payload_state(mst_state,
+									connector->port));
+	if (ret < 0)
+		intel_dp_queue_modeset_retry_for_link(state, &dig_port->base, pipe_config);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
-- 
2.44.2

