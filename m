Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2F29D387A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E805210E6F5;
	Wed, 20 Nov 2024 10:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1uR9rjA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D3A10E6F5;
 Wed, 20 Nov 2024 10:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098945; x=1763634945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MU4mI+QrT5HyKS2L5XFv4b4pfaHk/ZGk08115BTMSgU=;
 b=E1uR9rjA2x/hYT24uGjnQFdb8GaHdhC1J6zURT9gRBQe7wahK2slgmob
 sfaBxtg9UQQAfewaDVlt0TE49pAFFWJACWvS/919Z/HkaUQQMP201A0ip
 iMtji2tqp1df8fO0WnfnhHwPFHOXczF3iw/D8QvR5QyOY1sjff+PoqV6+
 qXNEs96zAwMdk7XpbGBN4hrMPhssBp13vcnzmwJaONLlD+F+O8C6bvbxv
 xWB9vhoQ1dKQwMDQ202qchepVyXCznHgqa0d5UpFlsOte63pRim7r5IwN
 1NwAjWx+QEHqFj6mZ8o3r3hZsi6+CatKTzYyfNMfh2CDmPzXS5nOsnrVb Q==;
X-CSE-ConnectionGUID: e1vU9zstTkusH7qxN889/Q==
X-CSE-MsgGUID: EMbQ9xg6Rce9WZUPEIexjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520069"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520069"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:45 -0800
X-CSE-ConnectionGUID: D4xKvKMDRmy76h1warqlPg==
X-CSE-MsgGUID: Ul2lqV2tSjafYkwCdgl/5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674108"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 10/12] drm/i915/dp: Use clamp for pipe_bpp limits with DSC
Date: Wed, 20 Nov 2024 16:08:00 +0530
Message-ID: <20241120103802.134295-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

Currently to get the max pipe_bpp with dsc we take the min of
limits->pipe.max_bpp and dsc max bpp (dsc max bpc * 3). This can result
in problems when limits->pipe.max_bpp is less than the computed dsc min bpp
(dsc min bpc * 3).

Replace the min/max functions with clamp while computing
limits->pipe.max/min_bpp to ensure that the pipe_bpp limits are constrained
within the DSC-defined minimum and maximum values.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 827368b6cdb9..6cd3ae2db1a9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2520,8 +2520,11 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 	int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
-	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
-	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+	limits->pipe.max_bpp = clamp(limits->pipe.max_bpp,
+				     dsc_min_bpc * 3, dsc_max_bpc * 3);
+
+	limits->pipe.min_bpp = clamp(limits->pipe.min_bpp,
+				     dsc_min_bpc * 3, dsc_max_bpc * 3);
 }
 
 static bool
-- 
2.45.2

