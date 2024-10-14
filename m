Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288E799C091
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58BF810E399;
	Mon, 14 Oct 2024 07:00:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OGumGvn/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524EF10E0FA;
 Mon, 14 Oct 2024 07:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728889230; x=1760425230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RRg4uZDK4OBHW7XL1OogwWdiLDpAZyly/dLdwC8v+ds=;
 b=OGumGvn/yRkbG0cf3dSyDtEwp4IXBNceKknDtF2bM2ZEMywU8irG5Izw
 exgrLWzre7cL9zi6Yczj2lXBOS04+IUPRUjkHokfrDG53Ed8lLZUtIiuw
 LMln6W9/43X0EVr/lD9gf+v2pHpoW6dZi5TcJruXogBWjOc2cWpehJtgF
 ikOMdFocXt6H6/WRJerLtwkR8/GdXwWqC5davp7clSWx4LRc9FYeTXDyN
 JX2mYub+OWDOYfLPWngj8bFNgltfci4a5/biBT5WontcB9pby2EfCgBBu
 CIJ+sZLepbvB85gO6YHPRTLKAfvH8xaimTjrTjsgqajhLiwuuRfqzfQJy Q==;
X-CSE-ConnectionGUID: Bv+UzxPRTbWNhOTy0Whzaw==
X-CSE-MsgGUID: VKZ2L18mTryKKhvmEsWIfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39338015"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39338015"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:30 -0700
X-CSE-ConnectionGUID: xF4+GmziQ1uYG1xkVxmMAw==
X-CSE-MsgGUID: UdoujrWvRde/Ck+MNOaLYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="78310845"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/dp: Add support for 3 vdsc engines and 12 slices.
Date: Mon, 14 Oct 2024 12:32:26 +0530
Message-ID: <20241014070226.2729008-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
References: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
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

Certain resolutions require 12 DSC slices support along with ultrajoiner.
For such cases, the third VDSC Engine per Pipe is enabled. Each VDSC
Engine processes 1 Slice, resulting in a total of 12 VDSC Instances
(4 Pipes * 3 VDSC Instances per Pipe).
Add support for 12 DSC slices and 3 VDSC engines for such modes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 728d7a93ed60..0082a5690ce0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -109,8 +109,10 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
 /* With Single pipe configuration, HW is capable of supporting maximum
  * of 4 slices per line.
+ * For higher resolutions where 12 slice support is required with
+ * ultrajoiner, only then each pipe can support 3 slices.
  */
-static const u8 valid_dsc_slicecount[] = {1, 2, 4};
+static const u8 valid_dsc_slicecount[] = {1, 2, 3, 4};
 
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
@@ -2462,8 +2464,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
+	 * In case of Ultrajoiner along with 12 slices we need to use 3
+	 * VDSC instances.
 	 */
-	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
+	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
+	    pipe_config->dsc.slice_count == 12)
+		pipe_config->dsc.dsc_split = INTEL_DSC_SPLIT_3_STREAMS;
+	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
 		pipe_config->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
-- 
2.45.2

