Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 499EE632118
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 12:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6038C10E036;
	Mon, 21 Nov 2022 11:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C21D10E2B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669031193; x=1700567193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8wzxw5XpYWf63aBsQoe2aNYAp02DkGR86f9ReppNk/8=;
 b=H1+azrj1Qi6q532bg6HsUXmd6p6CWXSgL32tqOZDmwqSBhR4TQk5BymI
 rDRkHfjEoGjkStSp95V1o66OpaNhHilQzELDLR73MoxZKdwg/OAad2dAc
 DdYEdUCKFubuwYV/C67xVixs7V43Z+2SKZHE/aOBYxReYVMB3thvNc4Dz
 9YbxbHWNpf13guJKsmtRvt64JD2mGiC4b4x4jQ4X+hILYku67WiGXnLvT
 2gtpbeHSHzOAMzYzY4CG0TwRxzMXT7XRLY+1OP4qwueq2WSZSvOCF14H0
 wXotMDDsb/s8S3LkJu08miebKImlC2xbsPcFe9qfmcY8NqwICOYKK3+oE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="340396712"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="340396712"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:46:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="886092245"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="886092245"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2022 03:46:31 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 17:16:43 +0530
Message-Id: <20221121114643.3581159-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121091855.3562288-1-arun.r.murthy@intel.com>
References: <20221121091855.3562288-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Disable FBC when VT-d is enabled
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

The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for Gen9 and
Gen10 platforms.

Bspec: 0852

v2: Updated commit msg and corrected Bspec format(Jani N)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..5e3ef03832f2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1652,9 +1652,9 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 
 static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 {
-	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
+	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,cnl,kbl */
 	if (i915_vtd_active(i915) &&
-	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+	    ((DISPLAY_VER(i915) == 9) || DISPLAY_VER(i915) == 10)) {
 		drm_info(&i915->drm,
 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
 		return true;
-- 
2.25.1

