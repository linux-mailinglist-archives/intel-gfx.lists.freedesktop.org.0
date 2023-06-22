Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613087399E2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 10:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1131710E4F3;
	Thu, 22 Jun 2023 08:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E99610E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687422874; x=1718958874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CV4p8Wdf8djci2+qDsR8dvPdTBeJ0ONZJFHdsdlINNM=;
 b=iz5f5/R0R5zm9LWT7rqPaMY1HndgY6jNlSD1/uzFygKIkhwLXHhzCzsq
 iS56bPMQmBKrNMVyvsrVreg0L9LjKKP/RE4Vvxp16+2lIcqQ+OZF/gGfV
 n6UnCSadZk/3Huwngbdsez+QDprEXO8f23RvUS9O4Kx+T5N8/l8hWQgAy
 WWZw34GHvEa2PR+CdzH+Bu8+9tC4bpMFWQ+5l66IK9jYlw4G/laWYoxRo
 fZHhqLJIfA+sQ272yxZXNGP2yd2qoXTC8C4zfjEj3+tUCD8eYhyd+l31P
 sPMM3i7SlzYAy9GIeUGAB85hOBxAR5jVb3/Wegp5uusl7HRE4e4G+7egL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="340031987"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="340031987"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 01:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="708997946"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="708997946"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2023 01:34:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jun 2023 14:02:53 +0530
Message-Id: <20230622083254.2057102-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Assign correct hdcp content type
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

Currently hdcp->content_type is being assigned the content_type field
in drm_connector_state which is wrong and instead it needs to be
assigned hdcp_content_type field from drm_connector_state

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 5ed450111f77..34fabadefaf6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2358,7 +2358,7 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 	mutex_lock(&dig_port->hdcp_mutex);
 	drm_WARN_ON(&i915->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
-	hdcp->content_type = (u8)conn_state->content_type;
+	hdcp->content_type = (u8)conn_state->hdcp_content_type;
 
 	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
 		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
-- 
2.25.1

