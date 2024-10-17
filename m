Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4573F9A1D0F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B5C10E7BF;
	Thu, 17 Oct 2024 08:21:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NmXzH9WG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758EC10E7C9;
 Thu, 17 Oct 2024 08:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153311; x=1760689311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NrOE5Mh0T2MzThq4c5aoDebuHKgGbuRobZTvctvnfD4=;
 b=NmXzH9WGJ2nNW1VROWJCU7fJlha7nlYyKTETmVzfebGAKcnEUGzENnYS
 NHxgRICcpMUoV3squhAyCw6lUSmvR9aiAIcSD/8yh+8zE7ZiomfRnNDpk
 RdOqcCpCrpTJFUIUtRjkfuOnwCkx2KaUx6SL3ShSfgJtXwBSX+6uuXO47
 SirNWKURQhNnOEdF0A5igJbjgZVRMdqzaxw2624jZG+o2tXu1QfxTLdbp
 xgPBfNYGxjpPk4WFwJWb5uCGNnOWMSpmKTig6CXPshgbw97M2JgROezUV
 eN65maomY3sem1eX+D6rOLLdHEHmah8XNLPxxJ3x5S/w6VsCq/Bj5sH8C Q==;
X-CSE-ConnectionGUID: WmIYnPuqRGmMD5VGiAXo2Q==
X-CSE-MsgGUID: 1lJVlmvTSG6NRLQxXQ3GiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724889"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724889"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:51 -0700
X-CSE-ConnectionGUID: Patavu7STEi4P76GD1oaNw==
X-CSE-MsgGUID: AJ9hLbL0TDW/7XXlp3a0qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086271"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 09/10] drm/i915/dsc: Account for Odd pixel removal
Date: Thu, 17 Oct 2024 13:53:47 +0530
Message-ID: <20241017082348.3413727-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
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
index df5285d3e4b2..c41be2da4df5 100644
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

