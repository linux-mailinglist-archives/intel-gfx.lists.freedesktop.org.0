Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBDEA875F0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 04:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C417C10E451;
	Mon, 14 Apr 2025 02:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gryHLDpp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8578410E25F;
 Mon, 14 Apr 2025 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744599273; x=1776135273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kSoBvyhLQ8/vdVHZxYDxn4fxcqgmrjemokN1Q2sPLtM=;
 b=gryHLDppcWXWc8rjg6BFDokCRAezQb/6MY2FnU9rQ4Kz6JnwpxNHsbDH
 wd5UqCDsaw74o0L5aB7bG5PSgsg2R0xmT9G4MH2v2IVMpFqGTzuiscGHz
 lPPsZEAhQPwImooFZpDorv1gRn3TF7v8BgtSZvs3CnyxZmAyjQTIbr4uE
 2plDIoeRJX8VcuqJ7rn2GpE5Jh87znNZwUkKap8o4VfcQlPtWndccUrtr
 tSMGJjZYedSTnve2qwcMdV8JjMME95YtGaoOhgGSNvl9SfGMjhYeeXOob
 yXX2mUgndQ2S98MHBJSTuIXBSMpp+hDFBju8Z4fvXK9pPtw9Autbv9AG4 g==;
X-CSE-ConnectionGUID: 06sFqz+VQImCN+HqQE+zPw==
X-CSE-MsgGUID: nfIMoT5DTW2aV0jiyDy21g==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="46189569"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="46189569"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 19:54:33 -0700
X-CSE-ConnectionGUID: db6eUy0ERiCvfCR3pGknHA==
X-CSE-MsgGUID: u/kj/3lwRrO4WHO1CBvpFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130016223"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 19:54:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, stable@vger.kernel.org, ankit.k.nautiyal@intel.com
Subject: [PATCH 2/2] drm/i915/dp: Check for HAS_DSC_3ENGINES while configuring
 DSC slices
Date: Mon, 14 Apr 2025 08:12:56 +0530
Message-ID: <20250414024256.2782702-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
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

DSC 12 slices configuration is used for some specific cases with
Ultrajoiner. This can be supported only when each of the 4 joined pipes
have 3 DSC engines each.

Add the missing check for 3 DSC engines support before using 3 DSC
slices per pipe.

Fixes: be7f5fcdf4a0 ("drm/i915/dp: Enable 3 DSC engines for 12 slices")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: <stable@vger.kernel.org> # v6.14+
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aeb14a5455fd..d7a30d0992b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1050,10 +1050,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
 
 		/*
-		 * 3 DSC Slices per pipe need 3 DSC engines,
-		 * which is supported only with Ultrajoiner.
+		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
+		 * with Ultrajoiner only for some platforms.
 		 */
-		if (valid_dsc_slicecount[i] == 3 && num_joined_pipes != 4)
+		if (valid_dsc_slicecount[i] == 3 &&
+		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
 			continue;
 
 		if (test_slice_count >
-- 
2.34.1

