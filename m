Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766B2AEA49F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 19:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DA910E8E0;
	Thu, 26 Jun 2025 17:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhVx564t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B9510E8DD;
 Thu, 26 Jun 2025 17:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750959822; x=1782495822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=htabxUoaJCg+sOt9fAgomAyyiujrWH+bdhnHfaEvPeY=;
 b=YhVx564tWk62dSF9Shwn1fYaop9foOfEK0br189eNNsOPX5beBwVNtJY
 9SweQ3wBK1/gwthmKRsHIPQcFpXuzx0WZLMXyOLS/PWPhrKezs/X0fW0t
 tmL/7wuMrLYhIkQ3nMNzPleqrKcasOjIXDw06oVXk2T9eRB2MQ2A+cRcw
 aLa8hRduCBIdOm4NNs5cuZ/4Ja4Jly+yfm02KTnB+Rouud3k8kQcLxRr1
 SsY5AD28a0rT9f+u1itjZCZWvAzfi05q49J3LXOCSQ+uDEj0FXESApRgx
 ofDs2Ba79lSjONuHJy97IRRLLCBrapzSQjYkH4mwT4W1vvNKuEucKtbqP g==;
X-CSE-ConnectionGUID: rZwe7FYdQfOdhWjpof4/QA==
X-CSE-MsgGUID: duzIoc6xTWKxKwIvmg083A==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53141123"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53141123"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:42 -0700
X-CSE-ConnectionGUID: i1llbQAPSTq9nR0YQfZ9aQ==
X-CSE-MsgGUID: Ps1FUWD3Rq2inUA2bYtqGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152207996"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/8] drm/i915/cdclk: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 26 Jun 2025 20:43:02 +0300
Message-Id: <f373a3db2a70ec574e48a0908b5f07dc184db4d9.1750959689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750959689.git.jani.nikula@intel.com>
References: <cover.1750959689.git.jani.nikula@intel.com>
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

Prefer the register read specific wait function over i915 wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 228aa64c1349..2a2d6714e4f4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -903,8 +903,10 @@ static void bdw_set_cdclk(struct intel_display *display,
 	 * According to the spec, it should be enough to poll for this 1 us.
 	 * However, extensive testing shows that this can take longer.
 	 */
-	if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
-			LCPLL_CD_SOURCE_FCLK_DONE, 100))
+	ret = intel_de_wait_custom(display, LCPLL_CTL,
+				   LCPLL_CD_SOURCE_FCLK_DONE, LCPLL_CD_SOURCE_FCLK_DONE,
+				   100, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "Switching to FCLK failed\n");
 
 	intel_de_rmw(display, LCPLL_CTL,
@@ -913,8 +915,10 @@ static void bdw_set_cdclk(struct intel_display *display,
 	intel_de_rmw(display, LCPLL_CTL,
 		     LCPLL_CD_SOURCE_FCLK, 0);
 
-	if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
-			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
+	ret = intel_de_wait_custom(display, LCPLL_CTL,
+				   LCPLL_CD_SOURCE_FCLK_DONE, 0,
+				   1, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
 	intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
-- 
2.39.5

