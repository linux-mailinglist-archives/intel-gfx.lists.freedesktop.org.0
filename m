Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F423A986D7B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D59C10EAC4;
	Thu, 26 Sep 2024 07:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUXqDFQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D4710EAE2;
 Thu, 26 Sep 2024 07:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335506; x=1758871506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YhoeGNlcQu9E5/ePisXw6KNkO6yfTUfLmsTqkVBlElM=;
 b=BUXqDFQkHNyL15mLsPFez8v7SzDn3oWUd/juwZhU06P8CmbteotI0PwQ
 BhOV1H6JoRNEBBDPbU0AXhtOz7bSTybWGK4qmcAX4tbp2kJfK/+h7/0Cw
 H0otY4hP65T+BEKXHtiKPs0pBSqV92CaZ30AaXn1fXZLWOFR35uY3L9T9
 0+bi49Jpspld5LhJLhnXafFtt09py9mLWGbpuDuFzWFTsDTKti7zRSjSL
 bCp1cB5Fo8TlNkJgss4T6yndVAc/6IDp0WDTw8FU3I+h3c6Q14wZ3ibaW
 Mx/UYdj1N+3UA7XVHuz8hy1nR4OYrmpfPbb5LVvgvNO+dbaHSfjauyRUc g==;
X-CSE-ConnectionGUID: bMtnmOe0TQWnvo9PhgKiOg==
X-CSE-MsgGUID: IbKe0/g2TRu7PvMez+Ic7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829464"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829464"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:25:06 -0700
X-CSE-ConnectionGUID: 8uad+ewPSyeg0ezCUKgrvg==
X-CSE-MsgGUID: sdP+23jeTqCjYS+C9EvmZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334498"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:25:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/15] drm/i915/dp: Simplify helper to get slice count with
 joiner
Date: Thu, 26 Sep 2024 12:56:35 +0530
Message-ID: <20240926072638.3689367-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

When bigjoiner is used, we need at least 2 dsc slices per pipe.
Modify the condition in intel_dp_dsc_get_slice_count() to reflect the
same.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a0afb4991334..eb92fda21e87 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -999,8 +999,12 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
-		/* big joiner needs small joiner to be enabled */
-		if (num_joined_pipes == 2 && test_slice_count < 4)
+		 /*
+		  * Bigjoiner needs small joiner to be enabled.
+		  * So there should be at least 2 dsc slices per pipe,
+		  * whenever bigjoiner is enabled.
+		  */
+		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
-- 
2.45.2

