Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCBC7A2517
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35E110E674;
	Fri, 15 Sep 2023 17:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47E910E664;
 Fri, 15 Sep 2023 17:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800010; x=1726336010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fi3hzHbLNy9uyMNC4yqhY4fa3f074Xiyuaw6zxNyRVY=;
 b=HVct6qtb/MH7UvMwSEtk6ZZBIBr0LsBXxB0e63pX0wY3wPpk04TWO4Gr
 Y7vG+aneh9Uq34iTQYixx+hxRUgL+UcpluJ0ZeUwHf/4lQ7ekpZ3m8/Vs
 GCCvTKFLfqaBa8mtj7gbD46mZTqZMpwNxaSEBaXYduj1/WCpjpTyIuR6Q
 eTi84F4rKFzA6mvi8uVEPolKXZUA9nBr34lMo/1F1nvvWcBGlTHxLbHQY
 1pEAaqDrifs5wI7zs+HhglOAIyzQO2Hml9d5FdyNYYglR6wo3JjqDDZPe
 xDq9dVbCib+Gib6wpaYe4p7vTILgHwdkbUFdhwOfBaKxeTV48hnCJ1scI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779263"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779263"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818237"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818237"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:24 -0700
Message-Id: <20230915174651.1928176-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/30] drm/i915/xe2lpd: FBC is now supported
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
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
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
index 5d6d771791df..5f14f9e8ca88 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -761,6 +761,10 @@ static const struct intel_display_device_info xe_lpdp_display = {
 
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

