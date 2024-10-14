Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD81C99C08D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C3910E391;
	Mon, 14 Oct 2024 07:00:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9GPfZsR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA80310E326;
 Mon, 14 Oct 2024 07:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728889225; x=1760425225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ODyHe/28PaMmJdZA1WKu7HXHOTWhbn4Fb720L8gJTL8=;
 b=D9GPfZsRCfxFaYBaJXi8j3eU+/BANgvkafjYlYZrpeIKAXlYZlIN3H+K
 KM3W10pViqx0NJxe999tvL+zKxHNNMLe1PU418DUONBRd2MPBZAMzGqNC
 1ahb+7/B60gwzPRDxVr5Ltkd9N3NPAsmvQbZ0bsGCs5cXqEPu71G6k/i7
 u5Tgb6olKUW8y74aGK+nyf1foEUqoFbdEkTFkg9u3jduFW5uz27g3ERmY
 7yaNUse5zmu5+gEeXcCzfIIfBjPzbLHgu2ZKqO4oTeqxUDhFTk/fRsgUy
 dZj1jEPtbXFmXMMwEMUJZN/bCVdNt97D7LXTqkpkBjwcQhRbKO+mnn/4I w==;
X-CSE-ConnectionGUID: O/d6M2rjTWSJ5eTCu6O7Ew==
X-CSE-MsgGUID: JmAcYCgmQouwzWgqfWdPXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39337996"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39337996"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:24 -0700
X-CSE-ConnectionGUID: Ip3Nmr1ZQzCa8PcgSfMOCw==
X-CSE-MsgGUID: w3Dg73zgTIK5T0w5yOdTKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="78310828"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/dp: Add check for hdisplay divisible by slice
 count
Date: Mon, 14 Oct 2024 12:32:22 +0530
Message-ID: <20241014070226.2729008-6-ankit.k.nautiyal@intel.com>
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

As per Bspec:49259 while computing the dsc slice count, we need to
ensure that mode->hdisplay is divisible by the slice count.
This check is there for DSI, where we select slice_count from bios,
but is missing for DP.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3a8fb19eae75..edcea84a0a59 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1030,6 +1030,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
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

