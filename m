Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FFFA82E6F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F5210E6AB;
	Wed,  9 Apr 2025 18:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J/9fp/Dn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA48E10E6AB;
 Wed,  9 Apr 2025 18:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222733; x=1775758733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OOcMrlBMuurxVzXAm0I45mRu1ISAgdbPHijKTq0XGZU=;
 b=J/9fp/DnQI62fsSsBWtadHDqCPvFAf2LDUrKGSKukSj0sKCvMjrv3KBc
 T+Q+/XRNaxMW6GAa9gLsHejABsZJCQqhgfXWYwE/WPlp76PTMkKHpMTa6
 zVtmBAdBYZjKepWmHkIzxV6sOU7wbP54GXA2SfvSrV6SbmB3gSHTDxNQE
 uuEQj+0LqLCJOUWnVop1+kAB+qjj8yWoRLSL6ztoq6B+6AzeKuTdVCk8Q
 X4UZI7Yo7nL4k+x1JFQfk+KB57NcDf+421qEBdSAsrpw50FHlso7jXJpz
 NR5bGKLBu0fSK19Er4cjbbAOkFTha0SZYgh+IohMnZfF7BeQRcNm4c9Ak A==;
X-CSE-ConnectionGUID: 24nTZlxERLSUgQ4tFd0Chw==
X-CSE-MsgGUID: 9ULuCYU/Rtykas9kdF/ZfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45729972"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45729972"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:53 -0700
X-CSE-ConnectionGUID: Ri2IeM3dRF25Ms4NOHL5Ow==
X-CSE-MsgGUID: 43HdrluQQMCGZuJ1zpq81Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879046"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/14] drm/i915/dpio: switch to display->platform based
 platform detection
Date: Wed,  9 Apr 2025 21:17:50 +0300
Message-Id: <36166cd0cfdb88df4c0322c4edea69fad5ad7177.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
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

Prefer display->platform based platform detection over the old IS_*()
macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 429f89543789..aa080022571c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -222,9 +222,7 @@ static const struct bxt_dpio_phy_info glk_dpio_phy_info[] = {
 static const struct bxt_dpio_phy_info *
 bxt_get_phy_list(struct intel_display *display, int *count)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	if (IS_GEMINILAKE(dev_priv)) {
+	if (display->platform.geminilake) {
 		*count =  ARRAY_SIZE(glk_dpio_phy_info);
 		return glk_dpio_phy_info;
 	} else {
-- 
2.39.5

