Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869B4A75BAF
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Mar 2025 20:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5FD10E345;
	Sun, 30 Mar 2025 18:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XdPH12KJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20FB10E344;
 Sun, 30 Mar 2025 18:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743357971; x=1774893971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4rRwOlwAX55kNVfRgYwOOvyspZCorxIXn5b6ede//Xw=;
 b=XdPH12KJSE3mSqLscwBujPTgatAwhtZ8Hpw6A/8Ys8aE+cYXUZw9XYkR
 e0IwJoRvL1aCvGaOJAlfibJhb8YkLCh1qW+tvQE9VEprZhWbhcqzD/pHo
 l5N+LpYFrZtwxF8Di0cin9BIyEdfLyhakFX/OZunECP37t3XJbq7DTx3k
 CISS3uTIduFISnO/RYJEe4LxCh7yETsP4IiUlsl6pqutCyg9MHzPHhO7A
 CBx7ZKWbPqXR+cavAyHr0kddw61igGWD3E5XZfvtzQu3TbdgYBsezO3mf
 s9JhPXsQ355cMqLWHEvG194+/PUpc9bQgQKoqsldbyCXIWo4AkprtiSF7 Q==;
X-CSE-ConnectionGUID: x0CswFiLQiu8dHYFor9JhQ==
X-CSE-MsgGUID: Vg2qUl5US5qXt/Gevv43CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="48316741"
X-IronPort-AV: E=Sophos;i="6.14,289,1736841600"; d="scan'208";a="48316741"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2025 11:06:09 -0700
X-CSE-ConnectionGUID: M8RBaY0qRAC6YGuVkO8rNw==
X-CSE-MsgGUID: FVJF795fQDSuuriq89voNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,289,1736841600"; d="scan'208";a="149081570"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2025 11:06:06 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 jani.saarinen@intel.com
Subject: [PATCH v1] drm/i915/display: implement wa_14022269668
Date: Sun, 30 Mar 2025 21:05:54 +0300
Message-ID: <20250330180554.729353-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
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

Woraround recommend programming the fbc_stride for bmg always.
Display driver handles the need to program the fbc stride using
the override stride. So ensure that we always get the override
stride in case of bmg

Bspec: 74212
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e89cee323d8b..970f8c96cc85 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -252,9 +252,12 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 	 * Gen9 hw miscalculates cfb stride for linear as
 	 * PLANE_STRIDE*512 instead of PLANE_STRIDE*64, so
 	 * we always need to use the override there.
+	 *
+	 * wa_14022269668 For bmg, always program the FBC_STRIDE before fbc enable
 	 */
 	if (stride != stride_aligned ||
-	    (DISPLAY_VER(display) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
+	    (DISPLAY_VER(display) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR) ||
+	    display->platform.battlemage)
 		return stride_aligned * 4 / 64;
 
 	return 0;
-- 
2.43.0

