Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55511A6BB22
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6425410E799;
	Fri, 21 Mar 2025 12:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LAwVMYBk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00FF310E799
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 12:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742561482; x=1774097482;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nr/po7nwl16Sz3/kWMlb/ATvHGMtSpq66RQE+t8sTEI=;
 b=LAwVMYBk5SVyZZwz2mpvKPMnUSbOieCiE+uGeb1GWad3q/oLtUszdWak
 SrtYfxGFDE7Qs7kI/xArKyw7EhIwzOiBSOc8gVDgpZZ/TtOLDtBR4wrE9
 3N0FKG0YUwvJtM3+UxYw7s2liA4gZHcWyiATEkySRY6qsrxRwtrJG3rof
 769Agwjr8sGZQqzFmlgmRHRKOe+oJv4wU/cN1GJB9lavClWD+ajO458vv
 Z/762agPtPgWa8iWPndtwP2uw5TM7oovGLQRjnWF2p0QzCk0XoHTOzw0o
 yFbHofuNCPl/I92Ove2se7bB1DwqlT+4cydrwA1e+zCXufM/p6qKRAagE Q==;
X-CSE-ConnectionGUID: XyMNcMCOS6mnrC8NEUSYdA==
X-CSE-MsgGUID: AL3uQXtdQVS8DX8N140Htw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="54494208"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54494208"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:51:20 -0700
X-CSE-ConnectionGUID: XVtveZLpTnSha2DG77NRPA==
X-CSE-MsgGUID: q0Q2ihi4SW2JgKaH9CNe2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="154402178"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:51:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RESEND] drm/i915/gvt: use hardcoded reference clocks
Date: Fri, 21 Mar 2025 14:51:14 +0200
Message-Id: <20250321125114.750062-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Usually I'd argue hardcoding values is the wrong thing to do, but in
this case, GVT looking deep into the guts of the DPLL manager for the
reference clocks is worse. This is done for BDW and BXT only, and there
shouldn't be any reason to try to be so dynamic about it.

This helps reduce the direct pokes at display guts from non-display
code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 4efee6797873..5e08f4df172c 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -513,7 +513,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 
 		switch (wrpll_ctl & WRPLL_REF_MASK) {
 		case WRPLL_REF_PCH_SSC:
-			refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.ssc;
+			refclk = 135000;
 			break;
 		case WRPLL_REF_LCPLL:
 			refclk = 2700000;
@@ -544,7 +544,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 {
 	u32 dp_br = 0;
-	int refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.nssc;
+	int refclk = 100000;
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
 	struct dpll clock = {};
-- 
2.39.5

