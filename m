Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D7F98A050
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 13:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C33210E311;
	Mon, 30 Sep 2024 11:23:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MgrGefUt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F3410E311
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 11:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727695396; x=1759231396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XTRdgdUmdv7JH3G1us1ufDpxGXV3aFLRxrCEhwdUt7o=;
 b=MgrGefUtk6yVl6caEm3Riwx16QCG1EamKV8wUc0USx3+XitprccpoYob
 DCoM6P4+yIYnSGLv0/NV9GNqK25FlxhE9ik0hns6RlFkm+ZW8SHR8yV6f
 QGbSWI4ImzIqMKgVzgvZPj3pxQxjC22qbKxJmOS9FCpwaRPMCXgrX9RVQ
 bb440sZCInL3d+oBxM6zQ0eq8HtIjyaa0oH/M977E+jJaTPkOKbBoIBBt
 mVO4zZxyVYa3qlucNCMnyfWfp5a+ntwicdhDJasBcrbdiBWLY818+QKcl
 pygfI+l87N/EWj1XTJz/MvDZHX9qOqfqesf8s0Rrv8vavXsT7l6b8kFU9 Q==;
X-CSE-ConnectionGUID: vln1gexkSl6RhFVlwottFw==
X-CSE-MsgGUID: nYjXlx9xTo+ilbWsfthv3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="37918846"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="37918846"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 04:23:15 -0700
X-CSE-ConnectionGUID: PNzXOC4HQzy04lAq0QGGPQ==
X-CSE-MsgGUID: hNd6wYQHQxefp1ivT8OCOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78224836"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 30 Sep 2024 04:23:15 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar yuv
Date: Mon, 30 Sep 2024 16:53:43 +0530
Message-Id: <20240930112343.2673244-1-nemesa.garg@intel.com>
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

Disable the support for odd x pan for even xsize for NV12 format as underrun
issue is seen.

WA: 16024459452

v2: Replace HSD with WA in commit message [Suraj]
    Modified the condition for handling odd panning

v3: Simplified the condition for checking hsub
    Using older framework for wa as rev1[Jani]

v4: Modify the condition for hsub [Sai Teja]
    Initialize hsub in else path [Dan]

v5: Replace IS_LUNARLAKE with display version.
    Resolve nitpicks[Jani]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..e3401a4f7992 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 * This allows NV12 and P0xx formats to have odd size and/or odd
 		 * source coordinates on DISPLAY_VER(i915) >= 20
 		 */
+		/*
+		 *  Wa_16023981245 for display version 20.
+		 *  Do not support odd x-panning for even xsize for NV12.
+		 */
+		if (DISPLAY_VER(i915) == 20 && fb->format->format == DRM_FORMAT_NV12 &&
+		    src_x % 2 != 0 && src_w % 2 == 0)
+			return -EINVAL;
+
 		hsub = 1;
 		vsub = 1;
 	} else {
-- 
2.25.1

