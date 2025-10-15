Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53B1BDC4FF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B341B10E70E;
	Wed, 15 Oct 2025 03:18:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYewAANK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FC610E70E;
 Wed, 15 Oct 2025 03:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498297; x=1792034297;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=psItLFVB2/RYoVUwrT0f6lEpbcoQHHLnI/kgiTGrMxE=;
 b=KYewAANKARRAGQ0KcXXvzSVYf/Qij8dSY/TES1dgQHKbgQ9XBOKGK5Ln
 VKLYOXkrpTXbFmyHP9LKDBQrFA9mTryNl26ej2VLnFyWvT5H6ndIuYvew
 YeKG/tpJVM8/E7Prw65J3/l/KlgzJFmqJuJJELV8bSszQRbEdJsea8zzW
 dEQ8Ozkx/7drhvS642ILsVxlzJWqsgsdDC60k09ttTy6JBybMvYuyeq5K
 OTft2O57SFsV4oayMPMaR6ncjhbNHndydGsg+VQino6p0uNxEzdGLJrSG
 ZkIs5PDUcu7ccvQ/9y/hp8DQlGza6RL27AJdSZS7hkIDoMW5ZFm+NOq2A w==;
X-CSE-ConnectionGUID: xR6Zddl9QViymiZyPIvpCA==
X-CSE-MsgGUID: O8bSWCmKSfu4Dwpz8Rx+mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702557"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702557"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:17 -0700
X-CSE-ConnectionGUID: AydsaSkkQ525d8AAt5u4yw==
X-CSE-MsgGUID: cKpatQY6Q2Wxu0kOAOvxNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302948"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:09 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:23 -0300
Subject: [PATCH 23/32] drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-23-d2d1e26520aa@intel.com>
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

Xe3p_LPD has the same behavior as for Xe3_LPD with respect to DMC
context data for pipes C and D, which are lost when their power wells
are disabled.  As such, let's extend the condition for Xe3_LPD in
need_pipedmc_load_mmio() to also catch Xe3p_LPD.

Bspec: 68851
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index c496e7a5c003..8ede90c033d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -668,11 +668,11 @@ static bool need_pipedmc_load_program(struct intel_display *display)
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

