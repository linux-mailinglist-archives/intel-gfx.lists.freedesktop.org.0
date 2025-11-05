Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB174C35FA0
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368DB10E766;
	Wed,  5 Nov 2025 14:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoVT+gqC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB1E10E768;
 Wed,  5 Nov 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351730; x=1793887730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bjJWJUygiFz1F/sa1YUnvsE0AdlVhonZ23jG4RHWPjs=;
 b=aoVT+gqC5SuMdQ5s1OEvuh7OCUlK3XX2dkj+3UkaYuZywEY7lbYjYBM9
 83tZQhIEAintLn1SjgXk8+nFsXSLL/lKTHVqbnHfc9+//sfjoUAMP408Z
 AtvJTnnTk/6SCK1+DP4gafJTgUs23FK8EEuMFr+6viuNJ4Ed3g0HoSiJr
 WS9eKQsS28/+1F3kh5hKLommHRVERuEk2JHqHv0T+YkcGqNE6s93lFWkv
 ZIjKpjKS8VD0IF2wemiBAFMSSbaxkiDBzhlsp3IEWNsDpSwD0Xo0PP50o
 e9CV+rctMZe1+/JAmYD8eYGozoecWLKCE/HmrDEEqZCy/0xbH4QFwTfuF Q==;
X-CSE-ConnectionGUID: YBiX2ValRsGPxrBKTbeS3w==
X-CSE-MsgGUID: 2liQEwHPQuCcoOyiVNzZ2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348424"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348424"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:29 -0800
X-CSE-ConnectionGUID: 1+Hy7ZiOSsKSWwNBLC8Slw==
X-CSE-MsgGUID: qjKzCMdDS/yFrP+cLD2yLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191563000"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:28 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 13/17] drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
Date: Wed,  5 Nov 2025 11:07:02 -0300
Message-ID: <20251105140651.71713-32-gustavo.sousa@intel.com>
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

Xe3p_LPD has the same behavior as for Xe3_LPD with respect to DMC
context data for pipes C and D, which are lost when their power wells
are disabled.  As such, let's extend the condition for Xe3_LPD in
need_pipedmc_load_mmio() to also catch Xe3p_LPD.

Bspec: 68851
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-13-00e87b510ae7@intel.com
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

