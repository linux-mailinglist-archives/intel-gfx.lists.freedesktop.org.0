Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A190CA87B82
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 11:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4BE810E309;
	Mon, 14 Apr 2025 09:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hPhGvIqm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D2810E507;
 Mon, 14 Apr 2025 09:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744621715; x=1776157715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pnxQh0AiTMXyb4nILx63z4xpYF4EJbKL28hPXmzpELw=;
 b=hPhGvIqmqoM8sZuPfKMqJ+F2adsF2qDPWKazmTWGCI2LgBxdGJuI9xLr
 t+pXmZnwHypgtjRu1/BCm6l4hCjwmWkogQaqZuLqGY3kS8uXxt64ffJX0
 vMtHiws6v3pWQ6oRz8QTCW6j5PPgxZwjJaglV9RclmAdqWlfrWE3JkcEt
 G7cKpFilar75u1PzVVnN7/uuu2WmpzWA21cuthQpT1tPgHVH2XUxKca20
 Rc0pJsWhKJSOXVVaOEwKR+NcCWRRqlKTqIwabqZ+6D4ZM6IRY8be5xyGv
 oyZ44bB04bMo48NfIpTSGcnKQJgrJ3OzpjBlmCSINN/D9j1wJ48ysWXFo w==;
X-CSE-ConnectionGUID: RbB3bpcdSmilsgnk5cOkFA==
X-CSE-MsgGUID: L4vPECynSjSZ8yYM5e1dxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45994211"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="45994211"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:08:35 -0700
X-CSE-ConnectionGUID: 3Vr0uzICQs+6zUQgD/EqQQ==
X-CSE-MsgGUID: 30a2i2MBQXefGka17fyIdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130743881"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:08:33 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, stable@vger.kernel.org, ankit.k.nautiyal@intel.com
Subject: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
Date: Mon, 14 Apr 2025 14:27:01 +0530
Message-ID: <20250414085701.2802374-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
References: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
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

3 DSC engines per pipe is currently supported only for BMG.
Add a macro to check whether a platform supports 3 DSC engines per pipe.

v2:Fix Typo in macro argument. (Suraj).
Added fixes tag.

Bspec: 50175
Fixes: be7f5fcdf4a0 ("drm/i915/dp: Enable 3 DSC engines for 12 slices")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: <stable@vger.kernel.org> # v6.14+
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 368b0d3417c2..87c666792c0d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -163,6 +163,7 @@ struct intel_display_platforms {
 #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
 #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
 #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
+#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
 #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
 #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
 #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
-- 
2.34.1

