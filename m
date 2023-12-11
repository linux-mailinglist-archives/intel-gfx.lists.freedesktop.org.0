Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7601180DD53
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 22:38:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3739310E509;
	Mon, 11 Dec 2023 21:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C0B10E507
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702330713; x=1733866713;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kKsFEykA3/N6FJnv9Ijf8fCD/PMwPjL8wh9aRLD3Oa4=;
 b=NkPxEyT0I1+KcqJIp4kLslQ3Dwk5YVu0Gw98TiXgjjOwBiVqKzmiXiln
 umUH2TzMDWfl12NPSEHTNt8HZkDtlBOb2/k3MAsnFzYnSrLFnwvGIRUMJ
 cw3okBH3Z2Qd6VoUfdPyL9q9N9xbvKUGc9O/JPot5CBhRdt6s5c0IUx0A
 4w2N/ZVAbA/88akRM1fSYbzKCmz/zWv4gIXdVJSmfq83fRLwr1ILnZDJq
 yaw2w+BHTbGRVPx2e1cflv7OoxkTDZrp3k5FqaiC37a2+hgUpCofclcOF
 e4tOQHVkNhsXv21SRHlxAV71ET4QtQBmwrj1IQ7pYc0kH41ronMsSVzaV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="379712279"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="379712279"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:38:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766547075"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="766547075"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 13:38:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Dec 2023 23:38:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/dmc: Print out the DMC mmio register list at fw
 load time
Date: Mon, 11 Dec 2023 23:37:50 +0200
Message-ID: <20231211213750.27109-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

To help with debugging print out the mmio list contained in the DMC
firmware. Also highlight the event registers, and whether we're going
to disable them or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0722d322ec63..85759e1ed146 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -432,6 +432,16 @@ static bool is_dmc_evt_ctl_reg(struct drm_i915_private *i915,
 	return offset >= start && offset < end;
 }
 
+static bool is_dmc_evt_htp_reg(struct drm_i915_private *i915,
+			       enum intel_dmc_id dmc_id, i915_reg_t reg)
+{
+	u32 offset = i915_mmio_reg_offset(reg);
+	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(i915, dmc_id, 0));
+	u32 end = i915_mmio_reg_offset(DMC_EVT_HTP(i915, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
+
+	return offset >= start && offset < end;
+}
+
 static bool disable_dmc_evt(struct drm_i915_private *i915,
 			    enum intel_dmc_id dmc_id,
 			    i915_reg_t reg, u32 data)
@@ -713,9 +723,17 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		return 0;
 	}
 
+	drm_dbg_kms(&i915->drm, "DMC %d:\n", dmc_id);
 	for (i = 0; i < mmio_count; i++) {
 		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
 		dmc_info->mmiodata[i] = mmiodata[i];
+
+		drm_dbg_kms(&i915->drm, " mmio[%d]: 0x%x = 0x%x%s%s\n",
+			    i, mmioaddr[i], mmiodata[i],
+			    is_dmc_evt_ctl_reg(i915, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_CTL)" :
+			    is_dmc_evt_htp_reg(i915, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",
+			    disable_dmc_evt(i915, dmc_id, dmc_info->mmioaddr[i],
+					    dmc_info->mmiodata[i]) ? " (disabling)" : "");
 	}
 	dmc_info->mmio_count = mmio_count;
 	dmc_info->start_mmioaddr = start_mmioaddr;
-- 
2.41.0

