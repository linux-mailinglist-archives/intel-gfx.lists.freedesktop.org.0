Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E91E797494
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804FE10E7FF;
	Thu,  7 Sep 2023 15:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DF110E80A;
 Thu,  7 Sep 2023 15:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101204; x=1725637204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qr75QXiJySsYD5lPCG7q+IhNzJ6awAxswl0P2jIhVVM=;
 b=FjE90h1bW4KEgnRtmYoh85Fdtl1XlcCjkjbcmvIIavqea1QZ5lDA06sl
 /oWB5XuH7jAP6QIAfaKkEtHGTnrH7aFVcYWZWz2H6h3fqatqLOg9IH3qk
 jTT7s08Iz/bWGltpSYt205LN/YjM0lA52sjN7sDUy/3gqdCBr5iLFO4tj
 xJSBw78QDx6P2YpWRBF47/vFjU8IZfykTTwD3zgLG0Of+oPJlFjDuWV4t
 xKRLm/pjjJ7s47kgCo8GH/yneGvF19VuzFdllsYXhPJNiKT3Ka2q9A6yg
 xCEjo0yWrn2g/Fdtybt6s/U0rtb+57b9y4FPIyhMUOPA+HyGQtOZN+Myg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445752"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445752"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930229"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930229"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:33 -0700
Message-Id: <20230907153757.2249452-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/27] drm/i915/xe2lpd: FBC is now supported
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
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
 drivers/gpu/drm/i915/display/intel_fbc.h            | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index feafb0f94b06..652e35ed7789 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -772,6 +772,9 @@ static const struct intel_display_device_info xe2_lpd_display = {
 	XE_LPDP_FEATURES,
 
 	.__runtime_defaults.ip.ver = 20,
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

