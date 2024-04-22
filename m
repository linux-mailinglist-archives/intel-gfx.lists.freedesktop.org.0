Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BB28AC462
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FE51127FF;
	Mon, 22 Apr 2024 06:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YFjfXcWu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06411127FB;
 Mon, 22 Apr 2024 06:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768037; x=1745304037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kDsys4IWibGuR/4LVWSOjuN5Nxeo505wgL6y6p40k/I=;
 b=YFjfXcWu3k4W0A2bPDL+5yVjdS9I8toGkBcabtmy91SWNxFSfpOn/qBq
 cee25SRU9W7mRYkdpQX8MW5sUHfI3Om7jerIhdE3QxsxSSK+KTy2RXkXg
 93JIwCYb6H8rJsX7Ye2S6V0c2d/iiQQf+EO/MMqsGxtU/ZuxA3EV/Hw7M
 F5Cmse8URiGHOuyyz/nK6kQr5iSrLTFp9Uk/qJ6Hm/FG/8VXTjGl9Nmfr
 IbtVFR0gAdd72EOE5WflhQC/NjxfZIRKudBcYN1MIG1B7jjxsLOJTpMtA
 aL3RAiAMTa2WR2qF4xVWmBIg99VID287skm3zZtuNp1vm1IYiMoOGDPlH w==;
X-CSE-ConnectionGUID: 27R1SpJmReGrqEVpAe4xbA==
X-CSE-MsgGUID: nn8MAMXOQfWTmpBy5b3Weg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208662"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208662"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:37 -0700
X-CSE-ConnectionGUID: 2GSR3H/PRtq48YBxTCvEzw==
X-CSE-MsgGUID: OKik1INfTxankmiWcPloVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896562"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:35 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: [PATCH v4 15/19] drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
Date: Mon, 22 Apr 2024 12:10:34 +0530
Message-Id: <20240422064038.1451579-16-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

Max supported speed by xe2hpd is UHBR13.5. Limit the max DP source rate
to it.

Bspec: 67066
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 163da48bc406..23a4c5cca8e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -474,6 +474,9 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
 	if (intel_encoder_is_c10phy(encoder))
 		return 810000;
 
+	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
+		return 1350000;
+
 	return 2000000;
 }
 
-- 
2.25.1

