Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322239D3330
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8657E10E386;
	Wed, 20 Nov 2024 05:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuDQKZ4b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A10C10E386;
 Wed, 20 Nov 2024 05:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732081050; x=1763617050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wl4TMLDN9lE72zXqezGck4NFV8tWfBeDeFqs0+g1mjI=;
 b=RuDQKZ4bfWUrr+1nIZucg6heTfmmDr1r3m2N5Q668Qcp8D8cwhrVtUW1
 UnDBQn7eo/nEsLIq6RcCUE6e6Bgc4UqHK6Ab3XCbcVNS/GCOjNvbLGETj
 GIl1dyyEY8eFfBOe5aFf2QCRYst9On1Doh52pSTVDb/hpB6veA5muslSk
 N9K1cXCdLOox7kzEvxvazjTcvOMxI5nQgGJ/KoLbkCCoOcCcnVM+YlU9f
 YQhuLRpsi25V4oEnEedjcba7y1yTmgYorUVfOe6DoDK0RcoD196D4FVt8
 WFoC9X1GsH07VLyDr6mTPRYY3nzI9MIn/t5Sx7jZ4RABLS3VBGCzGw/0n Q==;
X-CSE-ConnectionGUID: uiCY9SouTsSodCKZGuWm7Q==
X-CSE-MsgGUID: 1AdkXTtASEidsC+Wn69NXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32179431"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32179431"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:37:30 -0800
X-CSE-ConnectionGUID: 4PDuqunzQceYZ/0ZT1nf2g==
X-CSE-MsgGUID: Ay23HVfFTk6/rplIuTKShQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="120748929"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 19 Nov 2024 21:37:29 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/6] drm/i915/display: Disable joiner and pfit
Date: Wed, 20 Nov 2024 11:08:33 +0530
Message-Id: <20241120053838.3794419-2-nemesa.garg@intel.com>
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

Disable panel fitting if joiner is enabled as
backporting of joiner part is required in case
of pfit.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 50861aa78a89..e214e19f8174 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -187,6 +187,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 	int ret, x, y, width, height;
 
+	if (crtc_state->joiner_pipes)
+		return 0;
+
 	/* Native modes don't need fitting */
 	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
 	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
-- 
2.25.1

