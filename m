Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D36AB4E47
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 10:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB9010E54F;
	Tue, 13 May 2025 08:38:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EyJ2YCV+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA34610E548;
 Tue, 13 May 2025 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747125479; x=1778661479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FpLUPADJMHW7xd/86gDJbtuth0sx8moDWvPacgWn3Xs=;
 b=EyJ2YCV+r0HU/pQpEQB/8Cm1h3lUAKLSr50Th8RkpPjtxmAIQuAEp745
 SYcXXAw9n3vWixi31BIdh+tiz9q8SeDSuSzWHZ0TX5inXZJKWktgIBV53
 Am/juP3FHBg8nzIPf028KtIsMUSenJ7uoy6Ko3vTqZkTXtSP832sk3xsZ
 Uxd/G9YFbe3wdt/cwyvRs5/tdqh6riAzkdUUrscDEO2+sNIVBOn+4gRVB
 a0gUK8QZ7k/K1/xdIaBpG5IxlcsSHdaIeks34jYjNekPIs0JQrT8stg4g
 YU8Xtp2/JIiWnvdEDUU/2JoZuwWYy6mSu8B6MGe+bRWuJy1wu94Xxf5y2 A==;
X-CSE-ConnectionGUID: sEHLTHeVS2WX4xx+EX6ZZw==
X-CSE-MsgGUID: Ur1MhKgHR7CXcJCAnUXI8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="36581993"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="36581993"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 01:37:59 -0700
X-CSE-ConnectionGUID: yZXIEe10S4CU5JOm66ZoZQ==
X-CSE-MsgGUID: noCOLt0CR5CmN4ujrN0ejA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="168738844"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 01:37:58 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH 1/2] drm/i915/display: Fix get_ana_cp_int_prop() argument type
Date: Tue, 13 May 2025 14:08:02 +0530
Message-ID: <20250513083803.2596286-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513083803.2596286-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20250513083803.2596286-1-dibin.moolakadan.subrahmanian@intel.com>
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

Change get_ana_cp_int_prop() vco_clk argument type from u32 to u64.
vco_clk is decalared as u64 in the caller and there are scearios in
which vco_clk will exceed max u32.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index c6321dafef4f..41c6c111af1d 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -46,7 +46,7 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
 	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
 }
 
-static void get_ana_cp_int_prop(u32 vco_clk,
+static void get_ana_cp_int_prop(u64 vco_clk,
 				u32 refclk_postscalar,
 				int mpll_ana_v2i,
 				int c, int a,
-- 
2.43.0

