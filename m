Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 584D999C290
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE36610E3C5;
	Mon, 14 Oct 2024 08:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GsJv0yZw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE0410E3C2;
 Mon, 14 Oct 2024 08:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893283; x=1760429283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Guxj9ounDpI3R5CZ1OkpCqwUTn51VDTavEqES1tJGrw=;
 b=GsJv0yZwYJJgyikSNCWtEajvI3hC/B+NZa9Bt2ErkbyTunFk9uKVQNdY
 77fPjWJSDNqAbPPhRCy9Bxm8XqjmL+xvhX8m9qz381+IJvsvMxvSAWDca
 4wBcG9V7YfVJk9JTUzUb2hDfDU9b/KpRpcmHq9w1JeocQf873wN/kvv2n
 GY5mDD6pR/xyNJXnklkViamvEvMb1VOKa0sNnZK+O4d7c+Ucs+lcAoZmr
 Es0PlGiL1cOcDVL9wRQiX8eCr7Zj50SIDQfkGa8uHn4DWxiNFUU4f4UBm
 WWzTl1jrvh78nd6/x4jvABOLvs1IAa3JAKxlN0hztL+YN/TzQf3eo6sLH w==;
X-CSE-ConnectionGUID: XDZb3qx3TVyANjVfOBoxtQ==
X-CSE-MsgGUID: bK2JZQIjSzWkSu2OY17cTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784445"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784445"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:03 -0700
X-CSE-ConnectionGUID: OjZwj/8OSImknW8dHA5xIQ==
X-CSE-MsgGUID: qdYKWU/wQSCwmG7Kmu1WzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834913"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915/dsc: Account for Odd pixel removal
Date: Mon, 14 Oct 2024 13:39:59 +0530
Message-ID: <20241014081000.2844245-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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

With 3 DSC engines we can support 12 slices. With ultra joiner
usecase while dividing the width into 12 slices, we might
end up having odd number of pixels per pipe.
As per Bspec, pipe src size should be even, so an extra pixel is added
in each pipe. For Pipe A and C the odd pixel is added at the end of
pipe and for Pipe B and D it is added at the beginning of the pipe.
This extra pixel needs to be dropped in Splitter hardware.
So account for odd pixel removal while programming DSS CTL.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index f58dac630bb8..d2d712545450 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -768,6 +768,26 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+/*
+ * With 12 slices, there can be a case where the src width is odd.
+ * As per Bspec the src width should be even, so an extra Odd Pixel is
+ * programmed in Pipe in such cases. This extra pixel needs to be
+ * dropped in Splitter HW.
+ */
+static
+bool intel_dsc_need_odd_pixel_removal(const struct intel_crtc_state *crtc_state)
+{
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+
+	if (intel_crtc_num_joined_pipes(crtc_state) != 4)
+		return false;
+
+	if ((pipe_src_w + crtc_state->dsc.pixel_replication_count) % 4)
+		return true;
+
+	return false;
+}
+
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -806,6 +826,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 
+	if (intel_dsc_need_odd_pixel_removal(crtc_state)) {
+		dss_ctl2_val |= ODD_PIXEL_REMOVAL;
+		if (crtc->pipe == PIPE_A || crtc->pipe == PIPE_C)
+			dss_ctl2_val |= ODD_PIXEL_REMOVAL_CONFIG_EOL;
+	}
+
 	if (crtc_state->dsc.pixel_replication_count)
 		dss_ctl3_val = DSC_PIXEL_REPLICATION(crtc_state->dsc.pixel_replication_count);
 
-- 
2.45.2

