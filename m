Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C118471AC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 15:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE40510E7EA;
	Fri,  2 Feb 2024 14:13:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjS8fU7J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36AD610E7EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706883188; x=1738419188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5vNLW5an1VkSoIwXnOfmQuwd0r7amO3Ob1d1+zwZ7zM=;
 b=HjS8fU7JNEIvTLv9muDbC11Yn3sidP5zaNp7wy+oAh2VCSNpTy9p8XmC
 8s5Nsj+4VsJRkX1j8/neudkgU7kEyueQ8irPGUlPNZbk+UvwgrI0Tvo3M
 o5O/UW7s7TBPD1L5LOaQyZyyz+vdO3Z5OQ8l600sVdJuuzBUc5cLIfQBj
 PaV4WRd4wsDKOWRYsktsSSWQ4UwjQWXsRad1JqXTx9uznv3DNmUTKZy5U
 4GETQdmEq4dTkeTwecL6QO3M4+8QEXQ1w4wBsUOZ3D7p8DeFK1Z0WuOXe
 QjpjDtoOe5M9uQgWYTA9Ts0vnBUg82dnqu5WW4NPsyEx1RbrAWRsKzUa2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="81186"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="81186"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:06:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="80993"
Received: from mmermeza-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.59.198])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:06:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RFC 4/4] drm/i915/mst: enable MST mode for 128b/132b single-stream
 sideband
Date: Fri,  2 Feb 2024 16:05:34 +0200
Message-Id: <a2c9faf86b5d93013fdd0be9bf3d6ba6228f0a8f.1706882591.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1706882590.git.jani.nikula@intel.com>
References: <cover.1706882590.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

If the sink supports 128b/132b and single-stream sideband messaging,
enable MST mode.

With this, the topology manager will still write DP_MSTM_CTRL, which
should be ignored by the sink. In the future,
drm_dp_mst_topology_mgr_set_mst() bool mst_state parameter should
probably be turned into an enum drm_dp_mst_mode mst_mode parameter.

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4dd9c50226d1..16130e87dc23 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4020,7 +4020,9 @@ static bool intel_dp_mst_detect(struct intel_dp *intel_dp)
 
 	intel_dp->is_mst = i915->display.params.enable_dp_mst &&
 		intel_dp_mst_source_support(intel_dp) &&
-		sink_mst_mode == DP_MST_CAPABLE;
+		(sink_mst_mode == DP_MST_CAPABLE ||
+		 (sink_mst_mode == DP_MST_SIDEBAND_MSG &&
+		  intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B));
 
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s -> enable: %s\n",
-- 
2.39.2

