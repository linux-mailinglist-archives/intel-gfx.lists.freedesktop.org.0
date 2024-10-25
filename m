Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3BF9B1072
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3DF10EB87;
	Fri, 25 Oct 2024 20:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kz8JYB2z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 452EA10EB82;
 Fri, 25 Oct 2024 20:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889268; x=1761425268;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XesO/1o7QrwCKvwdsNPPi4cprCvwoimzFaB8TNf6u0o=;
 b=kz8JYB2zAGvufebfsnJ5zYPtBPDTCjkrKxV+HA33mR275qobpxCqc6eQ
 cdADKzN+9E/VJ1jszJf2apCP6icPYo/MTQVLlPQ36zV11GeL/xR5FpgH8
 HQ40n9hj7kuPzfsyRqp+Fh9loN2WZFn6MeABp4e2hIe3qIPZ93XxwzA3L
 I3SIkQdAqgbo2/g461MYiyLV+FN0qtTy07Xw4LJtdyGh8Rp0RZ6D4I020
 6tp34E38yxz0zJO63usPwurtkyrnPrY610u36e1jBuBNm89pE+Se0u11p
 sH7Q8+jNcYBnAL60seQD3hry65WO+v8Ppk/JQKEV0tED8mTrzxEOxrYK2 w==;
X-CSE-ConnectionGUID: QUM/5VaVQ7i1UVwdyEsMJQ==
X-CSE-MsgGUID: dnQ1eKjCTayapKElrUDnSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484204"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484204"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
X-CSE-ConnectionGUID: 94N6VxUcTwCHMNxlBUARwA==
X-CSE-MsgGUID: Pi3FVDmlT0iyoqYB8omu+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057187"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 04/11] drm/i915/ptl: Define IS_PANTHERLAKE macro
Date: Fri, 25 Oct 2024 13:47:36 -0700
Message-Id: <20241025204743.211510-5-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241025204743.211510-1-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Common display code requires IS_PANTHERLAKE macro.
Define the macro and set 0 as PTL is no longer support for i915.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index de73b348b8cf..0f19cbd36829 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -536,6 +536,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define IS_LUNARLAKE(i915) (0 && i915)
 #define IS_BATTLEMAGE(i915)  (0 && i915)
+#define IS_PANTHERLAKE(i915) (0 && i915)
 
 #define IS_ARROWLAKE(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
-- 
2.25.1

