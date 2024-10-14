Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B866899C28F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526CD10E3BC;
	Mon, 14 Oct 2024 08:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npKLctDl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C53110E3CA;
 Mon, 14 Oct 2024 08:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893284; x=1760429284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6lxSkb+fav/HQVxnxa3qOqIJ6yhZlcWQo16lPjDQUw=;
 b=npKLctDlpRKXKJ+lf+sVNeUmUgq1UgMyT+bL0bjKMd7OdY+ozyRuGXuV
 EUWOw88X7Y389YuVkGrqq1w+9CcSo0QH5uQTIWicapJBBczZ1XOKZq8lf
 T1+IqTOmu5JGGNphXOVLJ2zjf9Q9rGLSV6eQvmhVcflzlj6Avxn8a0gRN
 DiYzrx/1J3Sa/dJIKDwUnstnHJbkdR8ye1kRR94nb8VB2ahB4BLn8YAkE
 A1POYb5ex9w7jZIegJYU4urXMzQZNsCZL/BKNJvQxXNIdf4Z3jVHw0sYH
 olfD6njfjZ3VnM+TmlHdMKufHsWlUl2ergpiGfpu8ia0WmHmCK1xKQjmE w==;
X-CSE-ConnectionGUID: 8syMz34pRiqUZfjPVy9pOA==
X-CSE-MsgGUID: jU3u55xBRu22k96WHsSHFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784446"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784446"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:04 -0700
X-CSE-ConnectionGUID: Cw02tIvrQAukalOq+vgv8w==
X-CSE-MsgGUID: ru8AYuPIRtC/pKUnk5pO2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834923"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/dp: Add support for 3 vdsc engines and 12 slices.
Date: Mon, 14 Oct 2024 13:40:00 +0530
Message-ID: <20241014081000.2844245-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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
index ef96b9235636..744796d2e99f 100644
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
@@ -2463,8 +2465,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

