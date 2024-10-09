Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E809974D7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 20:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8ED10E7BC;
	Wed,  9 Oct 2024 18:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I1RunzEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FEA10E7BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 18:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728498150; x=1760034150;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1fUy9oYFyqxrIdjfcoal5ResqCoxjYfpFKm7xkFrH5M=;
 b=I1RunzEimcd7ZlHHdvgTI3KbOz7om19GqpWzCNI67k4hcmJpKx8q4U+B
 WoRGKCectwznFl62W4YRIm4oB8aKcS/EQJIzYpUnBvjKEAAm6MZa+DKai
 goIHqPReZUYEDBAkvhaEf8KcrsBpUF11ar+RHCLv2+eK2MuqqbauTD7zt
 2zILUdLrZczMLEPcCVgDgXdrYlTa4+819KZGBTPu10aSgulacfDg5C7w3
 sr6xm2X+VDOfLg+7lzDcvkP4bkGHb/u9fvMpfQS6neMGTaR+q5ByeuaJm
 VPUUVx4IiS28PUw2yg+m+0gyAdfg0T4+EIQjfI8Vzljc1duraUQfYXBtv A==;
X-CSE-ConnectionGUID: kHZUua36TeGDvHRSniFdBg==
X-CSE-MsgGUID: kWoHs0z3TNSl0kEJOXDL/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15439012"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="15439012"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 11:22:30 -0700
X-CSE-ConnectionGUID: YmxTrLLgQc2YnzxLwKB0BQ==
X-CSE-MsgGUID: QrPWQ0SPQp+nveM90FY1/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76430435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 11:22:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 21:22:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Date: Wed,  9 Oct 2024 21:22:05 +0300
Message-ID: <20241009182207.22900-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
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

Wa_22011186057 (some CCS problem) only affected ADL A-stepping,
which I presume is pre-production hw. Drop the dead code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ea72c54e8329..c85bb1fea92f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2562,10 +2562,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
-	/* Wa_22011186057 */
-	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
-		return false;
-
 	if (DISPLAY_VER(i915) >= 11)
 		return true;
 
@@ -2587,10 +2583,6 @@ static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
 		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
 		return false;
 
-	/* Wa_22011186057 */
-	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
-		return false;
-
 	return plane_id < PLANE_6;
 }
 
-- 
2.45.2

