Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D86812F5E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE6610E936;
	Thu, 14 Dec 2023 11:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0115710E804
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554542; x=1734090542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=osJ+fcw0ekh6Don5zFWiStJ3ywzAlZWzFHvOv0gE+yo=;
 b=l7I8IEldyEzP7/2Pgauy81AQbosD47I8HCuFyaAbjCVcJKpVDUbeNgp1
 X4zPKKIJyEHnsR+HEFTDx+J0hssTerCA4XZ2h+WUxlpL72oAdOxSE0/cf
 grL4boBcf9ZRNVH8IC87IE+LKsOvGQWXW4rteBBLx1ojbRHrH+TceRUOF
 w5vKVEWDOMdchJc3TiAct6MA4pk/i5qzyhnSho0+hlZLwHblmJJfSGEqc
 TBTa20Y/ihFL2v8ifx402qFwtVGrcJd1bvdO2eIxtupOhCg9Z49tPfeys
 wNCvjs2cCcbHwTdQAjI2JWAUCpiSSRcYQgvmEZVJdhQr2UNip0LY8MP6u Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658699"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658699"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:49:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678897"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678897"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:49:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915/display: Take care of VSC select field in video
 dip ctl register
Date: Thu, 14 Dec 2023 13:48:38 +0200
Message-Id: <20231214114838.1113648-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
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

We need to configure VSC Select field in video dip ctl if we want to have
e.g. colorimetry date in our VSC SDP.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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

