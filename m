Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB649F478C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07DB310E8C2;
	Tue, 17 Dec 2024 09:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TyP1qtyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D859210E8A6;
 Tue, 17 Dec 2024 09:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427807; x=1765963807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7PbIiIO4d/c+mqMn/TbNIHKEAEADMt9edgdF3KFkNA4=;
 b=TyP1qtyGzj7lhVzwYwTHIA8L5LCuUptk43jX4iGp7WYzSdFz0+RejpAh
 0F6xJHSr+QAPD8o4UmCN0xyHGhcj1AKnxDPt6E+Q8AybU6hyIHe4nTMLF
 lhuM3/chM9dnHVQnm0xcRxqhehIzN3+wUCbqwaRnw6SdhKh20t9reb/tG
 /pj43xIdl0W4+FSmUG8RQWeTTFffzLYXAi3b5yKzMxpSXqcAGfw4MPWOV
 5wFR4pHmEtbnH1K0Z+EhkPRXoEKYA77GgyCiCm8awMjnPOedPYfBf1oPS
 QcaRqSq9piBTCURpLqSrJbcY6eQcvrtkyY6vOkufO/dgYlrpxQ5kU6QcQ Q==;
X-CSE-ConnectionGUID: F8mh1vH6QXe5xDb4BMDIYw==
X-CSE-MsgGUID: SX1tZr4EQESskCftwJV5+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976180"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976180"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:07 -0800
X-CSE-ConnectionGUID: KJadIdKBTESExmk3AUREfQ==
X-CSE-MsgGUID: rVPNZfOpQgarRIVhcTvG6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052462"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 10/14] drm/i915/dp_mst: Use pipe_bpp->limits.{max/min}_bpp for
 dsc
Date: Tue, 17 Dec 2024 15:02:40 +0530
Message-ID: <20241217093244.3938132-11-ankit.k.nautiyal@intel.com>
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

The dsc limits->pipe.max/min_bpp are already set in
intel_dp_compute_config_limits.
Use the limits while computing the link config with DSC for MST.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c9c4c8b960f1..689fbd6bcf9b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -396,14 +396,10 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
-
-	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
+	max_bpp = limits->pipe.max_bpp;
+	min_bpp = limits->pipe.min_bpp;
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
-- 
2.45.2

