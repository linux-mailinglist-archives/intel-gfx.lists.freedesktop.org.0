Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6B99B5A98
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7776D10E755;
	Wed, 30 Oct 2024 04:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a12oVAkv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EFFA10E752;
 Wed, 30 Oct 2024 04:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730261307; x=1761797307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ITawyytB2t0ek5GuR0+lJE2JEwiQ0PJaUFf/Xcs/chw=;
 b=a12oVAkvfceET/a3qC0FhskC4JrDIUM1uyokGGkl/SMkmdvj7UXIAwkw
 rCGneuoZ6tHl6GxHq0B7gd5yLyKb3khUIrvm6sK5t8F7euv8Io+j085ro
 VKFgee3pNv5JBux/aNKvOI9NAqJm0MXaXtS+zEN123obiB1UkbLjZtgKP
 lw1xxUb6m6FQpVPfFd9CWBd6K+u4d7wKXbDATYgnrs7ColrZj1NrxRkdC
 +R8ZUQRYn7tX6A+fzpCi5a07+FIaMAjse2+AcQaGVwfuGmNCg+DUxo7OE
 qyLE3bAMuStUNKFzlXrCFdpyoxUQJHSXryBGwK34VseoAVdsr7sRfJho0 g==;
X-CSE-ConnectionGUID: /CHki3leQtOvRUc5/uAIEw==
X-CSE-MsgGUID: m12N6HoATIqAX6jnXXzXFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30088448"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30088448"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:27 -0700
X-CSE-ConnectionGUID: cYGNRiImROmXAMHA8UxTwg==
X-CSE-MsgGUID: EkvS+E6cSh+4unCau2Ikwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82510550"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 7/7] drm/i915/dp: Enable 3 DSC engines for 12 slices
Date: Wed, 30 Oct 2024 09:40:36 +0530
Message-ID: <20241030041036.1238006-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
References: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d7d42eac4be3..a38ae79d3812 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -116,9 +116,12 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
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
@@ -1026,6 +1029,13 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
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
@@ -2411,8 +2421,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

