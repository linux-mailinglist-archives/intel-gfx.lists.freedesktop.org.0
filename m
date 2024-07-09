Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A51592AEB6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF1910E31B;
	Tue,  9 Jul 2024 03:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuRFWgeb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01EE910E47A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495573; x=1752031573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2b22XpkZX/jwfW/ML35NRopWVrqRIdaQbawe9VweTjg=;
 b=kuRFWgebAiCpNFzi3aLbt8ztlz/4D1gpE58gfwp5To74C5qUJr5nocko
 iGRLN0Ta4gnT9hZTGu9YU/X4CZRCFvdPqi8DPdNieASW/fcGvb/dhiNxG
 UZZpODcp3VLGtzlx3WMlZqRxRfLSgK9tHU2y+hJ64V38pNUJ9pCUInuBm
 68DTuEmOQQ1vD+btRbqJjK1h3ny1KARSGtrBOFLinkWcBkHgT2jJewO3U
 1O2q/6/5bFP5pSZqfdZajQZi3zYNDUfhTs5ycC31nK50cZNOUTnC/Vx2c
 X+lzLNKUtA+W5EFCVnfbW3n67MZY5dj5QzCtyydLEgZ90mSO/iHp4umzM g==;
X-CSE-ConnectionGUID: jOOyrkUbR6e7qTqwiK+V0Q==
X-CSE-MsgGUID: clZo2Va7QSSbaMJ5aqsQnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536469"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536469"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:13 -0700
X-CSE-ConnectionGUID: 6v8p09OfTB6KnyBb0Wax4Q==
X-CSE-MsgGUID: vU6J1TqtR56LOsZPWtmNqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374198"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/10] drm/i915/psr: Allow PSR for fixed refrsh rate with VRR
 TG
Date: Tue,  9 Jul 2024 08:56:48 +0530
Message-Id: <20240709032651.1824185-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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

At the moment PSR/PSR2 are not supported with variable refresh rate.
However it can be supported with fixed refresh rate while running with
VRR timing generator.
Enable PSR for fixed refresh rate when using the VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9cb1cdaaeefa..5a228d8e93b5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1523,7 +1523,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	 * Current PSR panels don't work reliably with VRR enabled
 	 * So if VRR is enabled, do not enable PSR.
 	 */
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
 		return false;
 
 	if (!CAN_PSR(intel_dp))
-- 
2.40.1

