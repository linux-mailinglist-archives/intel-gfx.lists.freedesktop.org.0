Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE845896D43
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFB8112641;
	Wed,  3 Apr 2024 10:52:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcnfFa6d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C8610E121;
 Wed,  3 Apr 2024 10:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141545; x=1743677545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FSXs20PJBJyOLgqakwjPbhb+TaNU4Tq3YC8JVaxUI0A=;
 b=fcnfFa6dCcAGQ5LQIQEplAro8fwqmQWlXBbslmc7HsBl+STf6pdbd+mo
 iCK1uxQU9YUOyV+IT5gPizoawPsL8tPQk/wgUp2neIO267sgHmLaUszOY
 TLuw0CCGLd+o8jtwRU7/mjdGuVlyNHkDrm7eKUr5Wt6D94oIZW4xMCnOa
 CXRJYSWaZWf/J4g33hKCQxIIXr485QOG5gdeTMDD3gpuOCVBr5q7WvOjq
 VkCk+fSp26CgxYyBz6qjB7waKjMm42ziDWzlIJuaOg7mxZbO//20HwARA
 CNg4169w/WOkl94S30p8ZUbvTmDg86CBj+uVZGbaBD1mMALl9gV7UeH+t Q==;
X-CSE-ConnectionGUID: mORvFTE0TEKyGmYUMeC66g==
X-CSE-MsgGUID: xLdL7FhxQYq0zRsAVJcczw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212255"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212255"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:57 -0700
X-CSE-ConnectionGUID: KAZ942raQiKlXYJp+rSE1Q==
X-CSE-MsgGUID: TtP/CuQ7RJKAlhtClAzBEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493429"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:55 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 21/25] drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
Date: Wed,  3 Apr 2024 16:21:19 +0530
Message-Id: <20240403105123.1327669-22-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

Max supported speed by xe2hpd is UHBR13.5. Limit the max DP source rate
to it.

Bspec: 67066

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b393ddbb7b35..d9d37f4971dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -466,6 +466,9 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
 	if (intel_encoder_is_c10phy(encoder))
 		return 810000;
 
+	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
+		return 1350000;
+
 	return 2000000;
 }
 
-- 
2.25.1

