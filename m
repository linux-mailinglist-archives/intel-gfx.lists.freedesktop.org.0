Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AAE985B6F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 14:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A1910E83C;
	Wed, 25 Sep 2024 12:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3iHf0DO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9443B10E83C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 12:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727267015; x=1758803015;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fpuuog2Slwd0+2O86P5sxtTYu/68ey+P7zbJKjC7SQc=;
 b=B3iHf0DOzEPylhMgI2xg5j8HR0ne0PJFiimRreTG3boVSNzOiT1eKxDS
 60FcVr86J8MleZNl5EY0l/KIJS6IDkYkcMU+FKMu6lHUuNtNGl5v9MkHs
 WJeK5GFGPT9hp5Ypg95n6A3HqNmriu4V7EJBksVCI64+eHAYivahyzBGl
 Xh9LKCwODBvmlKZaP5POzVop8jfwtOoHwN3l+t1l5ijZwbJR1iFDsllTp
 LQ39iFIGAyIOXIRA5sIwAert+K5jRX88UP8/b8w9z1x6j+Z3Dxv1nODTp
 fgi9Rj8WbvFYhlzAzDYNvsUDvSK0VF0MTW7d9YMsl7/REQnpin5RQ5BFT Q==;
X-CSE-ConnectionGUID: 1TbS7D3cTeC98KKQsPsxiw==
X-CSE-MsgGUID: YeKtd1x2QcWd7gUjtfDjUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="30102047"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="30102047"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 05:23:33 -0700
X-CSE-ConnectionGUID: Q2rJIdR2RlyfuZtIMHKLdw==
X-CSE-MsgGUID: E1Hml2bxSiKza4QrUAYRyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="72066524"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa006.jf.intel.com with ESMTP; 25 Sep 2024 05:23:32 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar yuv
Date: Wed, 25 Sep 2024 17:53:59 +0530
Message-Id: <20240925122359.2455130-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Disable the support for odd x pan for NV12 format as underrun
issue is seen.

WA: 16024459452

v2: Replace HSD with WA in commit message [Suraj]
    Modified the condition for handling odd panning

v3: Simplified the condition for checking hsub
    Using older framework for wa as rev1[Jani]

v4: Modify the condition for hsub [Sai Teja]
    Initialize hsub in else path [Dan]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..dfe795b8e917 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1029,8 +1029,16 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 * This allows NV12 and P0xx formats to have odd size and/or odd
 		 * source coordinates on DISPLAY_VER(i915) >= 20
 		 */
-		hsub = 1;
 		vsub = 1;
+		/*
+		 * Wa_16023981245 for display version 20.
+		 * Do not support odd x-panning for even xsize for NV12.
+		 */
+		if (IS_LUNARLAKE(i915) && fb->format->format == DRM_FORMAT_NV12
+		    && src_w % 2 == 0)
+			return -EINVAL;
+
+		hsub = 1;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.25.1

