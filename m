Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CEAA23DE4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7654510EA85;
	Fri, 31 Jan 2025 12:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ScmNmAXM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE0510E1EA;
 Fri, 31 Jan 2025 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327823; x=1769863823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BGET/UU/2bV5Re6ziqCj4p0mZbhPAXcfyFDC0FmfJTA=;
 b=ScmNmAXM+frcFaCE7PMgz2PfchyHi5EnED0JFNZbzdcI1YWWzIsvKjOV
 +rKhqfFJ/JpIfMdGRCATaibhxU5pe97gs1wqME7rl3LgXtzMaLAbX9m7D
 22paNeNir7/VjxsHPdt+GQ+7FZUYL2drsb/ecYK2NVWooodMJ0WeALgBZ
 m/H4etb8P25hQBGmV3unDO9uAp4weiqcI/HLY7fdSo+dDN+/ztJ1N3FTI
 jmzIHNX04oAPq9+a9B1RByuL2V2GjeVqfYz/ArB7iu4HnwsXBU88z7bVI
 tODZg6tcoWprI7wBidZKzl2GZPQ7cSWAGX2Q7YMnIz7jJ6PTt4LFZp9iA g==;
X-CSE-ConnectionGUID: NiNnrQtET3SI7M32R4xZgw==
X-CSE-MsgGUID: UncN1CtZThKD0y4aDhwMNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38798437"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38798437"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:22 -0800
X-CSE-ConnectionGUID: zlk9dCfuRNSr/+XeEPvKNA==
X-CSE-MsgGUID: h4Zkr3+dTomk03TDK+2HBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110203309"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>, stable@vger.kernel.org
Subject: [PATCH 01/14] drm/i915/dp: Iterate DSC BPP from high to low on all
 platforms
Date: Fri, 31 Jan 2025 14:49:54 +0200
Message-Id: <3bba67923cbcd13a59d26ef5fa4bb042b13c8a9b.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Commit 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best
compressed bpp") tries to find the best compressed bpp for the
link. However, it iterates from max to min bpp on display 13+, and from
min to max on other platforms. This presumably leads to minimum
compressed bpp always being chosen on display 11-12.

Iterate from high to low on all platforms to actually use the best
possible compressed bpp.

Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best compressed bpp")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: <stable@vger.kernel.org> # v6.7+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d1b4fd542a1f..ecf192262eb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2073,11 +2073,10 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 	/* Compressed BPP should be less than the Input DSC bpp */
 	dsc_max_bpp = min(dsc_max_bpp, output_bpp - 1);
 
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
-		if (valid_dsc_bpp[i] < dsc_min_bpp)
+	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
+		if (valid_dsc_bpp[i] < dsc_min_bpp ||
+		    valid_dsc_bpp[i] > dsc_max_bpp)
 			continue;
-		if (valid_dsc_bpp[i] > dsc_max_bpp)
-			break;
 
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
-- 
2.39.5

