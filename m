Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0462179C4CE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E6B10E2A8;
	Tue, 12 Sep 2023 04:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D648610E2CA;
 Tue, 12 Sep 2023 04:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494112; x=1726030112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xk1IdxGsqcwAXTBSYgy3EvA5kFFnJNnYM72MIFP096w=;
 b=iBWfQv2RFKUZGzzIL/AneAFCEGf2O5+wVqgtyDeVOu20Id6UxhQI73bw
 sLk6IF35RX07+1Z+giH3PxjWAfm+UQaHIU6ie2fWL9ATiYU5HwgzSkR0J
 NGjVxmvnQxXBlcVPSh9stoTIkbqZKWIbRqqVx17/bCWPGsaUD6AVpGXx8
 GCaCZkI6My8dgS6ckdOOkYO/cVRz8YSC4MPk8WjZbQVZETDZbU5mRKl3u
 oTByzS+Ti5Sq3PuT2VYJblwqE7HdyCc2TEJb86Z28hmman5K9rs/XIgi8
 lOMEy8gXF42BdUKh6kifJlXmob1UWVOHTxpzFwy9xZhG1aRc5WCa6x6C3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182307"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182307"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419917"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419917"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:11 -0700
Message-Id: <20230912044837.1672060-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/29] drm/i915/xe2lpd: FBC is now supported
 on all pipes
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

FBC is no longer limited by pipe: add the defines for pipes B and C that
will be used by platforms supporting FBC on such pipes.

Bspec: 68881, 68904
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_fbc.h            | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c915c53068c3..1a2b5121833e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -762,6 +762,10 @@ static const struct intel_display_device_info xe_lpdp_display = {
 
 static const struct intel_display_device_info xe2_lpd_display = {
 	XE_LPDP_FEATURES,
+
+	.__runtime_defaults.fbc_mask =
+		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
+		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
 };
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 4adb98afe6ff..6720ec8ee8a2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -20,6 +20,8 @@ struct intel_plane_state;
 enum intel_fbc_id {
 	INTEL_FBC_A,
 	INTEL_FBC_B,
+	INTEL_FBC_C,
+	INTEL_FBC_D,
 
 	I915_MAX_FBCS,
 };
-- 
2.40.1

