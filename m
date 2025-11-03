Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D19C2D6E9
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD8610E464;
	Mon,  3 Nov 2025 17:20:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RmA+Xvha";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07D410E464;
 Mon,  3 Nov 2025 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190422; x=1793726422;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=7ARLApiv9lGk1yiAzVeyACzKbKQK4a8d5/DQrg41FRg=;
 b=RmA+XvhaY6JSQJy4tUX68C8g2s3mPFQgo524wRfGhwcdcCm+UsS3BL+X
 uusY/XeWUDmhJD7isQ8GN2YCTW51VJpTC6sndAKvTQk1mvaKNWN68aoPW
 RBbkuNWdk25KnwPXodNtQrbr7nmIKh4F0gLVdJHGMTPqowllBMqvVmSuQ
 /shG0cB1so2DiyLpvCs60UE/JN8RED/ZGf0jD4JgnHPoh5m0PHHWtAF+H
 lShGLgTujttWzrBPj7VHL2+FaOO4evQFWoylTiZ4em3zP26UOt41xBglM
 aKO95+32a5ZJbGocxDzBRhZuNR0Z6lv4DHWoB2p8gXFfLaVsgDUnjoBil w==;
X-CSE-ConnectionGUID: KR0+twuHTUCz8PMPTL/oLA==
X-CSE-MsgGUID: D8Ot2HngToiiYOuR2iLqdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310036"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310036"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:22 -0800
X-CSE-ConnectionGUID: wNJDqAJFTBWcs79UvqQXtQ==
X-CSE-MsgGUID: DotV69fqSRG8ztLhg6E0qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606470"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:19 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:04 -0300
Subject: [PATCH v3 13/29] drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-13-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
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

Xe3p_LPD has the same behavior as for Xe3_LPD with respect to DMC
context data for pipes C and D, which are lost when their power wells
are disabled.  As such, let's extend the condition for Xe3_LPD in
need_pipedmc_load_mmio() to also catch Xe3p_LPD.

Bspec: 68851
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1b3a9b5608c0..ca70cc4932df 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -718,11 +718,11 @@ static bool need_pipedmc_load_program(struct intel_display *display)
 static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe)
 {
 	/*
-	 * PTL:
+	 * Xe3_LPD/Xe3p_LPD:
 	 * - pipe A/B DMC doesn't need save/restore
 	 * - pipe C/D DMC is in PG0, needs manual save/restore
 	 */
-	if (DISPLAY_VER(display) == 30)
+	if (IS_DISPLAY_VER(display, 30, 35))
 		return pipe >= PIPE_C;
 
 	/*

-- 
2.51.0

