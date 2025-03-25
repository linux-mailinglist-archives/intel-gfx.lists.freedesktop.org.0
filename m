Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A36F1A6E854
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 03:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAEF310E2F7;
	Tue, 25 Mar 2025 02:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S/5eB0E4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C9A10E111;
 Tue, 25 Mar 2025 02:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742869754; x=1774405754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AcDzmjPcd2Ww7YVsW38qJIBqQ4BaLuw1uvBkpetYYRs=;
 b=S/5eB0E4GdNF5+7Cj1WRRsdtjPzS4shUIUu791pQ02YZhydYMT44dWwd
 fjDjIs3SEfrkU5qBdsUZV6fM//WnqO6LSE1hgEEMGFue9isIOH16o1MWs
 NdnaJtXsud8Cl0C4fJVckI4w8BnUOuScNmogiubw8huCYQN9E9+pbIOSw
 Wxll5e5o/2xN2Lc7uWvE4GAQZjwM9JRo80CU+ox5yd1XvCxGJBgKJPT0E
 WfhvXRwOr5y23nmKF0omoub5ClhxddubBnum8hCGK5O5EebMXOqBGHGw+
 uzEwpwYdxrxU9K50eOXPITXl0UKoQfF6sb+OR+rv4fMPsYhNjdeh0pwwk Q==;
X-CSE-ConnectionGUID: 2N+rYqZXTuyO/EQMPSwofA==
X-CSE-MsgGUID: YLgVK0BdRyeEZzj5H1WhTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44022949"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44022949"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 19:29:08 -0700
X-CSE-ConnectionGUID: wLMoI2xWRl+1ZNnNVberzg==
X-CSE-MsgGUID: LFoHMuzuTA+ttyipllRWjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124034428"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 19:29:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 1/2] drm/i915/dram: Add missing INTEL_DRAM str conversions
Date: Mon, 24 Mar 2025 19:28:41 -0700
Message-ID: <20250324-dram-type-v1-1-bf60ef33ac01@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
References: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-c25d1
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

Some new dram types were added without adding the corresponding string
conversion, probably because it's not being used by recent platforms.
Add them, together with a BUILD_BUG_ON() to ensure it keeps in sync, in
preparation to make use of them in recent platforms.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c | 6 ++++++
 drivers/gpu/drm/xe/xe_device_types.h  | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 54538b6f85df5..236c48d282e47 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -306,6 +306,7 @@ struct drm_i915_private {
 			INTEL_DRAM_LPDDR5,
 			INTEL_DRAM_GDDR,
 			INTEL_DRAM_GDDR_ECC,
+			__INTEL_DRAM_TYPE_MAX,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index f60eedb0e92cf..39d8520ee621d 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -33,8 +33,14 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
 		DRAM_TYPE_STR(DDR4),
 		DRAM_TYPE_STR(LPDDR3),
 		DRAM_TYPE_STR(LPDDR4),
+		DRAM_TYPE_STR(DDR5),
+		DRAM_TYPE_STR(LPDDR5),
+		DRAM_TYPE_STR(GDDR),
+		DRAM_TYPE_STR(GDDR_ECC),
 	};
 
+	BUILD_BUG_ON(ARRAY_SIZE(str) != __INTEL_DRAM_TYPE_MAX);
+
 	if (type >= ARRAY_SIZE(str))
 		type = INTEL_DRAM_UNKNOWN;
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 20239d6a2e985..fa9bc0b7d92e2 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -588,6 +588,7 @@ struct xe_device {
 			INTEL_DRAM_LPDDR5,
 			INTEL_DRAM_GDDR,
 			INTEL_DRAM_GDDR_ECC,
+			__INTEL_DRAM_TYPE_MAX,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;

-- 
2.49.0

