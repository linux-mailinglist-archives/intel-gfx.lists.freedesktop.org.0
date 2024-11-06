Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B1B9BF8BB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEBB10E78E;
	Wed,  6 Nov 2024 21:53:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J77FMwxX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49FA110E78E;
 Wed,  6 Nov 2024 21:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929992; x=1762465992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mWnNgbBFuSF0vcdfMrHJDYrbv7CHeuwkQWvYKtFpaKw=;
 b=J77FMwxXeuh14BUxwsJjS2eNpI+qVma/WU4yHPDtBXAroRGZNVmLpE6O
 qFkuebnAaIuMS76nO7z52FqxDXUGS7FOGxoUqpOpJMWGaF+YmAkMf+wJ5
 Bvy5L77HuX35tSqCWplI8FUoPDLN4F0ls1GrjW7ZYZ9w6xIhAQIgW2/O5
 gZAmbBr6a3maKNkAz/kwY9F86zsCamkcqaau3Y7zvc6NyHEBK7k4UZ5Az
 J92BIz7wSZ0ztiwQz7KHpD3fRZUJKNw119akzk+3HiyoBzFPRJPWnrx1e
 u7MltEy14N0JZQ6u7A6HE9YEouQYTxzuspiSJcMu4ffW++r+fktCRrsUj A==;
X-CSE-ConnectionGUID: +goNJ7LSRHCbWZ2paAIrEA==
X-CSE-MsgGUID: 5uk6A7YGT5ybshJ6v/U9jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212203"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212203"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:07 -0800
X-CSE-ConnectionGUID: p49BrML/Scyo3BRVALEjLA==
X-CSE-MsgGUID: 5WlMO7leSZqOnLEo6strUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882519"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 15/17] drm/i915/dmc_wl: Use HAS_DMC() in HAS_DMC_WAKELOCK()
Date: Wed,  6 Nov 2024 18:50:41 -0300
Message-ID: <20241106215231.103474-16-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

In order to be able to use the DMC wakelock, we also need to know that
the display hardware has support for DMC. For that, include HAS_DMC() in
the definition of HAS_DMC_WAKELOCK().

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 65d17c6cbbb3..43aa1b2501d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -147,7 +147,7 @@ struct intel_display_platforms {
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
-#define HAS_DMC_WAKELOCK(i915)		(DISPLAY_VER(i915) >= 20)
+#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
 #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
-- 
2.47.0

