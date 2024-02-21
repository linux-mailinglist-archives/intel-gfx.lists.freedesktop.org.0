Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F025D85D7CF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 13:20:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CABF10E721;
	Wed, 21 Feb 2024 12:20:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iDeIP9Yd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A7910E717
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 12:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708518016; x=1740054016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L7MRLdu+l2NlLRdf3eGQNzk4v2hfFYWYieoywhJY6lo=;
 b=iDeIP9YdwZDraJ6IItNQbpAgzWb60nrAWmveLT0Jws37fCjAK35XWjO6
 0vPzibzL4gxlhpUZujj/f+jpaicwbpKaHxRVg1Eit/2GFJ6nAT+q6yIU2
 a+wOY8Rd6PTMzH+NGVsP34E05EpLvNpUKiJbEcMP650fjXtfVRPr2HgJn
 3xlZWzoesoZu9c0Az6NHCMi3u2JQfDJFpstLc9xuqffiCskRcrpzlWw71
 4Afo8sSUXgdp8Y1RXxjS9d1LONrBu6pT7NC/oPMjKelsNrgVzreZaD5WR
 kvjw+cwGXFktRrjU8KNW0QSzwbBsQLbPo65I/4SvXcSiisBT6zSVmCBGW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="6488796"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="6488796"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 04:20:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5426064"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 21 Feb 2024 04:20:14 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 1/6] drm/dp: Add an support to indicate if sink supports AS SDP
Date: Wed, 21 Feb 2024 17:43:16 +0530
Message-Id: <20240221121321.2213128-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240221121321.2213128-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240221121321.2213128-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add an API which indicates the sink support Adaptive Sync SDP,
which can be used by the rest of the DP programming.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 25 +++++++++++++++++++++++++
 include/drm/display/drm_dp_helper.h     |  2 ++
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 8d6ce46471ae..81c5507928f5 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -2913,6 +2913,31 @@ void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
 }
 EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
 
+/**
+ * drm_dp_as_sdp_supported() - check if adaptive sync sdp is supported
+ * @aux: DisplayPort AUX channel
+ * @dpcd: DisplayPort configuration data
+ *
+ * Returns true if adaptive sync sdp is supported, else returns false
+ */
+bool drm_dp_as_sdp_supported(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
+{
+	u8 rx_feature;
+
+	if (dpcd[DP_DPCD_REV] < DP_DPCD_REV_13)
+		return false;
+
+	if (drm_dp_dpcd_readb(aux, DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
+			      &rx_feature) != 1) {
+		drm_dbg_dp(aux->drm_dev,
+			   "failed to read DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1\n");
+		return false;
+	}
+
+	return (rx_feature & DP_ADAPTIVE_SYNC_SDP_SUPPORTED);
+}
+EXPORT_SYMBOL(drm_dp_as_sdp_supported);
+
 /**
  * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
  * @dpcd: DisplayPort configuration data
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index d02014a87f12..a0356721de0f 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -100,6 +100,8 @@ struct drm_dp_vsc_sdp {
 
 void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc);
 
+bool drm_dp_as_sdp_supported(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
+
 int drm_dp_psr_setup_time(const u8 psr_cap[EDP_PSR_RECEIVER_CAP_SIZE]);
 
 static inline int
-- 
2.25.1

