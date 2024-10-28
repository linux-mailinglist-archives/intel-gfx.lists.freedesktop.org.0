Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3364C9B23E9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 05:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E549E10E072;
	Mon, 28 Oct 2024 04:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N4i1/2Ry";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494A710E072;
 Mon, 28 Oct 2024 04:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730090466; x=1761626466;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WvKJKBjfUxsT+3CAnKQYBafA1fXP+6AxL5WzrCwXlUE=;
 b=N4i1/2RyV8W+rz1YP7oQVj2nXNMGQ5f8wQw7/az+kH9zvd9GECTHOIOT
 NxZQx8ZCcCl8M+UTFBLQvGJAFU0dvpHr91z8h/3ogD4W8uzLr1zHGDh0J
 Ou3C1u3R15seJLoD8m7Yy+eK4CMS2cC1ReyI//2EC4agFB6CqGgFI7f8L
 VhKC+UKXwQXR1OGPvA2z1XShf1PCH05PbhtUxcghGFwjqYNQugeY0NgS4
 8rJoNahfOTxljt4FjOiGdl3MIPD2DPQAc463k7z3OFeEYX64/LePqn9jW
 z/4mYVg1AdMnCcq1V0spHWlaR99/SzCopQ1uUppNggaBvA+T6A47G1NpT Q==;
X-CSE-ConnectionGUID: h6VMEMiRQnKk2FmCL5l2nQ==
X-CSE-MsgGUID: qvMgVgfySpO0PIKCSHqxQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="41071574"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="41071574"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 21:41:06 -0700
X-CSE-ConnectionGUID: bjkZV9gQQOiiOUs0zR4FZQ==
X-CSE-MsgGUID: VUyu885HSA6Tt665LH394w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="104824379"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 27 Oct 2024 21:41:03 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Add Wa_16023981245
Date: Mon, 28 Oct 2024 10:11:53 +0530
Message-Id: <20241028044153.1605209-1-nemesa.garg@intel.com>
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

Disable the support for odd panning in x direction.

v2: Replace HSD with WA in commit message [Suraj]
    Modified the condition for handling odd panning

v3: Simplified the condition for checking hsub
    Using older framework for wa as rev1[Jani]

v4: Modify the condition for hsub [Sai Teja]
    Initialize hsub in else path [Dan]

v5: Replace IS_LUNARLAKE with display version.
    Resolve nitpicks[Jani]

v6: Replace -EINVAL with hsub [Suraj]
    Remove src_w check as not required

v7: Remove check for NV12.
    Add check for PTL as well [Matt]

v8: Alignment fix

Continuing discussions from:
https://patchwork.freedesktop.org/series/136416/

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b7e462075ded..73fe36f00dae 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1024,6 +1024,12 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 */
 		hsub = 1;
 		vsub = 1;
+
+		/* Wa_16023981245 */
+		if ((DISPLAY_VER_FULL(i915) == IP_VER(20, 0) ||
+		     DISPLAY_VER_FULL(i915) == IP_VER(30, 0)) &&
+		     src_x % 2 != 0)
+			hsub = 2;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.25.1

