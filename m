Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7C9A7D773
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7678810E3C8;
	Mon,  7 Apr 2025 08:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FjIZK3OH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EBBD10E3C3;
 Mon,  7 Apr 2025 08:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013839; x=1775549839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S0R7+uEdFKWhxBD+TdUhZyUAOPAl8FlZRQUh5TYUy4Q=;
 b=FjIZK3OHjY35bW8Tydd/l5mZR0v0q+O8Ye8HI3ffGdOIWGqPigX4SiIQ
 2TrucWVr/xMRb6i3AkbQ6UchHIAO+3f/0ZG+0pOrU/ZybtnQaGq7wy7xa
 ryxzXOBv3AIh6VUbN7nkGv5/cCUzVARUNqKEhqHXC6oM8AA3Cfz172/Us
 DPzfxrqDauPe/eOv578fUJ9KvtQPtFaRq6inQ8nhO3r5Kh/lIsY5gz4D6
 NSrtSFdUKVIgPGsmfTGfFqS3IU0RNl3Lc+kJ4RjoPpPi/r/c4TqJ+2lfC
 TNXPn37nh9op/9y4rW2ui42U2sLu9NUYB6JN6AnmPKqf3oLnF2LCedXAU Q==;
X-CSE-ConnectionGUID: 22YWPHbpRjacM5zWlWA07Q==
X-CSE-MsgGUID: LDE/2vVKQU+Q1+kuzedgog==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755791"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755791"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:18 -0700
X-CSE-ConnectionGUID: YtgVjkvxSoqcaMTvAH+8+A==
X-CSE-MsgGUID: Fnt2ry2iTLq301AOu60EvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728095"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/18] drm/i915/dpll: Introduce new hook in intel_dpll_funcs
Date: Mon,  7 Apr 2025 13:46:47 +0530
Message-Id: <20250407081654.2013680-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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

Introduce disable hook to disable individual dpll which is to
be used by DISPLAY_VER() >= 14.

--v2
-Rename intel_global_dpll to intel_dpll_global [Jani/Ville]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2106d3c54190..886e307ea5ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -70,7 +70,13 @@ struct intel_dpll_funcs {
 		       struct intel_encoder *encoder);
 
 	/*
-	 * Hook for disabling the shared pll, called from _intel_disable_shared_dpll()
+	 * Hook for disabling the individual pll, used from DISPLAY_VER() >= 14
+	 */
+	void (*disable)(struct intel_display *display,
+			struct intel_dpll *pll);
+
+	/*
+	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
-- 
2.34.1

