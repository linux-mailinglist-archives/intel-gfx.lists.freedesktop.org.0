Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662788955CA
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA56F10FD44;
	Tue,  2 Apr 2024 13:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKN1I7RD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F80F10FD44
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065927; x=1743601927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x95UAUf+AYChtid+8rgSdpZmyKaWyWfe4x1j70qAnuY=;
 b=PKN1I7RDU0yS0DwBbMc8sobQ44wYUJsM6VXQYJ69gNmNX8qBk71jS1Y2
 2u/9qdIo/GZFEuQ+trf9mBM23S4oThsfQbBGdEpRaBrJXHe+RsXQt1QEY
 fJkt8A6A6yJ89THFY/cPzi64Z1vbcfDxFFaEJBMZWasPwfAe+PlfyOkj8
 AEF9DGN12EyX0mTYUb7fvoIGX5A0FTUaHggv4iXAWadogMpEId+LlyFhy
 vzXkN118sNcPCTL5XUb8J4qzNWjYQEl70Vi5pBzvSA7BHGdNg8qyq5iTP
 HOK9FPu/qqm7Dz5hi/VtvyRB2DcqXfJhwP7OUBorAU2pU2epePz6BHVVE Q==;
X-CSE-ConnectionGUID: fYjRTqi8TPmj1KqUCaNJVA==
X-CSE-MsgGUID: D2ffH4QKRcSALYOzihq5UQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804662"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804662"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789397"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:52:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:52:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 5/7] drm/i915/mst: Limit MST+DSC to TGL+
Date: Tue,  2 Apr 2024 16:51:46 +0300
Message-ID: <20240402135148.23011-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
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

The MST code currently assumes that glk+ already supports MST+DSC,
which is incorrect. We need to check for TGL+ actually. ICL does
support SST+DSC, but supposedly it can't do MST+FEC which will
also rule MST+DSC.

Note that a straight TGL+ check doesn't work here because DSC
support can get fused out, so we do need to also check 'has_dsc'.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c         | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fe4268813786..9b1bce2624b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -47,6 +47,7 @@ struct drm_printer;
 #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
 #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
 #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
+#define HAS_DSC_MST(__i915)		(DISPLAY_VER(__i915) >= 12 && HAS_DSC(__i915))
 #define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
 #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
 #define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1405ab5e3acc..6497542e3e65 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1349,7 +1349,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 10 &&
+	if (HAS_DSC_MST(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
 		/*
 		 * TBD pass the connector BPC,
-- 
2.43.2

