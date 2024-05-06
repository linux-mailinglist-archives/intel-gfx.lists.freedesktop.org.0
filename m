Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E628BCA50
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B5B10EE83;
	Mon,  6 May 2024 09:16:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YKKOmpvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E157010EE83
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714986982; x=1746522982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x4heV7qHUFIr+TM/anbrqo0TQT9ou1Q2im5rDV7RPIY=;
 b=YKKOmpvsooZqalAAti0aFngc9To2nBahCc61wLMXUxG5Yx0CyW+rOxaP
 rXhUuXSJBK7CiclvrQ55Ha4odcCPfipUSFCTRkc2Ul7Qojm2/tOay7jaT
 q5es7pkJKtyaJNmJW9vb/RUew5iBnBvRkwkKN/jj04gspedOvRf02jDE8
 EW8v/4FlPA02f9de8kIEj+GPTlVenaUCPtW0HiH1D5N4tnt8+Z3p9Sv/K
 Pn6TdzmmxZL7v3g0FL5wcUkwT5z3vBPasa5XB6HgVh9oGpP9lSMgDIzUX
 5n2YvhLS2dTAr+VORSBwRiyRBzToNXlarLVFBQJ1zjgsGuRbiKnuzIyGn A==;
X-CSE-ConnectionGUID: xOAHI866QNeKyOgCqPyl/A==
X-CSE-MsgGUID: zQ0G28dtTQu4nt+7HpJxyA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14529503"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14529503"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:16:21 -0700
X-CSE-ConnectionGUID: qcr4JQKtTOSVCtWe+axoIg==
X-CSE-MsgGUID: PNNjGkxARrGsGlANk1TIjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28109006"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa007.fm.intel.com with ESMTP; 06 May 2024 02:16:20 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@intel.com
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Date: Mon,  6 May 2024 14:36:25 +0530
Message-Id: <20240506090625.2812332-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

UHBR13.5 is not supported in icl+ as well. This has been removed for mtl
by the commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 163da48bc406..7098ca65701f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -507,7 +507,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
-		1000000, 1350000,
+		1000000,
 	};
 	static const int bxt_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000
-- 
2.25.1

