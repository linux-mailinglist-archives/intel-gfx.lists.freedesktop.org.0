Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4B097C048
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 21:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B487F10E28F;
	Wed, 18 Sep 2024 19:04:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEFjq2G5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E15110E28F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 19:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726686287; x=1758222287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z6TyuE052BdKCldMBfCIFLiyhjCjuHHz/NAsRZaoM4U=;
 b=SEFjq2G5oz8eylZ6OrgtA2NsTQZF8T52auh0Q9by0MaAoQ6ROj3YiOcm
 RoeY4SRbikFj7A/Yr+A+ouRA9gvxjZ/xuu4oJOIDgZuAIWgCvZIT/ctDQ
 G7NMVlBRdcXi+hFFoqRlMuJH7snWRCBJGKRzuY8ECDwZ40VTlVHzDzodO
 51vQG3Dv4/etckHjGL+giDDdkvXtpkMFcThwW+fkgpUNzq6VJzhr4wV3o
 3GbhTDDKYUmPO+my8NnvT9WdBuTjwWIDfrUh4E3pli0d0ujpkAJFLjJUQ
 F2ND1EU8D92kzvDJkX27nzhCt/OygmnxxFvahwVdF0chy3p82P+wghMlY A==;
X-CSE-ConnectionGUID: 34Wy7/rlQ9KEQ3UHzSVHtQ==
X-CSE-MsgGUID: aEje3QtlSti4xoFZLG+71g==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48147715"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="48147715"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 12:04:47 -0700
X-CSE-ConnectionGUID: pRWphbksQRG1ksdlYQaiiw==
X-CSE-MsgGUID: bxcqxnn9RNe1rEnJ+2XalA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69786647"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 12:04:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 22:04:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/dp: Make intel_dp_get_colorimetry_status() static
Date: Wed, 18 Sep 2024 22:04:40 +0300
Message-ID: <20240918190441.29071-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
References: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
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

intel_dp_get_colorimetry_status() is not used outside of
intel_dp.c. Make it static.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f44951d8a0f8..6a1b0e93a1fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3915,7 +3915,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    str_enable_disable(tmp));
 }
 
-bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
+static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 {
 	u8 dprx = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a0a31fb64716..d1436face8b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -117,7 +117,6 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 bool intel_dp_source_supports_tps3(struct drm_i915_private *i915);
 bool intel_dp_source_supports_tps4(struct drm_i915_private *i915);
 
-bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
-- 
2.44.2

