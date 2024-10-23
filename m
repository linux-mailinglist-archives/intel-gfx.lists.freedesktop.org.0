Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25019ABF47
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F23F10E757;
	Wed, 23 Oct 2024 06:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SN6Ns6WL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C050010E757;
 Wed, 23 Oct 2024 06:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666253; x=1761202253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JIx/kJxxkTWFies8iN46JiY6fx7eZa5O9so0MW/fDsA=;
 b=SN6Ns6WL5assqxPj2Z2OQLjp7vm3Vg/10/HZFPnCcb06AHH4l3esm//T
 yA6tMBifgEhNC2NoBsU8tbnEG/AhrbQlLIyyM5CUvXLXxwtQfAINUVlB8
 kQUhKfyx4k8HRoJHnSXBPrf4+VMWqoM00Bz0ussuGOiBRucq5zIBzFOBN
 WTaaKqdnpakjwIcU7tCBGG7KFD0A5ojMKHPpvhWV9w/7TsHfpxYXqb2Oo
 s3c51ccJtfJvpb8cHyEUIY8nUvxA5P54I+xRFTZklN8wpL0j4ouBc3Zsa
 rhwRwa2w5r8kFx/4M/5Pk3AMzcoPLKEyaqgAodt+cETpwDWOWhmuXk1oQ A==;
X-CSE-ConnectionGUID: sqDyVgp6QZ6bQtm0aI5Ymg==
X-CSE-MsgGUID: nJ22iekrQWKcme87lZNVgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097473"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097473"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:53 -0700
X-CSE-ConnectionGUID: /x04iSKJTFiHHFxVFRpzNg==
X-CSE-MsgGUID: 1esmACgISCCeBlEyf/TwrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691534"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 07/16] drm/i915/dp: Enable 3 DSC engines for 12 slices
Date: Wed, 23 Oct 2024 12:22:48 +0530
Message-ID: <20241023065257.190035-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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
For such cases, the third DSC Engine per Pipe is enabled. Each DSC
Engine processes 1 Slice, resulting in a total of 12 VDSC slices
(4 Pipes * 3 DSC Instances per Pipe).
Add support for 12 DSC slices and 3 DSC engines for such modes.

v2: Add missing check for 3 slices support only with 4 joined pipes.
(Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b20ea844925..4065fc26e70e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -115,9 +115,12 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
  * For now consider a max of 2 slices per line, which works for all platforms.
  * With this we can have max of 4 DSC Slices per pipe.
  *
+ * For higher resolutions where 12 slice support is required with
+ * ultrajoiner, only then each pipe can support 3 slices.
+ *
  * #TODO Split this better to use 4 slices/dsc engine where supported.
  */
-static const u8 valid_dsc_slicecount[] = {1, 2, 4};
+static const u8 valid_dsc_slicecount[] = {1, 2, 3, 4};
 
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
@@ -1025,6 +1028,13 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
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
@@ -2410,8 +2420,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
+	 * In case of Ultrajoiner along with 12 slices we need to use 3
+	 * VDSC instances.
 	 */
-	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
+	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
+	    pipe_config->dsc.slice_count == 12)
+		pipe_config->dsc.num_streams = 3;
+	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
 		pipe_config->dsc.num_streams = 2;
 	else
 		pipe_config->dsc.num_streams = 1;
-- 
2.45.2

