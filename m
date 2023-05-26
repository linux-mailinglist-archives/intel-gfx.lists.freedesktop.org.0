Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F337712AC3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57BB10E812;
	Fri, 26 May 2023 16:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BA110E812
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119102; x=1716655102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nwGcy13lKWR+0Wh74VjL/urXlI96r5D8xTYXp8ofn8Y=;
 b=LLQsmYjZkp/z3Zu8dX9rPOtTrrXmqFGKj3uaC6n3Ba5DdTWwD7jsevnd
 cXmAI6Ochf+6MP7kEbUfHlFTuwcrja7QjbHVVapJaHxDXOHtMNvrtYSih
 XE0AAX3+vJekfej1fkt0TVMRHkLJdEsAj38PBHBhJWAHcr3H5V1L6c0Fq
 jwx6sgc53r5RRO6OoyAY0xzSVtJG6YZaCP8PVupKGyWgdHmNuN9WP3WSl
 TA3TYa8/gQY2g7NyNBtubZ1TAXq29wc0afyqIoWqifTWHSM1EtDYMhq73
 cRmhHpaV4KHiLRC27kQJmYe767h/oSTgeUXsfShUG9o218lTDaNVU2b3k A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="354261202"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="354261202"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="699468201"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="699468201"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:55 +0300
Message-Id: <66ca543b400a2048a6a84bb57a7bac8943014a96.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915/ddi: drop unused but set
 variable intel_dp
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

Prepare for re-enabling -Wunused-but-set-variable.

The intel_dp variable has been unused since commit ef79fafe9dae
("drm/i915: Eliminate intel_dp.regs.dp_tp_{ctl,status}").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d1a9a3cf94b5..ced01813e097 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2225,12 +2225,10 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp;
 
 	if (!crtc_state->fec_enable)
 		return;
 
-	intel_dp = enc_to_intel_dp(encoder);
 	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 		     0, DP_TP_CTL_FEC_ENABLE);
 }
@@ -2239,12 +2237,10 @@ static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
 					const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp;
 
 	if (!crtc_state->fec_enable)
 		return;
 
-	intel_dp = enc_to_intel_dp(encoder);
 	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 		     DP_TP_CTL_FEC_ENABLE, 0);
 	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-- 
2.39.2

