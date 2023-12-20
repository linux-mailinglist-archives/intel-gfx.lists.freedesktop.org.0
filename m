Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C40819CE7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1BD10E55F;
	Wed, 20 Dec 2023 10:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF4010E55A
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068603; x=1734604603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OSN2pQBPnxss1tPbPf81U73hlePGFYoWRPSoEF8oLa0=;
 b=XFXO70gqUJAwoFYRhD7xDEQIVLh+7Xe5z0uxiIYgc7zi3t67M/zO5cRg
 hqyxV7steya/grNt/HYryrsRd2J74bJe3aTF+ezqxdU+vGn270MnjmobI
 evOhHaE71stcRWgbhZnIbB5SBep5g6vQxjWWl6f0HBw6J2L1vBAK5ZGyh
 use9J/Ku40X5NSXXg0LUn/Df76JFYPNAk4pjHp/1kLwYn/YRD0P7D1Sb/
 J8VNK1A2tFvICBMqpEY3S6gce8PqLNqHkCPF03OqoX9ZjZ0G5pJ6ckJTp
 s4WW/fgczCMQI5cGPgyzgL1xdtfBCimXfCEYab9vj/SxlSecOP6MXD39a A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631998"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631998"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686339"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686339"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:41 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 7/7] drm/i915/display: Take care of VSC select field in
 video dip ctl register
Date: Wed, 20 Dec 2023 12:36:09 +0200
Message-Id: <20231220103609.1384523-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220103609.1384523-1-jouni.hogander@intel.com>
References: <20231220103609.1384523-1-jouni.hogander@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to configure VSC Select field in video dip ctl if we want to have
e.g. colorimetry date in our VSC SDP.

Reported-by: Shawn Lee <shawn.c.lee@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 39e4f5f7c817..eedef8121ff7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -523,10 +523,12 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			       0);
 
 	/* Wa_14013475917 */
-	if (IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC)
-		return;
+	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC))
+		val |= hsw_infoframe_enable(type);
+
+	if (type == DP_SDP_VSC)
+		val |= VSC_DIP_HW_DATA_SW_HEA;
 
-	val |= hsw_infoframe_enable(type);
 	intel_de_write(dev_priv, ctl_reg, val);
 	intel_de_posting_read(dev_priv, ctl_reg);
 }
-- 
2.34.1

