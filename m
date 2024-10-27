Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D1C9B1DE1
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2024 14:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D7B310E2F1;
	Sun, 27 Oct 2024 13:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nilTCG4h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A8410E2EC;
 Sun, 27 Oct 2024 13:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730036629; x=1761572629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dj4r4mbRlMse3XCqN/PdKm51zShg3Cb6d92FNHsfWqM=;
 b=nilTCG4hKEtT8svy2/FkRGPPLyon3KjdzvR7Jwzuf+WOcYdlo212f1GO
 xWb9g3SOpLCPpP0aMtie6fGu15+5YGnoMsYBUMxB9BSeUMk5zPikriDiT
 mMpMP9kyywDsn/SBNJiJVDS5P1WAzXPsjp4ZfC7pbH4EBd6fGy5AcCIfx
 9o69jdz2cu1A6fg5D7R6QPWoIUu8tCeuwQ5sV3nbIeCf3TXIIylfN9qrH
 9dUgecvDJtomqwYVFDMJMjKDAwzDULL70aZwAN361api6zZtCxs6FqvQq
 OmgkBsBMUYseWRP1Xj6FAb7/e1Bjdq/Vl7pFGhd8q764R04LDk1shv83C Q==;
X-CSE-ConnectionGUID: R2LVqlHJSb+9xjLfcYzNYQ==
X-CSE-MsgGUID: e6q+26cxQmOxUUosCAPjjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29780954"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29780954"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:49 -0700
X-CSE-ConnectionGUID: X3GjjQcuRUacT22VU1zihQ==
X-CSE-MsgGUID: 2RVJwMkDTkCUVB7+8a8iKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="118841472"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 6/7] drm/i915/dp: Ensure hactive is divisible by slice count
Date: Sun, 27 Oct 2024 19:15:56 +0530
Message-ID: <20241027134557.862036-7-ankit.k.nautiyal@intel.com>
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

