Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 069EC9C0DCE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E96A10E8C7;
	Thu,  7 Nov 2024 18:30:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2pb7RFM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C3E10E8C6;
 Thu,  7 Nov 2024 18:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004207; x=1762540207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RBvdgqhaDNVIgecZcomsdkBWZristdan8Zq8KnqUskM=;
 b=l2pb7RFMtbXoUMmRjLnwjVp6R6WLNOgIVI4LGCfRGT4O8oF8j2ZLGpxh
 XVQAo6ytt8TzXzvTcEDa7BOBVQV6N+vGThsPSvPVTik4NjQeO0+NS2Ub1
 oepqKOU9ZnH+p2tk+getTWdFXTmXUyktxSv29+wk4xt1PtnyVoao6bZ+j
 fpLzOOsUPR/cOPiyPQtQhyYdBUPhQyDi+XkYbU1DFj0hf8M2h8BrXl788
 RXwXRj576yaLb02xxH5xgJIZuGfcmETNgPkEofaqTqUs4/FEslYvy1Eay
 Ry3shysCMmt+bkr6ki+cF1SaigOSU5nc4+YQ6FyVP6hiTygQJA/V/YCNp w==;
X-CSE-ConnectionGUID: sc1lgJXmR/yd/5HDQkBGZw==
X-CSE-MsgGUID: n/qYtSleTB+KPHYwqbmJTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494893"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494893"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:07 -0800
X-CSE-ConnectionGUID: GSJTLUaORr2dx8VxDpccKw==
X-CSE-MsgGUID: IzVCDbcIS26O+j77v4buiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329716"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 15/18] drm/i915/dmc_wl: Use HAS_DMC() in HAS_DMC_WAKELOCK()
Date: Thu,  7 Nov 2024 15:27:20 -0300
Message-ID: <20241107182921.102193-16-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index a8a0b4332247..085baf22d994 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -147,7 +147,7 @@ struct intel_display_platforms {
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
-#define HAS_DMC_WAKELOCK(i915)		(DISPLAY_VER(i915) >= 20)
+#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
 #define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
-- 
2.47.0

