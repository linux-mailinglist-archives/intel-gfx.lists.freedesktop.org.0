Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79505780AF0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 13:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D344E10E4F8;
	Fri, 18 Aug 2023 11:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5510010E4F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692357611; x=1723893611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YeF8SUG+pMfMGsc8TlQWIJUVG1fRFw4WIYlqVK/whhs=;
 b=lVbiVDbKhsVx9nbyU+4jHxMppHBsl5/nGkAQcKUlJkmnznICOo9avhgL
 LIw2D9Ppf9WtkZSiApPacMDNA1T5yRGBh0aeDX1Wyz5zBOysYE7pLYGNV
 gubVifX0P0lMiIiHNwCO8hzQpcLhestY7SF+8hGlxquOGy6jsrShEkued
 SD3npOJNHtRrMmcnDYBuq1v92PEhdzJDo+bKdaKeRnXhxminth5iQfgiS
 /RKTVy/On4+sEQO48zL6GKglogLO2ZkFzDj7eBNi1Py3gUlMXqv+bLU9V
 5hg5Mc9BLtsZymxL/jgAWG37jQ//LV78mVsQtzYhg84nNansobpjsO8OY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370538218"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370538218"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728579586"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728579586"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:09 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 14:19:48 +0300
Message-Id: <20230818111950.128992-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230818111950.128992-1-vinod.govindapillai@intel.com>
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/display: combine DP audio
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

