Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D015B9A1D10
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482AB10E7B7;
	Thu, 17 Oct 2024 08:21:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSOEqAF2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DAC510E7B7;
 Thu, 17 Oct 2024 08:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153314; x=1760689314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d+UYDEvogSWqfxHF2naQpMuzXYjo6/nu2V9p00dCkuE=;
 b=jSOEqAF2aJwBu6cr9w2AGHy1NB8p/LxhJk9IIQQeehHuNQNFj5y6zL8b
 InEIuxgVpukZHj+s8zDoySX9tJwW1Mmipyk/M9f+vE8sMce9qP3rbtUoK
 sxf0ZYjypI9/MgNaT1D6LzwW1ZT7T08XTXDJGLpP7g0+fJTcK+DvcMmC5
 Flgv/pJkk9OxGbd66JAU0UuqnszDoWvKe0USOqe6Act4zWWQd3DTUaiDC
 FQviMGvE98vcDi1v7/YXZl/EA4qGqklxPEXJtWzeJy2fEKcnJfKxahuci
 QdrZzf+XzhtdJZQn+f7XRdRG+kkX5o7EuN6empik21JlDQCn9BhK09nPc A==;
X-CSE-ConnectionGUID: XNb8NdSpTzCJE97eBv9Pvw==
X-CSE-MsgGUID: ZcMvIo7hQrW+PE/faiMQUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724907"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724907"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:53 -0700
X-CSE-ConnectionGUID: Gpdi3DrnRKaPNKJmbhB3aA==
X-CSE-MsgGUID: MMg67665R+KDa/G4k2i/JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086281"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 10/10] drm/i915/dp: Add support for 3 vdsc engines and 12
 slices.
Date: Thu, 17 Oct 2024 13:53:48 +0530
Message-ID: <20241017082348.3413727-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
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

v2: Add missing check for 3 slices support only with 4 joined pipes.
(Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ef96b9235636..91ae29d76cf5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -110,8 +110,10 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
 /* With Single pipe configuration, HW is capable of supporting maximum
  * of 4 slices per line.
+ * For higher resolutions where 12 slice support is required with
+ * ultrajoiner, only then each pipe can support 3 slices.
  */
-static const u8 valid_dsc_slicecount[] = {1, 2, 4};
+static const u8 valid_dsc_slicecount[] = {1, 2, 3, 4};
 
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
@@ -1043,6 +1045,13 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
 		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
 
+		/*
+		 * 3 DSC Slices per pipe need 3 DSC engines,
+		 * which is supported only with Ultrajoiner.
+		 */
+		if (valid_dsc_slicecount[i] == 3 && num_joined_pipes != 4)
+			continue;
+
 		if (test_slice_count >
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
@@ -2463,8 +2472,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

