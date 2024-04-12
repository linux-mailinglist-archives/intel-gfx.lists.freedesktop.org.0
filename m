Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBDA8A353D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3E010F77A;
	Fri, 12 Apr 2024 17:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWbrqBs8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA9110F78C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944723; x=1744480723;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iqNn5ZISMldaPEOcAXx0K564gKKXrov36aEsZAYVoyA=;
 b=GWbrqBs8YKsqHiFaNOK248MyQsAd8V2mrKR9cSDUeLGml1XJEsbzZn8P
 gDUXjEXFcIZXB6x1JNblt448K4xBPV7jml2RDnoRhp/qWSMkp3TvudA46
 +sYHxkZmQ+yzBXbMAEsWLfEwO6ttJ4SWcE5PUrHrztm4ol8PtdcO9ZepM
 wliarKAh/9lMKvLy44DFjEl939ISJkvaDjJnSqhPDrUnrcZq809B2FII+
 o1TmNAUY5xsygHl7SUj41i+IyjNVw5og3FNjf6u2xtQWwRm28df9OHw8R
 RszaIHaMdV/hwlM0z0LJha9F9ACncLrgaKmhNCyFnB/AGRAwjeuJMJn+x w==;
X-CSE-ConnectionGUID: MsHm6A7KR1iHrU0iSkGNyQ==
X-CSE-MsgGUID: v/sdKjjBQN+XVsNb269zVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586979"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586979"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:43 -0700
X-CSE-ConnectionGUID: WuvaCexXRCyV82Pc5KPJQA==
X-CSE-MsgGUID: hO4RUndyRk+d+T6sSTNOEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383085"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915: Enable per-lane DP drive settings for bxt/glk
Date: Fri, 12 Apr 2024 20:58:18 +0300
Message-ID: <20240412175818.29217-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now the bxt/glk PHY code is ready for per-lane drive settings
so enable it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index fb84ca98bb7a..947575140059 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -334,7 +334,7 @@ static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy) ||
-		DISPLAY_VER(i915) >= 11;
+		DISPLAY_VER(i915) >= 10 || IS_BROXTON(i915);
 }
 
 /* 128b/132b */
-- 
2.43.2

