Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFC3873867
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A89A1131EB;
	Wed,  6 Mar 2024 14:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dfXzloJ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6BC10EE5D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734066; x=1741270066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ov86RGlGokiv2cgWE0CwjIjm3NOmk/MvZvyRbGuGlfc=;
 b=dfXzloJ52lA0XqLwxBRPRP2g0qE3U2A/GnJbZype44Jwd6M3qPIhddJl
 xgzFjVYguIpQlo8nUgG8yUuLunsou+VGgccembMYoQLLoEUo0Wx3BJj6y
 /QdBs7MzNk4p4biJGOws01UPoIDNbLhYqyiV48J5OaY60iXYIVUQFhcUL
 I72Uy6sRe+pUd5vCRLMMzSa4bdroskykjQBOItqBIvKaq7024KL2zTTcp
 QuEPMT/qkq3I01G58rVokvdzrvZESs/aZmIYWZaSf9tucdUrzmTBhsId+
 K0a/o5C382YvrOAKkFPJXi4y5hJVPYFcgtaRXpJECXO09JFhC4PjuYvGF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7288474"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="7288474"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32915336"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jani Nikula <jani.nikula@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 6/6] drm/i915/mst: enable MST mode for 128b/132b
 single-stream sideband
Date: Wed,  6 Mar 2024 16:07:17 +0200
Message-Id: <1945e70fb2d39c690644f2ec0d9c3d4a4e032cb6.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
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
should be ignored by the sink. In the future, the topology manager
should probably only set the sideband messaging related parts of the
register.

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3956604d8b00..4787dc15797a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4069,7 +4069,8 @@ intel_dp_mst_mode_choose(struct intel_dp *intel_dp,
 	if (!intel_dp_mst_source_support(intel_dp))
 		return DRM_DP_SST;
 
-	if (sink_mst_mode == DRM_DP_SST_SIDEBAND_MSG)
+	if (sink_mst_mode == DRM_DP_SST_SIDEBAND_MSG &&
+	    !(intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B))
 		return DRM_DP_SST;
 
 	return sink_mst_mode;
-- 
2.39.2

