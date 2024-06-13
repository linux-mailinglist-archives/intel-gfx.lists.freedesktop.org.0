Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8399068CA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E641510E9DA;
	Thu, 13 Jun 2024 09:33:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FEOelZeD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4104F10E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271176; x=1749807176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q0B4zQx5Mpxea1dMdZox9SThuqibMOEEN4zZvj8FJQE=;
 b=FEOelZeD5JAoRpvgNYoiI3+kS0bArdkZdPQWGfIw4lzDlLm5gRa3tgIG
 R9VLqReUxye+TZF6hhgvK5O3WRBmTFGM6V/tevGEGdJd8YnrqW9cFMet/
 kJFydPFrMREsxUBj3UoCFRwccYY+474oMk1xPd8fT43/pTIaBRsYg/rQE
 kWBQpBQinTWIDQF6tmuKLSkAf/CLy9npBZCBZQpmNw7gDq6ZnWcBk1MRM
 0mzNJgh2H1s46R4hN/2DtMC8r3WwcQK9MC6SPC+ufdE9cAs1rVFZIgLpk
 77gHCEQrAfVC/Q7XV3ISZxyUebXqdtlzyusaLWDurmUs4l3S9wHUZ+4ci A==;
X-CSE-ConnectionGUID: 9BVWF+YfQHak62DJoYhm4A==
X-CSE-MsgGUID: 8kSophO1Q0SqQvupaSwtOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802475"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802475"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:56 -0700
X-CSE-ConnectionGUID: UUBT8TppTVOSRgeOTqzUiA==
X-CSE-MsgGUID: 2cRIaM7dRrWE/l6kykfXtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523329"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 03/20] drm/i915/alpm: Fix port clock usage in AUX Less wake
 time calculation
Date: Thu, 13 Jun 2024 12:32:22 +0300
Message-Id: <20240613093239.1293629-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Port clock is link rate in 10 kbit/s units. Take this into account when
calculating AUX Less wake time.

Fixes: da6a9836ac09 ("drm/i915/psr: Calculate aux less wake time")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 90072f6e3a33..67848fc1e24d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -125,7 +125,8 @@ static int _lnl_compute_aux_less_wake_time(int port_clock)
 	int tsilence_max = 180;
 	int t1 = 50 * 1000;
 	int tps4 = 252;
-	int tml_phy_lock = 1000 * 1000 * tps4 * 10 / port_clock;
+	/* port_clock is link rate in 10kbit/s units */
+	int tml_phy_lock = 1000 * 1000 * tps4 / port_clock;
 	int num_ml_phy_lock = 7 + DIV_ROUND_UP(6500, tml_phy_lock) + 1;
 	int t2 = num_ml_phy_lock * tml_phy_lock;
 	int tcds = 1 * t2;
-- 
2.34.1

