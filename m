Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB49A7703DC
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 17:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4CB10E723;
	Fri,  4 Aug 2023 15:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874B810E723
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 15:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691161443; x=1722697443;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xIpZFWxh+4wiNHrWY9VidhH/zBXMPh847bok+MfQeQ8=;
 b=PnFuULTzRsFiOshQTw0yf0RfZiyfvAHDjRYq03/wm+1+7sIAuYndKUiM
 IeY/D9pRIJlkdeT0hPWt5Cu/hfxRwAuyg8X0YS8xnGONgVylwRjykXroP
 wpk99y2OpM057UiOSypbwXwEJhPyW8AUMEFjsoTR2jGRGS+jLf8n+hTKR
 Y14E5j7q6gr33j3cQ62+WAlHCjxFd9p9o2ouJjyLNi4CNTx5F0M8+X2o0
 OfjP0e2/p4BHI5k86pkjnloycm2OAj1FU8iRsSQ3sQMmFlhDFkjwtaobN
 /myiw194L0tpIqJ4eVqddaiO7ac4+K1nHSxkeBMo9O/eXDk2Ji42C+5Ek A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="355106851"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="355106851"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="733276840"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="733276840"
Received: from mschwieg-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.210.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:04:02 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 18:03:39 +0300
Message-Id: <20230804150339.22012-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804150339.22012-1-vinod.govindapillai@intel.com>
References: <20230804150339.22012-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: support DP2.0 SDP split
 for DP-MST
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

Extend the DP2.0 SDP split for DP-MST configurations

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..a178c0c75d04 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -381,6 +381,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	/* Update the SDP split decision flag */
+	intel_dp_audio_compute_config(pipe_config, conn_state);
+
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
-- 
2.34.1

