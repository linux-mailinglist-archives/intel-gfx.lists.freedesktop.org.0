Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5527D448C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29EE510E2B2;
	Tue, 24 Oct 2023 01:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9987A10E2AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109749; x=1729645749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y74i2OGuPU8qa9dtkqV+dHSlEK3jrM0KirOKzfr7V7o=;
 b=FmZSql7k1s0EmqJ1YnVXO2GMbaXL+Q5fNpY67OHBqEesCq2LWv5LedM5
 +VAyWSMcPm4nB5Xh4Ocn9BOch77rITQV2dHSjtvQa+ctwm1KxRtDITB5z
 DKiMIrH15r2jQcC4YG5w6lpTOsdczPgCmUHFlC6ISyBNO3S9SZ7xXj5EE
 8wzWn7Duh9HqA3qQH7WiSUA+1IFzt+Z5rZDyuz1mFpUL0IUvKfYyoHgMI
 xEsKaY8t5ppL5a718bNTmFcAZDlZAQuiIkJNTVY39NFURXd71bhu8oREk
 x34M/18pVoSH2UWrpIKE3Lg5/VEw7pbDUxP4T6yaEs2J32hbi0TU10gTP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304347"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304347"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870022"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870022"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:03 +0300
Message-Id: <20231024010925.3949910-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/29] drm/dp_mst: Add HBLANK expansion quirk
 for Synaptics MST hubs
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

Add a quirk for Synaptics MST hubs, which require a workaround - at leat
on i915 - for some modes, on which the hub applies HBLANK expansion.
These modes will only work by enabling DSC decompression for them, a
follow-up patch will do this in i915.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
 include/drm/display/drm_dp_helper.h     | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index f3680f4e69708..e5d7970a9ddd0 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -2245,6 +2245,8 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
 	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
 	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
 	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
+	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */
+	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },
 	/* Apple MacBookPro 2017 15 inch eDP Retina panel reports too low DP_MAX_LINK_RATE */
 	{ OUI(0x00, 0x10, 0xfa), DEVICE_ID(101, 68, 21, 101, 98, 97), false, BIT(DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS) },
 };
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 3d74b2cec72fd..351f38d5cc351 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -632,6 +632,13 @@ enum drm_dp_quirk {
 	 * the DP_MAX_LINK_RATE register reporting a lower max multiplier.
 	 */
 	DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS,
+	/**
+	 * @DP_DPCD_QUIRK_HBLANK_EXPANSION_NEEDS_DSC:
+	 *
+	 * The device applies HBLANK expansion for some modes, but this
+	 * requires enabling DSC.
+	 */
+	DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC,
 };
 
 /**
-- 
2.39.2

