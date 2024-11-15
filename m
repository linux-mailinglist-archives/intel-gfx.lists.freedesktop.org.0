Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C83FD9CF0E1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 17:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C7E10E896;
	Fri, 15 Nov 2024 16:01:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDcOS7/7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D418610E895;
 Fri, 15 Nov 2024 16:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686492; x=1763222492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6iJFiR9p/HrjgFXkXnks++/sgGTDjsHgouZLDIkIFsU=;
 b=MDcOS7/7NEfRDWCj8wmmLVBP5hl8uRx0MdkyRXV2spFJYekFl3MDPMZA
 QDGCysKZuu/z4gOyrY82hYJC80ZacIRO/nvDo/UPOEUE81+XZNl4MbSb0
 FoxYtxXRDeROgPR9RAEjnCMWBAYKNJAHHZ6cttGBqaxSy7jpUGUUI97LF
 KvFysJT0QSx1LnpNhFuUF5PFd3bl5xLxYDT7RZWmcdsXV0i308XBGcDTl
 mmzNYcXov2WXcef5qWUuapnEY83N5UfHWVZW1fORgVkKFHorJthopDY5R
 j3lumavl3eclDUzzqxF8AS011ye7qLW9zedQmRxlgMECXvebzbNW6cLjn Q==;
X-CSE-ConnectionGUID: CLyuHhJOSvW5yY2byTxhGQ==
X-CSE-MsgGUID: 8j846vwcRamDBxXGx+fKaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31456788"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31456788"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:01:32 -0800
X-CSE-ConnectionGUID: JAPx/FXuSZGXiTgtKEe0WQ==
X-CSE-MsgGUID: K2WLFkCQQ6OFuF7NScL2GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88760639"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Nov 2024 08:01:30 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Date: Fri, 15 Nov 2024 21:31:13 +0530
Message-Id: <20241115160116.1436521-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241115160116.1436521-1-suraj.kandpal@intel.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
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

Rename the enable_dpkgc variable to make it more clear what it
represents which is that if we are in fixed refresh rate or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6d5f64ed52ed..9ce3b5580df4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2855,7 +2855,8 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
+skl_program_dpkgc_latency(struct drm_i915_private *i915,
+			  bool fixed_refresh_rate)
 {
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;
 	u32 clear, val;
@@ -2863,7 +2864,7 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 	if (DISPLAY_VER(i915) < 20)
 		return;
 
-	if (enable_dpkgc) {
+	if (fixed_refresh_rate) {
 		max_latency = skl_watermark_max_latency(i915, 1);
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
-- 
2.34.1

