Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD6C9D3332
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426F510E393;
	Wed, 20 Nov 2024 05:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5a5pnfw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080C310E391;
 Wed, 20 Nov 2024 05:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732081059; x=1763617059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=btz8L2jO/9sLIO+Ahnak6syj4RpmViGG34Pldww+PBw=;
 b=U5a5pnfw1Y2vg9Qz4aUe81Ib6kDxsDX4XZe7ckM1nTcspypjltGS+yNC
 OZO3FivgC6T+JCauBa03qiyNqu8H2ADZcI41QctGlRnafFCTFdw57yiHb
 HFLRd6tZLm7KY+c+2seiFfJTQoFYfsvqN8KlKGsOs0haVAFuPzNRMmb8G
 4DEYdS5i+1Yy1KFxVOmYWzhsF2XLifGRShQ3FWRl35XlWpYey0wzKwaq1
 iTZV/oWRmvunv22VzfliUkuZ+ePbTYyzhl8Ioo+dIUbm3zGxjJFaB44Io
 5EWMY3sUmW21y/thlHUsrKhl1R1+TDaEO2NokgnYlcwv3EKchsXDZUYHS Q==;
X-CSE-ConnectionGUID: arqfQcJ4R7O9j1tFDvRQMA==
X-CSE-MsgGUID: AaLBBJCNRcWoNUu60FscoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32179456"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32179456"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:37:39 -0800
X-CSE-ConnectionGUID: xbOY8PQdQiKSDfDUYko3nw==
X-CSE-MsgGUID: MdJUmSEFSMSXpENzR8Ijsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="120748997"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 19 Nov 2024 21:37:38 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 5/6] drm/i915/dispaly: Allow joiner and pfit
Date: Wed, 20 Nov 2024 11:08:37 +0530
Message-Id: <20241120053838.3794419-6-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241120053838.3794419-1-nemesa.garg@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
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

Allow joiner for pfit after taking into account
the joiner part and making all the adjustments
related to it.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index b2619e1c4021..5bf1dcbbe658 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -188,9 +188,6 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
 	int ret, x, y, width, height, hdisplay_full, src_w_full;
 
-	if (crtc_state->joiner_pipes)
-		return 0;
-
 	/* Native modes don't need fitting */
 	if (pipe_mode->crtc_hdisplay == pipe_src_w &&
 	    pipe_mode->crtc_vdisplay == pipe_src_h &&
-- 
2.25.1

