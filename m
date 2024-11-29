Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A589DBF8F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 07:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A5C10E499;
	Fri, 29 Nov 2024 06:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwST0lLo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E193810E499
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 06:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732863025; x=1764399025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JWJFAPXU53XGtet39m2t9mCk9sPweUk/DRDeSUkkBZk=;
 b=CwST0lLodNSIWO5z/ohtUlFRDt2R6nDo6W+QosBc+11SiLrMISm+p1Pk
 hiv9SVU8H/MNgWXezgq2dShBdEMgbGrHWT7zXHGjaOUzw2QkEGO9Vit55
 XvlclqumDotYBpW8JIS0820YKKT/Go5Kc4dLqnrOa5j+CoKcOr5NR1P/7
 gfxbivwWXbO8RePxSAFa94Hzv9lLtIZxJ/MjN4nntzNcx+826cyfhFZC7
 sR4cUA7dFRe9vmWXByL2wWXOiCSK7RElqll90nHdL7HWOHIJpNOWdEXIr
 sydM5WWQyHRWY/nWEdxfcukC0MpwAp3VzrvjGaP2sINGaclEMkHSgqMra g==;
X-CSE-ConnectionGUID: 9Qbmg+EhT/uv2uTPg3PxDQ==
X-CSE-MsgGUID: DiqNdWYkQKS0Lc4zfy3adg==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44468031"
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="44468031"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 22:50:25 -0800
X-CSE-ConnectionGUID: zSPjyrGSS8eeAB4ugLjaTg==
X-CSE-MsgGUID: SqjvL2pCQzyk5554MlMGaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="92589189"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 22:50:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2024 08:50:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sagar Ghuge <sagar.ghuge@intel.com>,
 Nanley Chery <nanley.g.chery@intel.com>, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH 2/4] drm/i915/fb: Add debug spew for misaligned CC plane
Date: Fri, 29 Nov 2024 08:50:12 +0200
Message-ID: <20241129065014.8363-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
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

We're currently failing to provide any debug output when the
user passes in a misaligned offset for the clear color plane.
Add some debugs prints to make debugging actually possible.

Cc: Sagar Ghuge <sagar.ghuge@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 223c4218c019..e478d412785e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1694,10 +1694,14 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		 * arithmetic related to alignment and offset calculation.
 		 */
 		if (is_gen12_ccs_cc_plane(&fb->base, i)) {
-			if (IS_ALIGNED(fb->base.offsets[i], 64))
-				continue;
-			else
+			if (!IS_ALIGNED(fb->base.offsets[i], 64)) {
+				drm_dbg_kms(&i915->drm,
+					    "fb misaligned clear color plane %d offset (0x%x)\n",
+					    i, fb->base.offsets[i]);
 				return -EINVAL;
+			}
+
+			continue;
 		}
 
 		intel_fb_plane_dims(fb, i, &width, &height);
-- 
2.45.2

