Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104D68A49FD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CB41122BA;
	Mon, 15 Apr 2024 08:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zekm+CHT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3075F10F9E9;
 Mon, 15 Apr 2024 08:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168843; x=1744704843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Y3C3FX8MB/kAdXrV30QFY/0qbNF7IFd78Cax7VMtDY=;
 b=Zekm+CHTXIKxoMUBuPrNb15GGVrY5CfUNsvKsXZaeR/IUHfugU0JKeLt
 xYpLqZKQCxS56kFVFx4BUNPeikhDpNgX4NtIz+cqx0RzaPjW/WRFq+sbK
 CRH+YHrNH5f3iKmIta7gqzJ0Q428ZqqENAXMGOUObjSf9W9h8v3/GM4v3
 hS8f/OKTr0+hfMR3N7Rnh7qqRa7h960eJUNXOc5OehnQGOjuB3m5grFyr
 keYKqNr28GNno/lEq75qZxDOrjnSffvujVRGNhbxa7EVyxBMIs3Qb0Ga3
 bt2pBjgsTncUaL8ioiuKmK7nKe3DoiFGZBSitMBXGH8Fpxes6K0Lx87wD Q==;
X-CSE-ConnectionGUID: y8JSWILgRhKIB40QPjHtbQ==
X-CSE-MsgGUID: riiM+A+2SjOAUFiPsLb2bw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096336"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096336"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:03 -0700
X-CSE-ConnectionGUID: OCvNEkbKR8ewoM3lBACP8g==
X-CSE-MsgGUID: Okk30dX2SzaiQ0cSBXGS9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400179"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:01 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 03/21] drm/i915/bmg: Define IS_BATTLEMAGE macro
Date: Mon, 15 Apr 2024 13:44:05 +0530
Message-Id: <20240415081423.495834-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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
2.25.1

