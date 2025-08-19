Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC41CB2C445
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E83210E5E8;
	Tue, 19 Aug 2025 12:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AwPDBQXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3038910E1A8;
 Tue, 19 Aug 2025 12:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608077; x=1787144077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D9/DmOK8p4D1SWVNdix4fbjDMnNDcDyI0W+p8aocvoI=;
 b=AwPDBQXiYEuylLL1kYsDiYPoTO7t+bjnS3c7ZVywe/Z1Vmj/bZl95/mQ
 cTMPFud04rgNLpAFP+EZJQp8Xrxi/9nYKmH6ZQUzaragj7LbEnL084qrO
 SQIirDcPeAKgvcBxeLNmEZ4GzNiEvRRxgnsRMS1XYvGOFm76C7lcBV3aF
 E87WpB51ts9UnwTDD+sZaW/t3ET5xS7O69B90+H0pEMvwcXBlGWf+5vPv
 vKSA/fUVv/Gs6iV+Nh3jDseLFSOCHGHymuPdiiO5/lDX68t1Jm9OleH2+
 16JX6Z8aq2o+zEvifpQoBg7XLBu7BkkTq3fjpp7Jsk+hhEssd5gUoaWKX Q==;
X-CSE-ConnectionGUID: xW3XLicwQN2QGIMZiTs3hA==
X-CSE-MsgGUID: uTxX7j+DToyRCxCEXdFiOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69222202"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69222202"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:37 -0700
X-CSE-ConnectionGUID: 3AW3hXUpQUKheXnjE7RSLA==
X-CSE-MsgGUID: iWoUQKzcTCmdCL2qvTvpNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168089304"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 10/12] drm/i915: log HPLL frequency similar to CZCLK
Date: Tue, 19 Aug 2025 15:53:40 +0300
Message-ID: <f2833fe4a1574d019ca0c8e547f1971705958e2d.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
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
index 0694b2b35c86..9ac21f54f548 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -153,6 +153,8 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
 			CCK_FUSE_HPLL_FREQ_MASK;
 
 		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", i915->hpll_freq);
 	}
 
 	return i915->hpll_freq;
-- 
2.47.2

