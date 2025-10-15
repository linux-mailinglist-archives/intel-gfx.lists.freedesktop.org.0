Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1CFBDC4F9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADD110E70A;
	Wed, 15 Oct 2025 03:18:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6vLVOBf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C35910E70A;
 Wed, 15 Oct 2025 03:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498286; x=1792034286;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=nRX+C65ChfjsCF2rWaro/9lOhMaLK9JQm+eiJDFmHQI=;
 b=E6vLVOBfLnd30WR2HNFCcyUNfbLMCoKFxLdV6MICC29zvk6hEr5Rz5NC
 dZ5b/M+E89OmJcxwIMjMtIrGUVZEna5++MNa+XNkrMA6A/4q4sM6Fda7v
 O2COZGGAzu97O0YmP771h+cQ4MqGsRGykn/bYVp5bwRTcvhIxP8GczHKD
 ABd67SCjuRmW0rRD0DPw5dPtur14IywMDsQxV4wNsNQBCUTrALDSCOSf6
 Tn8ij0nlSVhkWKJTiqgoqsnSAYFRgixLKbeC1TNP6N/ndca+Qm8xp0Yvg
 txNA11ghOLsiIxvVVoo5J8+kaVlVQZMyiIrxPBUze6TrlvjJdLVB/QsxP w==;
X-CSE-ConnectionGUID: 7ex1QzYvRpabtDp4t/bp4w==
X-CSE-MsgGUID: wyE+NF3GS5ez5gBeoOfj6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577247"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577247"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:06 -0700
X-CSE-ConnectionGUID: Abb2nJNQQAa4ycVY8X0vEw==
X-CSE-MsgGUID: VgEwuLBPRZShVQa2pATpjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302902"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:01 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:21 -0300
Subject: [PATCH 21/32] drm/i915/xe3p_lpd: Extend Wa_16025573575
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-21-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

Wa_16025573575 also applies to Xe3p_LPD, so let's include it in the IP
version checks.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 31cd2c9cd488..f897ad3862f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -49,7 +49,8 @@ void intel_display_wa_apply(struct intel_display *display)
  */
 static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 {
-	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
+	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002 ||
+		DISPLAY_VERx100(display) == 3500;
 }
 
 /*

-- 
2.51.0

