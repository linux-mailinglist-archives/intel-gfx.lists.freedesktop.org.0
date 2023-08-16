Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7818E77DDC0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D870910E319;
	Wed, 16 Aug 2023 09:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42ADB10E317
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692179415; x=1723715415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YeF8SUG+pMfMGsc8TlQWIJUVG1fRFw4WIYlqVK/whhs=;
 b=VngbATYtltM6Suzcv4gFISkgsul5GMt1c59q4n8TXcq0qt8fnaYD/Dni
 cy+w8l192DacK7VLLUW52RxrP71MaeujVNPD2uG8ecbG5iJHpSbLZEjpM
 3M5bTOXSAcQl76C+lMdT+WFeU4Sr9tmo/xjTAfzhg6ZnBY8b6Zl9Mq1Mw
 tOXkuxbnVFG7wM7xi0u0TOCDt1XAZH64jYsbtdEujpKMeNTXo7tJ3ge/o
 eoioROt+KOQw/8hvaq2jVwU90SlwYS+LbpQaUW4cNq0hEJHqPTdD0ZHls
 hCy38B9YmC/7A0pkisYfM1J4e4mp1HMTCSrDmljAmLxe0dWO/8y9SAdhG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357464212"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="357464212"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:50:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="737234472"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="737234472"
Received: from mpietras-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.172])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:50:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 12:49:54 +0300
Message-Id: <20230816094956.487498-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230816094956.487498-1-vinod.govindapillai@intel.com>
References: <20230816094956.487498-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/display: combine DP audio
 compute config steps
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Combine all DP audio configs into a single function

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 964bf0551bdc..67c06bbc1760 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2240,9 +2240,12 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 
-	pipe_config->sdp_split_enable =
+	pipe_config->has_audio =
 		intel_dp_has_audio(encoder, conn_state) &&
-		intel_dp_is_uhbr(pipe_config);
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
+
+	pipe_config->sdp_split_enable = pipe_config->has_audio &&
+					intel_dp_is_uhbr(pipe_config);
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
 		    connector->base.id, connector->name,
@@ -2264,10 +2267,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		ret = intel_panel_compute_config(connector, adjusted_mode);
-- 
2.34.1

