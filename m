Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD45C35F8E
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10AC410E760;
	Wed,  5 Nov 2025 14:08:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZhN21pbY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06A810E761;
 Wed,  5 Nov 2025 14:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351717; x=1793887717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uKpmbsemb4HuyQSL7WLbGYoqe4XrHTvntdf9pNmd9fA=;
 b=ZhN21pbYEx2N0ME+VnIhsvLXEfZoNVox+Ex4xBjuP+x+aKL6MyCPtum6
 Lose7eabZgHF0X8+MUWyGFcHkh/kWmbovvDUr7eZ3wRhNhlsQWK1qe8v1
 cCqqfPyuwWMHPSU9gMVa+EuZEp0FGeFE3tIedwgK2JkZotcAOfFnEwLYJ
 rAG10ZUeSVpbgznjCkWASQC1baL7V659auXIxD6UNuywEUT1S7ocBBJFb
 rOstzGoG7UaOctoPn1ugkChIdrjmyMC/oAWqGZNTKtMf91jzuCtWQynJL
 XUpwdxdxRCX0V1dxd2AL6EHkQVF8mVTs1wxFz7nTbopSd92XFuUs4o2UA w==;
X-CSE-ConnectionGUID: B6HtTlRvTcyb68NPBKAeLg==
X-CSE-MsgGUID: hJivFYgOR8uEBxCiKcslYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348309"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348309"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:19 -0800
X-CSE-ConnectionGUID: h6iEai+QR/ypsMU88PT+ZA==
X-CSE-MsgGUID: ti+q5u0FSxyI5ycjkaH86w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562968"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:17 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 06/17] drm/i915/xe3p_lpd: Horizontal flip support for linear
 surfaces
Date: Wed,  5 Nov 2025 11:06:55 -0300
Message-ID: <20251105140651.71713-25-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting from Xe3p_LPD, linear surfaces also support horizontal flip.

Bspec: 68904
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-6-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ba1bf0bd4c55..bc55fafe9ce3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1748,7 +1748,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	}
 
 	if (rotation & DRM_MODE_REFLECT_X &&
-	    fb->modifier == DRM_FORMAT_MOD_LINEAR) {
+	    fb->modifier == DRM_FORMAT_MOD_LINEAR &&
+	    DISPLAY_VER(display) < 35) {
 		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] horizontal flip is not supported with linear surface formats\n",
 			    plane->base.base.id, plane->base.name);
-- 
2.51.0

