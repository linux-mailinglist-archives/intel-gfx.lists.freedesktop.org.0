Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1699AD6E7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F43810E87B;
	Wed, 23 Oct 2024 21:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="heORxp/9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B2D10E86D;
 Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720026; x=1761256026;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BVG+Z1GeQjGQQKkRWksYWn9KbDU+C4TwQamcPyGETjA=;
 b=heORxp/9vdX5gFR7rJAaukYOmsGBmnRMWbwSMzR9oIuREWx4jq5c1IwS
 /4MzLQjk7+KCWc0HYEe6Y+ku33Th6B8cstu38g1Ok0fMUBBKbb6HiwpnW
 twudbk+D3RmuyaGlFmRFKwTHhicfQXahhlRsL24p3ogvKHcBaMblSDNX9
 4tyh/HqiMhcnA10PQtW1LsCuv0PlaCiDnX4N5yjDEQ9SyZQnVNgaWgbqB
 wJGGvsr2fMoZUirWtz1JC2Rys0y4rQS5T+wvESNavJO40SZh3ZtiCYi8e
 kPxgqD81laXC8iufXgpKK0QTa94n0uzBO+PE4MNDWHkrseXF179xp7Zkq w==;
X-CSE-ConnectionGUID: 7PQzZWQXTqmI9De/vpGnYw==
X-CSE-MsgGUID: 46MLj/9mSQmhGgMXTlVcuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732003"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732003"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
X-CSE-ConnectionGUID: 2vTw6WobSLqlsBkTVb1auA==
X-CSE-MsgGUID: +4k9PICjQXq1ntv8ru6l/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809802"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 05/12] drm/i915/ptl: Define IS_PANTHERLAKE macro
Date: Wed, 23 Oct 2024 14:46:54 -0700
Message-Id: <20241023214701.963830-6-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a66e5bb078cf..ca1ab5931e28 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -538,6 +538,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define IS_LUNARLAKE(i915) (0 && i915)
 #define IS_BATTLEMAGE(i915)  (0 && i915)
+#define IS_PANTHERLAKE(i915) (0 && i915)
 
 #define IS_ARROWLAKE(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
-- 
2.25.1

