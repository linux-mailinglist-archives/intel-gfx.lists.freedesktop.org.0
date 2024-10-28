Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19A39B3A76
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CD810E53C;
	Mon, 28 Oct 2024 19:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T78gpnUs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 046BC10E537;
 Mon, 28 Oct 2024 19:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730143821; x=1761679821;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XesO/1o7QrwCKvwdsNPPi4cprCvwoimzFaB8TNf6u0o=;
 b=T78gpnUsg3Y4xhxQjFbhFmZs46PipzigetpXhzJIgez7L9mNrP71N7Z2
 v77qHo9CZGfg4jV91ZyUsfT3RqJR0oQQoAFRshPVGUUo1+C/ErX2T8cpf
 dwoldM3zV8cV31t5NN7zIRWEPmXeEDO7YZhuBFJOJH/AZE5YT/a8t3cBm
 gFgkXjZi8LnUQ/2o8D1/Qg0ydzyP2i8Y+f7BRwbIFfls/1m8baHTRUIKh
 U22LFBtx+fBh1vgoSTWrIbtUZ4AWp+whT3nguf9WQlx+I8wGXgtUWMnEw
 Wso4rBTvqWCA0earOz6sEb0GVSVZmmxm4B4qzozuYQa47OomCPCQg/rgm g==;
X-CSE-ConnectionGUID: 1YANHifrQv2o5GAG8p5XIw==
X-CSE-MsgGUID: YO96040hQ622Jwyei2mCXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40855932"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40855932"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:20 -0700
X-CSE-ConnectionGUID: 9z3n3d7OSK6TuzUrUJoUjA==
X-CSE-MsgGUID: GeGkchOzQg2LpF4OEm9mxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81777544"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:19 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v6 3/9] drm/i915/ptl: Define IS_PANTHERLAKE macro
Date: Mon, 28 Oct 2024 12:30:09 -0700
Message-Id: <20241028193015.3241858-4-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
References: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
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

