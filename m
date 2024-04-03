Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9103B896E1D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0332F112A10;
	Wed,  3 Apr 2024 11:23:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZjAZYDdM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B6A112A0D;
 Wed,  3 Apr 2024 11:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143411; x=1743679411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eIgqYGq4fLCpTqOPXETspxhbgXdmYP4yn2mIRzbzD4U=;
 b=ZjAZYDdMeg8AhoqU4T4It+g71dvquvZCxgBFhzbMmeCs8ImoMBUbks/d
 GGTK+uFstIW75e06p2RTdf3oy05Uq4oIp+cOEgxrBEYX3BdUhjmZfIMqc
 sBlr0WJqXETj4oeZDGRl2Lwg+eppcwMWMDtbkCYfceWf0n70YMg/PlhY7
 woiqdgwJWS4cGqsAAjpEDgwMhhyc9BBWCg+kvHBJQ1sYR1L2EhN2pui5C
 6KLgBRFlVSrc/R6r0+Y6LYPT40MHYP+kg2JKYbAj7dgAu0iiPQMQi98za
 vl3yjTEFOMBGvVtMztNAGy05oFZKavG3u8aJYBAvHnJARlmJTeONSCR4g Q==;
X-CSE-ConnectionGUID: WUpZz1rHTQ+0Vrs5qZnw/g==
X-CSE-MsgGUID: rX9TpA8SQUKBEQFw71X6pw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824151"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824151"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:31 -0700
X-CSE-ConnectionGUID: CF3f0NkHToqJccqdvXAzIQ==
X-CSE-MsgGUID: XNZvrs/YRpyiAvY3bkSs4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358559"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:29 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 20/25] drm/i915/bmg: BMG should re-use MTL's south display
 logic
Date: Wed,  3 Apr 2024 16:52:48 +0530
Message-Id: <20240403112253.1432390-21-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Battlemage's south display is the same as Meteor Lake's, including the
need to invert the HPD pins, which Lunar Lake does not need.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 3cad6dac06b0..542eea50093c 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -218,10 +218,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		dev_priv->pch_type = PCH_LNL;
 		return;
-	} else if (IS_METEORLAKE(dev_priv)) {
+	} else if (IS_BATTLEMAGE(dev_priv) || IS_METEORLAKE(dev_priv)) {
 		/*
 		 * Both north display and south display are on the SoC die.
-		 * The real PCH is uninvolved in display.
+		 * The real PCH (if it even exists) is uninvolved in display.
 		 */
 		dev_priv->pch_type = PCH_MTL;
 		return;
-- 
2.25.1

