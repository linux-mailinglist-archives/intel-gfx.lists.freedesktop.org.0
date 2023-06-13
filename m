Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 960CF72EE4C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D15210E3E5;
	Tue, 13 Jun 2023 21:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DC010E3E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686693246; x=1718229246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XpGGF9xNIf9uEQLLYPMEEvTU35BV6sEa39Z+TtgmT4g=;
 b=OV9ALBrQ2V1a2OG2RfkzENUsW3Xnxfy+sOIZbqtTauAYcl5gSPYrpMZR
 AOBuMXuW7UDl73FzY9jsRZRPi/MQ6FqjguQinFu/hl+Mu1FXivsCyppzW
 FvFLmpsYeA/nGEEmqRSgt+LEVMMtXgXfrDenQw0lRaX/t7An8X/DpDZVS
 F2hJUAQHgCR+pZR7cG97nodQyiuXVneVNB52/O1pg1yVs2NlJNp5/FA5h
 2V1SLZaVeQxq10jDOHV9xEr5lnZwvx8p9WuSY+kGLx3dORpRfgI74aOCy
 NmqZ+Ps2tQqkY6ZNaXiHtG5Y+A/P4ciezTUsi1SU7Hh7kl97gaIGj/MiV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338813919"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338813919"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741604237"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741604237"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 14:52:45 -0700
Message-Id: <20230613215245.1551145-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
References: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Make intel_get_crtc_scanline use
 no trace hw reads
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

intel_get_crtc_scanline is used in the display tracing infrastructure.
Use no trace hw reads to avoid nested tracing calls.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 55f3389fa220..0b8574b29f1c 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -150,17 +150,17 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
 		 * pipe frame time stamp. The time stamp value
 		 * is sampled at every start of vertical blank.
 		 */
-		scan_prev_time = intel_de_read_fw(dev_priv,
-						  PIPE_FRMTMSTMP(crtc->pipe));
+		scan_prev_time = intel_de_read_fw_notrace(dev_priv,
+							  PIPE_FRMTMSTMP(crtc->pipe));
 
 		/*
 		 * The TIMESTAMP_CTR register has the current
 		 * time stamp value.
 		 */
-		scan_curr_time = intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
+		scan_curr_time = intel_de_read_fw_notrace(dev_priv, IVB_TIMESTAMP_CTR);
 
-		scan_post_time = intel_de_read_fw(dev_priv,
-						  PIPE_FRMTMSTMP(crtc->pipe));
+		scan_post_time = intel_de_read_fw_notrace(dev_priv,
+							  PIPE_FRMTMSTMP(crtc->pipe));
 	} while (scan_post_time != scan_prev_time);
 
 	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
@@ -217,7 +217,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
 		vtotal /= 2;
 
-	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+	position = intel_de_read_fw_notrace(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
 
 	/*
 	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
@@ -236,7 +236,8 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 
 		for (i = 0; i < 100; i++) {
 			udelay(1);
-			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+			temp = intel_de_read_fw_notrace(dev_priv, PIPEDSL(pipe)) &
+			       PIPEDSL_LINE_MASK;
 			if (temp != position) {
 				position = temp;
 				break;
-- 
2.34.1

