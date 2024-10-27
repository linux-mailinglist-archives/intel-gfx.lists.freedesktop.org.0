Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC199B1DE2
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2024 14:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13E610E2F2;
	Sun, 27 Oct 2024 13:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6nPPCHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E21810E2EF;
 Sun, 27 Oct 2024 13:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730036631; x=1761572631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ITawyytB2t0ek5GuR0+lJE2JEwiQ0PJaUFf/Xcs/chw=;
 b=c6nPPCHvBVu9bnQKgfn2wAA+or9KG7o/2UFAWQxsXzQwSqc/kfcKKli7
 T8H5ZfNoVLsfp+FBUDS0syZ4WwB3yuqXCvn3EBjVam7U0XUIN5iJVVwhn
 jKSsSf/sbZCr6VDGfBAszgsXvTUmqjeoiQfQ0+L+32KjAycqEHkSzExKJ
 MjRDMZudE0SYhu7lmiFO2d7PAKMsjZgT7bbkzbP72QDIEkjCanwkBp6u7
 PCLjbORK3c9DemsJY0EE1lV66zANLxpZrx5CYjJg67BYoOBln4dve/+rQ
 EcjKmlrX0GNQThM7bbDrB+ACSx7hTNe0+vmQBk6c63yfkHq4S+DjGauAA A==;
X-CSE-ConnectionGUID: jYG3S2cSRTuiP8z2Tr5XzQ==
X-CSE-MsgGUID: m6gspvo2TqaQ5tND0u45lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29780957"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29780957"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:51 -0700
X-CSE-ConnectionGUID: utLh2IU1QPSAzmCTrop2xQ==
X-CSE-MsgGUID: fVT2dVVRTWqGityCkWi+uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="118841476"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 7/7] drm/i915/dp: Enable 3 DSC engines for 12 slices
Date: Sun, 27 Oct 2024 19:15:57 +0530
Message-ID: <20241027134557.862036-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
References: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
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

