Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BDAB1B0DF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4D410E62E;
	Tue,  5 Aug 2025 09:19:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kgoyMmyL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3484A10E62F;
 Tue,  5 Aug 2025 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385559; x=1785921559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6VsJegsuF1PhZJ0+4SCM2Z8csrsHiBGSRM6uea1+Nl8=;
 b=kgoyMmyLRVeXqScdwuC55ZEgHKSz0mwQdcUHO0JqvEUdCsY5/IdR1Kwh
 W8be2WWrUEz8a5hg7DN1uOZsG16pY3DVpLtG7d3t7alztqqWpRLHzMwvk
 bF7NbG+iATrRhrMJ92nIYFMLlRuRNsGTJwSzhg3mkIesi+HOWdQQIQCwM
 K+14ImKvKoDnTqN5pzJCkSqOo9sTLw4ovGtcvdYx/KrluGCB/oZJiM7gS
 ekAPxq+26CuzVpDRRRdtrbBsfRLWLhCdzjcMxH0kicbqE6H7SF2D75Ytf
 Gl5nWaCbWTjxeuR3E+kAc4Dpr8wL8WRIWr4giLWOvxFM9ogmtXLR/QTFX w==;
X-CSE-ConnectionGUID: 6APdXbtLSxeKCY7Zpc83wA==
X-CSE-MsgGUID: YbkE0YqJSQCTlgIDybS0ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56566656"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56566656"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:19 -0700
X-CSE-ConnectionGUID: QT9NdnXzTuCcXrKAyAqrhQ==
X-CSE-MsgGUID: U+EqZLN9T6KRvAO73t6FCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164738390"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/12] drm/i915: log HPLL frequency similar to CZCLK
Date: Tue,  5 Aug 2025 12:18:23 +0300
Message-Id: <92678b1950681c853541649c6c9c9da04f27e98c.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

With vlv_clock_get_czclk() logging the CZ clock rate when first cached,
do the same for HPLL VCO.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a39133b45309..ab35ecccba63 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -152,6 +152,8 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
 			CCK_FUSE_HPLL_FREQ_MASK;
 
 		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", i915->hpll_freq);
 	}
 
 	return i915->hpll_freq;
-- 
2.39.5

