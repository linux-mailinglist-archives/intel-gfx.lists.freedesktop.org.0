Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3DF9A6883
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FDB10E4DA;
	Mon, 21 Oct 2024 12:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NrZpJZ/h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7269210E4DD;
 Mon, 21 Oct 2024 12:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513945; x=1761049945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3C62c2Jg30kJUc0SGSmKmo0GDvceiNoxX9rFpBg5Lf0=;
 b=NrZpJZ/hzNSAv6b/D2QW0ZDjuPzRbQolozBhVg2FJ/Q0sun2YstiZw3z
 VbSO4unSskbVDFn8wdWCbEF6foU8G0zhQj6UNltrilfXP4yYV0OZyjZSH
 XF0NsZcXA0TBGMvD8WJrcNzDkl/gEdK8BqntyTCHq5VXTUFdGSon3kkXv
 gTSXRsbKZ6tOBmx6pdR6wlUR2d/NnRp/Pkg6pjukzeIbm8TRNAvyuhIdk
 Wo0XDf7mHmcKRPs3Xk/cl17rASHYLpc3peLHM6pw0EfwWGVkpU6XuKWik
 uQRfwuQqENWsL8j3HsJZSI0Cgvq5uKGrmUKnydkhK5QHilSciLvuTXMY/ w==;
X-CSE-ConnectionGUID: d7FXaq6VSJmygPKqyW9Q8w==
X-CSE-MsgGUID: ZAgm/t3dRFWn7kGartplaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459657"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459657"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:25 -0700
X-CSE-ConnectionGUID: BzzPHuVQR56MTOApLKiuRA==
X-CSE-MsgGUID: Jm1AWrebQXmlINmMJrS7ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866123"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 16/16] drm/i915/dp: Add Check for Odd Pixel Requirement
Date: Mon, 21 Oct 2024 18:04:14 +0530
Message-ID: <20241021123414.3993899-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

Check if Odd pixel is required during DSC compute config and update
the crtc_state to track the presence of odd pixels.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 433a629c2bae..44e7069c4d27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2366,6 +2366,14 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static bool intel_dp_dsc_needs_odd_pixel(int hdisplay, int replicated_pixels, int num_pipes)
+{
+	if (!replicated_pixels || num_pipes == 1)
+		return false;
+
+	return ((hdisplay + replicated_pixels) / num_pipes) % 2;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2452,6 +2460,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						adjusted_mode->crtc_hdisplay,
 						pipe_config->dsc.slice_count,
 						pipe_config->output_format);
+	pipe_config->dsc.has_odd_pixel =
+		intel_dp_dsc_needs_odd_pixel(adjusted_mode->crtc_hdisplay,
+					     pipe_config->dsc.replicated_pixels,
+					     num_joined_pipes);
 
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-- 
2.45.2

