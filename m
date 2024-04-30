Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 840CF8B7E80
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F39C112D7C;
	Tue, 30 Apr 2024 17:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QBOvh2Or";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075D4112D77;
 Tue, 30 Apr 2024 17:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4tsmupxqeO8Z6MFrSKag5+FVL7bcRwU48HtTLaw3XpI=;
 b=QBOvh2OrU9hwxJ7xf2lGjnD5BFXcsltWtmznrXz97dDE/BNxurqoYLyz
 JelLUBayfZ5WOsb7Y71CP2dCVT0elHahWbzPda7c0hrwZEc9ukxZR9M/z
 fMgn1wiaMkxe3OqkKjllsJz8FezQw8++KVWX/Z7PQBiQ4xB8us6rBzuIM
 f8qPGuNU/JcXjsAjBto//mAE61J4wPiVF6oUitDQOBCtQ2pwTQh+RNXWI
 w8jk+4MoT8p/I3BLU0PC8LnmmocIs6INaxCWvFPa9LiYkxWI7ZPYGOtE+
 wh2ebh/0xqLz3UUjL6K30MRpym1fFA6naQkaXQAVmlHKYIGhnOeMOQaj0 Q==;
X-CSE-ConnectionGUID: PpMEblgdRQK3peUA7TY0nQ==
X-CSE-MsgGUID: XCKwxffGQF6/RsQU8ZhkTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741984"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741984"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
X-CSE-ConnectionGUID: jgu950ZVQ12+61/YJxaOxg==
X-CSE-MsgGUID: mlgP1bJLSG2IL7snCB56jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617816"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 02/19] drm/i915/bmg: Define IS_BATTLEMAGE macro
Date: Tue, 30 Apr 2024 10:28:33 -0700
Message-Id: <20240430172850.1881525-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Display code uses IS_BATTLEMAGE macro but the platform support doesn't
exist in i915. So fake IS_BATTLEMAGE macro defined to enable building
i915 code.  We should make sure the macro parameter is used in the
always-false expression so that we don't run into "unused variable"
warnings from i915 builds if the IS_BATTLEMAGE() check is the only place
the i915 pointer gets used in a function.

While we're at it, also update the IS_LUNARLAKE macro to include the
parameter in the false expression for consistency.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ee0d7d5f135d..481ddce038b2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -535,7 +535,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
-#define IS_LUNARLAKE(i915) 0
+/*
+ * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
+ * so we need to define these even on platforms that the i915 base driver
+ * doesn't support.  Ensure the parameter is used in the definition to
+ * avoid 'unused variable' warnings when compiling the shared display code
+ * for i915.
+ */
+#define IS_LUNARLAKE(i915) (0 && i915)
+#define IS_BATTLEMAGE(i915)  (0 && i915)
 
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
-- 
2.34.1

