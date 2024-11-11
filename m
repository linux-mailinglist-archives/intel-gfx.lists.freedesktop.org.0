Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A2F9C3C13
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F403310E46C;
	Mon, 11 Nov 2024 10:34:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lF58N256";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D508510E472;
 Mon, 11 Nov 2024 10:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321282; x=1762857282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JM/vqWFGvhfxJyCapAa8SbNQOta4sqZbRtgYKHG45tU=;
 b=lF58N256nBe8n+Q1q7cq0lP+zWWK6MqV/CaEA6HGE9Ga7tab0A9cp76j
 P+3bDgjqG8Cj16AT4MSH+U76UfAOjP9qh36aAwq+SFMSLYqTLgopmSoC5
 Dg921gvqLLH6v8BF9BrwxyFibN/XuXuMcXBlIYhN5P+ahJrWaJSP93KI9
 IxsRcmuLstlA6l/e8wLiabkrHaXwGni4V8jv3TYafeLXus67Xz8bxOUcl
 Yk/GpVqrk6bIVkDRlcjMz38XBKVd6aJVH9ZDQ6SzrBxs0EjQQSMHs9ewh
 6ZYGFiFCcBlV9cFjMfgvAeVrH/5S4P9s1Hfv9erm0fSXnUda11gC79qKM w==;
X-CSE-ConnectionGUID: fJFrXLCTRI+YVQUjIRrVGg==
X-CSE-MsgGUID: 4nFFjqv9RpmZKupjUX8vUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35058755"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35058755"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:41 -0800
X-CSE-ConnectionGUID: YtVa2hwBQJSi7YDP6+p5Kw==
X-CSE-MsgGUID: absDxCoPQa6SOV9Oxs2ZBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86805152"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v3 06/15] drm/i915/display: convert HAS_GMBUS_BURST_READ() to
 struct intel_display
Date: Mon, 11 Nov 2024 12:33:55 +0200
Message-Id: <34dfafeccf6f8ddd5437c79e18978151bfd96c24.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Convert HAS_GMBUS_BURST_READ() to struct intel_display. Do minimal
drive-by conversions to struct intel_display in the callers while at it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c          | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 2eae10900d0d..0c55dbd4caa8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -162,7 +162,7 @@ struct intel_display_platforms {
 #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
 #define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
 #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
-#define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))
+#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index e3d938c7f83e..807cf606e7a8 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -496,14 +496,13 @@ static int
 gmbus_xfer_read(struct intel_display *display, struct i2c_msg *msg,
 		u32 gmbus0_reg, u32 gmbus1_index)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 *buf = msg->buf;
 	unsigned int rx_size = msg->len;
 	unsigned int len;
 	int ret;
 
 	do {
-		if (HAS_GMBUS_BURST_READ(i915))
+		if (HAS_GMBUS_BURST_READ(display))
 			len = min(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
 		else
 			len = min(rx_size, gmbus_max_xfer_size(display));
-- 
2.39.5

