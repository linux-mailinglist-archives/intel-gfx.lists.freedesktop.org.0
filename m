Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D17BF978D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB4F10E695;
	Wed, 22 Oct 2025 00:32:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OupbgIPG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6ED010E695;
 Wed, 22 Oct 2025 00:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093141; x=1792629141;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=qpqrAU/lTkevowSO/SRAUCosUKuX95CGpleQTz818QU=;
 b=OupbgIPGknguIpCeEAAQ2aeQoBadzlTNKxnu11ctbkIUaBydRcBfeRjI
 SNx2z8QF9D10UfZj+H6oWxlBrWmMdM9JWEIwcn3ETzBjxoqfEyc41dVGf
 Hnc7ekbNBC4zCRgPJfff/mytK0H5PnOt/vK5D7F3hfGafvtsIwt8C725X
 busemT85EsQn3JZ1cSTA6HUrIuHQVXoABKW5GtSd/y36jPiv88DDjluYi
 TLLVp7aezgP/vgFv4mO2gR6mygYvY0sktiRs7J2kI2J+KH+mdNOQDhmAQ
 IyxQJvMWq4I4rWQYP6cTVaDYXsL2M6OHINfS3vgY7634QsIhxVdTjm2Of g==;
X-CSE-ConnectionGUID: VUoBTCIrQ1GfcJJV9Psyzw==
X-CSE-MsgGUID: h0gsbxN+RGKoisWeGzPsAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855796"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855796"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:21 -0700
X-CSE-ConnectionGUID: fJhku9cOQDqgXI7p8hRPxA==
X-CSE-MsgGUID: kaT6vWmHRXWmdqBDH9EgCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132496"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:18 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:48 -0300
Subject: [PATCH v2 23/32] drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-23-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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
index 098061c6bf2c..8b8ed84c6a4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -673,11 +673,11 @@ static bool need_pipedmc_load_program(struct intel_display *display)
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

