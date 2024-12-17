Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2789F478A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F087610E8B3;
	Tue, 17 Dec 2024 09:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g78A8Sdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE47B10E89F;
 Tue, 17 Dec 2024 09:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427815; x=1765963815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=owyh9ky/7Aukk7SH7i0BMM3+cfW39wpxZw02dBY73U8=;
 b=g78A8SdfvuR8vPlT7J9i+JOZvQEiZtWXYlLkeeWizCcrniMFGmFDdSi8
 p6IrfYQliqW772KcxeF1c/JG6JGiiFWJNmpeg6jni5sV+OSV6iBJ58u9x
 dHgp+JJ3d7dFPCFj5bg2isqZ6vhAvXvJG8rjqeLl8BEOgSEdzmy8kmWzk
 YAWuW7gDcTExf/OUSpEv2vF8s7gg7ZVAYvzuyUXR1hL7foqQzrr0ABZ89
 4ZfzwXUA6/JRRj3FgtIlhgtNvVt3FMZ538LOctoVwnFGzkMvd3FOtlI9Z
 J9IuSbQBVEYXGKyjajjQksG9tsi3uf3Y4pNHuYIURg4ZKrgcc74GEpewW Q==;
X-CSE-ConnectionGUID: e4+DF9BMQNaGDnNllVwVPQ==
X-CSE-MsgGUID: pjlIkQcESQu8W+4L+Iy5NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976197"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976197"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:15 -0800
X-CSE-ConnectionGUID: TQPE9yRGTlGUaNKcrvabOw==
X-CSE-MsgGUID: 6uJ8R3uZTi+XkESwehe3OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052516"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:13 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 14/14] drm/i915/dp_mst: Use link.{min/max}_bpp_x16
Date: Tue, 17 Dec 2024 15:02:44 +0530
Message-ID: <20241217093244.3938132-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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

The link.{min/max}_bpp_x16 is already set in crtc_state, use that while
computing link config for MST.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 689fbd6bcf9b..a9d9d7694acb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -428,15 +428,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 
 	crtc_state->pipe_bpp = max_bpp;
 
-	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-								  crtc_state,
-								  max_bpp / 3);
-	max_compressed_bpp = min(max_compressed_bpp,
-				 fxp_q4_to_int(limits->link.max_bpp_x16));
-
-	min_compressed_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
-	min_compressed_bpp = max(min_compressed_bpp,
-				 fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
+	max_compressed_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
+	min_compressed_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
 
 	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
 		    min_compressed_bpp, max_compressed_bpp);
-- 
2.45.2

