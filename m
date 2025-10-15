Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E893FBDC4C9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C9710E6F1;
	Wed, 15 Oct 2025 03:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rpi5VHB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B75710E6EF;
 Wed, 15 Oct 2025 03:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498244; x=1792034244;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=KvxFXzofwHhsGRv/9f4VAP0SycBpLfxsi5H13czXEj4=;
 b=Rpi5VHB0kGSs0KFhkvS0OAtHzE+Xp1fsC/SFEBVTiSAIf2LSlPda04sJ
 fnXb+GVg2PRoTWgXO5wgHkAc0i9rOHO9PWWzrSxPp88rvuh2NIimaekHi
 D+wuukFRdffYoI1/VLFsBxzSUDyqeHezMsQ5MdDZAv6s6f/ybIS3OMsIJ
 z3P9JH8/pvkq1dUmz+LC2F2eRvg+8zK9j22XDVk5B5BGLNNCgbVgFgYxc
 3jHkynIVam75FK9Ct8R/shnmnSQ8wicgvsZdnbyZ2MzZRaryCQrqyqLrB
 hY5g6QJuKIELqDPPPRTemIElJnSquM111gr0W0VaNUoT/7MgOj6OlKQ/V Q==;
X-CSE-ConnectionGUID: 8KfyqESxSXyedAc+IFIb2w==
X-CSE-MsgGUID: JdEfAL+xRX+aTPgarpL/9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577198"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577198"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:24 -0700
X-CSE-ConnectionGUID: pSEC+a3FQN+gtC+r5H1b6w==
X-CSE-MsgGUID: r8LWG/EWRpqlWNoLK++3JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302660"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:19 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:10 -0300
Subject: [PATCH 10/32] drm/i915/xe3p_lpd: Horizontal flip support for
 linear surfaces
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-10-d2d1e26520aa@intel.com>
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting from Xe3p_LPD, linear surfaces also support horizontal flip.

Bspec: 68904
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 530adff81b99..9f1111324dab 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1753,7 +1753,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
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

