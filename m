Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A8E98ED2F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD7810E7E4;
	Thu,  3 Oct 2024 10:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBXCOPZi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EED210E7E4;
 Thu,  3 Oct 2024 10:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952119; x=1759488119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1j52hMYMknvhALN/F9JLty7NqVrl02x174jY1vbRGwg=;
 b=nBXCOPZiYThD2zZXLEIG9HGslh3Elr2EBHGPElH7JDeVgDpW4pcW2MKo
 aNKBOWR31c5yL7QOwg0xRser26OyDubwkWHP0RGe5ijKYsxGLwmTwC6IE
 LhQGntWJ48z9TDH9VvshJrDqWU0k7eLLWPyacAhfiJO3+2gyeD07nlidj
 P6y4a7Pvz9glj6bWG0HS3kGh41LRCMnKlJ/pMyNIfOMbMyfGCggR/Ph1C
 J0/OiLJ1Y5vHsjEYmUCRVqgpYmXTPkBlYRmLeQQDcs4NfssF94L5R82xc
 R/n1OTXtu5SwzpoXMQc+zmEFuyl8yRAqoBRxDgaKvLyiLwDLaE/i9uNYw w==;
X-CSE-ConnectionGUID: XTNuQckWRQ2ugt+YXKTLbQ==
X-CSE-MsgGUID: XcvDwr0BSAm/rL9P+M9OQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270787"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270787"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:59 -0700
X-CSE-ConnectionGUID: LPKEQu63QnG8+tRrq4/ilw==
X-CSE-MsgGUID: Iql4SEBqTxWh+1K8fZ+9IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142504"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 6/7] drm/i915/dp: Use clamp for pipe_bpp limits with DSC
Date: Thu,  3 Oct 2024 16:13:42 +0530
Message-ID: <20241003104343.984060-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 55ee438a4fec..02009ae03840 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2490,8 +2490,11 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 		int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
-		limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
-		limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+		limits->pipe.max_bpp = clamp(limits->pipe.max_bpp,
+					     dsc_min_bpc * 3, dsc_max_bpc * 3);
+
+		limits->pipe.min_bpp = clamp(limits->pipe.min_bpp,
+					     dsc_min_bpc * 3, dsc_max_bpc * 3);
 	}
 
 	if (intel_dp->use_max_params) {
-- 
2.45.2

