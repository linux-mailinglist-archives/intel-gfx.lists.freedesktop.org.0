Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFD29B5A97
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5792810E746;
	Wed, 30 Oct 2024 04:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EwHJ/ja8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8FA10E752;
 Wed, 30 Oct 2024 04:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730261305; x=1761797305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dj4r4mbRlMse3XCqN/PdKm51zShg3Cb6d92FNHsfWqM=;
 b=EwHJ/ja8HaUDeV6ig43vwhPXnLED1jZudTp8PIPP77EwNBMiy7p8SOcd
 5sl5S7ctwDVqMMyv0+VRdmmcww82tKJMIWPErpkMZzX+RtGCF8ekdpgHn
 MhMiXA8QTHALHmuLsRG7a+tM1hBY+1CktyH6y/+m+1AC66nmYUK3rp1vy
 i2ZSoZwRIzhhWdM/pamiKshIhOkXUvoKw/3+Q7n9gUb5U095pENILNoRi
 J40abs9OJlPUy4QhsdAQxIcUlzn3+was/e6Zqi0aJDo2RTBB6QL5RAEC6
 mXpETf+MXtgoF4Tckm+fUblGCrHSQ7Y+dznfHjRj/RB6pX/NjqmBMtPPI Q==;
X-CSE-ConnectionGUID: QMA4OSdiTmG7Iv8lyMP5dQ==
X-CSE-MsgGUID: t5+/jreaQ1WUcPpGSngBYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30088444"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30088444"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:25 -0700
X-CSE-ConnectionGUID: 9JUYyl+6QxWMtJEA/Vehcg==
X-CSE-MsgGUID: TZVqQdfLTeiOB5fyFGxdbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82510543"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 6/7] drm/i915/dp: Ensure hactive is divisible by slice count
Date: Wed, 30 Oct 2024 09:40:35 +0530
Message-ID: <20241030041036.1238006-7-ankit.k.nautiyal@intel.com>
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

According to the DSC spec, the slice width should be chosen such that
the picture width (hactive) is evenly divisible by the slice width.
If not, extra pixels (padding) must be added to the last slice to
ensure all slices have the same width.

Currently, we do not support handling these extra pixels.
Therefore, select a slice count that evenly divides the hactive
(slice_width = hactive / slice_count).

This check is already implemented for DSI, where the slice count is
selected from the BIOS.

For DP, currently with 1, 2, 4 slices per pipe it is unlikely to have
slice count not being able to divide hactive, but with 3 DSC engines
and 3 slices, we can have such cases. Adding this check prepares for
future scenarios where such configurations might be used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dbb1d75c0576..d7d42eac4be3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1038,6 +1038,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
+		if (mode_hdisplay % test_slice_count)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
-- 
2.45.2

