Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79636B1BF09
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 05:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C5B10E2DA;
	Wed,  6 Aug 2025 03:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LoyJsRzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FCD810E2DA;
 Wed,  6 Aug 2025 03:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754449747; x=1785985747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FRL+EyOpJJXEYEnkxMeD6Tb+buwx+q628c0XalrEXIo=;
 b=LoyJsRzV6GPuMtUT/edTSbnKEJgucN1P+c9+04Zc+BmteYXaMhJYOPtX
 auCt23vazk3cC6lGoMNWwfX89siT/HTtG+TfSEj40bL9hx/LI7BUZBmBZ
 K8GsV/8pIg5JnpO+12iumF2cgy+Qu1XaoLDLKz1KVPQebmeuN9lL7WLxf
 XqC6eeGfkCov+SWeAABZ+TDY9FIrnNv+j1kuPGYC48x3aan3hoki95IVU
 dx9lGI2Gotha5/qJiLORlXRCtdfUBOv+qNgToiR5MZ1RIlarwfH/M+UWX
 dYMVeBUSscNTsPBm1iC0mJRYSbDV9ikZOFj4vu6EAq7yuirbQibHQDEH8 Q==;
X-CSE-ConnectionGUID: eknHzkKaTMSFkuvuDtv6Xg==
X-CSE-MsgGUID: njZeoObOREqlklANCINwnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="68210208"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68210208"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 20:09:06 -0700
X-CSE-ConnectionGUID: RAzRv6OSROmIuBW2meppaA==
X-CSE-MsgGUID: kJp66pJnSWy1avOOCG8V7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="168911292"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 05 Aug 2025 20:09:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: nemesa.garg@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/scaler: Fix WA_14011503117
Date: Wed,  6 Aug 2025 08:38:56 +0530
Message-Id: <20250806030856.3514127-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

This introduces and uses a variable id which is just uninitialized.
What really needs to be used is the scaler_id.

Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 1374fa94ff5c..cd7ebbeb9508 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -959,11 +959,12 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
-	int id;
 
 	if (!scaler_state && scaler_state->scaler_id == -1)
 		return;
 
-	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
+	intel_de_write_fw(display,
+			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state->scaler_id),
+			  1);
 	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
 }
-- 
2.34.1

