Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5318C8174
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 09:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF9910EDFA;
	Fri, 17 May 2024 07:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/2OEGlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695C110EDFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931033; x=1747467033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y6f+60L/mjI8X2MNR4LkXEvnCRAvvsTWyiq2PD1PsJc=;
 b=H/2OEGlYrbym8uSCLwN8jPU5tXdH8r1K2EFXScfICg/dnk5gKPzxacVe
 qlVHnLp69lMw9ZbdZ5owuDNcJloQrJwx50FLCdEwQYIByHgnVAhI77VpX
 18IocTuvZy6/AuRO3WzGb579TIL/6XE+Oz4Q1xbvd1CDG/pZFJWNfSn4b
 OWJvew7/B6YMm9JiR/OtJfTb1jdm9y+kkH/id8hJ6MKPjrxxjGqaA9dLI
 NygaO1/qSxfGJMr4/xHtbB9VkQHIBVCh0w3RNTV1SI0ggMIs6cTjK1lJZ
 lSrFYX3RmoRfZVMJipP+/ug+BslpSfp5Qoy36TdWflgw4BomR20W1oSD9 A==;
X-CSE-ConnectionGUID: HT74wEJ+RmGmBAX8lNoQBA==
X-CSE-MsgGUID: jumfXgRGSK+MwbznumBWbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15917882"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="15917882"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:19 -0700
X-CSE-ConnectionGUID: JTYKNmojQ9i9eKjvH4hH3w==
X-CSE-MsgGUID: OF7uW9cMTiOTGKmabbBp1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31803587"
Received: from mspitkan-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 68
Date: Fri, 17 May 2024 10:30:03 +0300
Message-Id: <20240517073005.2414293-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240517073005.2414293-1-jouni.hogander@intel.com>
References: <20240517073005.2414293-1-jouni.hogander@intel.com>
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

On LunarLake maximum for IO and Fast Wake time line counts are 68: 6 bits +
5 lines added by the HW. Take this into account in calculation and when
writing the IO Wake lines.

v2: maximum line count is 68 (6 bits + 5 lines added by HW)

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index df0d14a5023f..f5d3eb776833 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1421,8 +1421,9 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	fast_wake_time = precharge + preamble + phy_wake +
 		tfw_exit_latency;
 
-	if (DISPLAY_VER(i915) >= 12)
-		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
+	if (DISPLAY_VER(i915) >= 20)
+		max_wake_lines = 68;
+	else if (DISPLAY_VER(i915) >= 12)
 		max_wake_lines = 12;
 	else
 		max_wake_lines = 8;
-- 
2.34.1

