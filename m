Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22D298ED2A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E9710E7E9;
	Thu,  3 Oct 2024 10:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QdRmZzLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196FF10E7E4;
 Thu,  3 Oct 2024 10:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952106; x=1759488106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajDJjwymZ0ioHrXUz6KXFqhjEc6j7J+XrHsGUvwcW6Q=;
 b=QdRmZzLrLUwOeEkb2G7JgavrCeUL8uswopFWUhrjqTUNfLT4GZJhJn8L
 KAe9PltYr0tHYlrB88++BKWV4qbBJu6dwh5zN2JEdkMXeCQX6pfKpBBzL
 TkTBJx+W+1SbdreAfjmGJOYmmG7jSAVylHzFeBm29jo+NQHpqL/AEQOG2
 ufE4RyK9+T2d0yCP5iijPu5PPShKemAEpKFkEgFgjQ8fpb9PkhmyrCITh
 80hhGv2b1xztQ42iHvRw/zxEPUGKFhcsL11pMObGcIFYXyHwA0lInKuil
 YytDgDo15QvdSHG810Ty3R/S9IjuF5p/wY1h0ZO75CwWKOHYGJlg0yupa w==;
X-CSE-ConnectionGUID: RjMoGGpWTT29dz9yzjg6NA==
X-CSE-MsgGUID: O9qituBmTNmTYqz+J2xDqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270765"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270765"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:46 -0700
X-CSE-ConnectionGUID: oXWBJq8bTe+Fcb6n+7CG+A==
X-CSE-MsgGUID: qHLaVhb5QS+PpwevgsAPRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142445"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 1/7] drm/i915/dp: Use HAS_DSC macro in
 intel_dp_dsc_max_src_input_bpc
Date: Thu,  3 Oct 2024 16:13:37 +0530
Message-ID: <20241003104343.984060-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
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

Use HAS_DSC macro to take into account platforms for which DSC is fused.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c4fdae5097ec..c47748905506 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1766,6 +1766,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 static
 u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
+	if (!HAS_DSC(i915))
+		return 0;
+
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
 		return 12;
-- 
2.45.2

