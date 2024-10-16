Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92149A0254
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 09:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553D010E07A;
	Wed, 16 Oct 2024 07:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TYLnyMWc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B8710E07A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 07:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729063281; x=1760599281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XZ2wsoTDkX45falAqSMfHlV5+RTSS9JVybZQ3y0aggE=;
 b=TYLnyMWcrH5zHnFiouPQGkSh7r7q4FM+bD96HRNGwK2xQVjAaVs8okY9
 UIs+t0BjsU42p628g4czqwKCzv+Pxm2Oq9o3Jk0eNo+RqTGPsT+9MQKdw
 /V2NZxmaWgirvJcpVl5onq3MvicJxgTTYU0OJiNDDTvA1z3d6mgc3lMyw
 Wn4CCD2cdi1mjZ69dwVsXuuiSKSjiHF5V0yL4jpJ3F/65+sjRU2Zv6ePM
 LRKoPZpz7bM4jyD0zC1kLjzmj0q4lGSQV8dJb6yXW0tk4uWvpGQj5iUdu
 2aR5yIRUUSLLxoinErBjTcm4c6ry6UCy1UmaTh+gqIkcK4UlernbBtCtm Q==;
X-CSE-ConnectionGUID: 0WzhrAbxQXGzSzPY/qNt/g==
X-CSE-MsgGUID: P+JUi54IQpWE5OAZwQ9sDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28626418"
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="28626418"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 00:21:20 -0700
X-CSE-ConnectionGUID: 5hahFd3HRF+tnpe7ydiLRg==
X-CSE-MsgGUID: wL9zTP9ETJqS7rT69vrnuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="82921238"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa005.jf.intel.com with ESMTP; 16 Oct 2024 00:21:20 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar yuv
Date: Wed, 16 Oct 2024 12:52:06 +0530
Message-Id: <20241016072206.261279-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240930112343.2673244-1-nemesa.garg@intel.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
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

Disable the support for odd x pan for even xsize for NV12
format as underrun issue is seen.

WA: 16024459452

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

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..2d7ca6e62926 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1031,6 +1031,11 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 */
 		hsub = 1;
 		vsub = 1;
+
+		/* Wa_16023981245 */
+		if (DISPLAY_VER(i915) == 20 && fb->format->format == DRM_FORMAT_NV12 &&
+		    src_x % 2 != 0)
+			hsub = 2;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.25.1

