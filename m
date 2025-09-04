Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2860DB43150
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 06:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB7C10E96B;
	Thu,  4 Sep 2025 04:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nj6IhSMW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6521810E056;
 Thu,  4 Sep 2025 04:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756961292; x=1788497292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r5JVBV1WuLIbFSoE5MKTmJHxiuaLWEzQuGgLRlgqtAo=;
 b=nj6IhSMW256Bzib4FwUfdk7za8VEYtvjHsztR1/ob8ETWmkEQt7wbvhn
 YoWT/0LME950Ws8lawQ+xmLUZD3u5f+2+vHGrbbriILClswuNDEqRo0OV
 uG6br+5bB9R78LC/ZUx82AyIquZLRRL/9lwv1P7RZgyRCM3jkqhPHqBmS
 fLaw4fuq8q/jUKFXpCWIYjt+63IKWtzu5zcaea+9jciF/thov3SljHHgg
 Spxj72Q5PSqF4vwPbr4Wyaz3WvRPLD1t0QZNkRS3tLN7aBEM482HNkmTP
 44SHbSLdy1YGQqf9EX4VrdKWynJeQR5fP4NG24arbm8uUREyKOKqsxS6U A==;
X-CSE-ConnectionGUID: gIJlM84kTI2wzefl0ifnyA==
X-CSE-MsgGUID: +xB2BCT8RDeCXgYl0dcL7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="61923087"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="61923087"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:48:11 -0700
X-CSE-ConnectionGUID: KPjuUtV3QGuX2J1HB06Cmw==
X-CSE-MsgGUID: YLm3qbm4Qnqu2WAxqKphkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171334053"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 03 Sep 2025 21:48:10 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/backlight: Disable backlight when using luminance
 control
Date: Thu,  4 Sep 2025 10:18:04 +0530
Message-Id: <20250904044804.948391-1-suraj.kandpal@intel.com>
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

We just return when using luminance control instead we should be
calling the disable helper to get everything cleaned up properly
by default.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 12084a542fc5..0dc45db56b82 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -508,9 +508,6 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 
-	if (panel->backlight.edp.vesa.luminance_control_support)
-		return;
-
 	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
 
 	if (!panel->backlight.edp.vesa.info.aux_enable)
-- 
2.34.1

