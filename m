Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66521BE976C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 17:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFE510E169;
	Fri, 17 Oct 2025 15:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U63KmIMg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F36A10E169;
 Fri, 17 Oct 2025 15:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760713543; x=1792249543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MnqpeFPmJ3O3oZKmT43+GltxiXHdLjQYV0SrCHU6adU=;
 b=U63KmIMgGnQjiOUgz8iTqaw2wtMp4dBHorSGddgToOhXmZph9IIK4yUS
 fNyA6YAdDe/opp/BaDJB1X1rLrdYTWHO1dJ1VL01UuQnJa0Ss9b1Uh2pE
 5JHouEzlwsUddd2wk6q3NnzLVXdrg/qmW/jhtc0PtWOr/lxw0qOuh+6Ao
 01RLfatU3t0wim5CG3l5vYFnypUDqShilbBlwIGrdDwkrJAcpHZClzvnt
 c+L0tD8SstOsXn+R8xy6hziQIgRxTbIt+RxstgRGrPY+S3eozFd8FxEse
 P4MWoN4U2hmsgCROaaTWz0pgIKNG/pehjmZ1hWoLKNmCg2u1VkeaCl2Mx g==;
X-CSE-ConnectionGUID: QFx6LfitTsCaD724w975Og==
X-CSE-MsgGUID: Uqh/jzywQAqm9jy2fQgOfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62833979"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62833979"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 08:05:42 -0700
X-CSE-ConnectionGUID: 99IiWiFOTCm4eIhKmj9cZw==
X-CSE-MsgGUID: Ls/fDfg2SWGXTdTvLW5yRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182451362"
Received: from rgsanthosh-system-product-name.iind.intel.com ([10.190.238.65])
 by fmviesa007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2025 08:05:39 -0700
From: Naladala Ramanaidu <ramanaidu.naladala@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 Naladala Ramanaidu <ramanaidu.naladala@intel.com>
Subject: [PATCH v2] drm/i915: Add fallback for CDCLK selection when min_cdclk
 is too high
Date: Fri, 17 Oct 2025 20:35:26 +0530
Message-ID: <20251017150526.781715-1-ramanaidu.naladala@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017114821.780466-1-ramanaidu.naladala@intel.com>
References: <20251017114821.780466-1-ramanaidu.naladala@intel.com>
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

In cases where the requested minimum CDCLK exceeds all available
values for the current reference clock, the CDCLK selection logic
previously returned 0. This could result coverity division or
modulo by zero issue.

This change introduces a fallback mechanism that returns the
platform's max_cdclk_freq instead of 0.

v2: Update safe fallback value to max cdclk.

Fixes: Coverity CID 2628056

Signed-off-by: Naladala Ramanaidu <ramanaidu.naladala@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e92e7fd9fd13..da97c38cca14 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1561,7 +1561,7 @@ static int bxt_calc_cdclk(struct intel_display *display, int min_cdclk)
 	drm_WARN(display->drm, 1,
 		 "Cannot satisfy minimum cdclk %d with refclk %u\n",
 		 min_cdclk, display->cdclk.hw.ref);
-	return 0;
+	return display->cdclk.max_cdclk_freq;
 }
 
 static int bxt_calc_cdclk_pll_vco(struct intel_display *display, int cdclk)
-- 
2.43.0

