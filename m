Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891499DA2D0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7829C10E9F7;
	Wed, 27 Nov 2024 07:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wh+2FCy5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D89910E9F2;
 Wed, 27 Nov 2024 07:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691338; x=1764227338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5OPtXCqNmffMNVXux6iWpT/4GXEjjnSfGwCDZIm8uGA=;
 b=Wh+2FCy5UdvS+AWt1D3lR9JHONxCkYhHIjuBw1UQGmpdH6/hWKaOu90j
 2BILZWi6x0hqkLNG6WNHHx8XMtS4hpk8mcBtDcrqg64g3D7ZDv2IkFgrV
 j6QM/sI+fct+Qcx8cZubIsHaJGO/Vzkgov62tEv0tRG5w9O55GN6X9fCF
 V7+EHkOlZAUeugyspf9S2etqBz20sumYoBvvnjbx5mh3+yAANWft3xEs9
 IAd1EQbK2eGcqUcVCO4r4civ0+jCVdLO5MbZRHoFuy/DGUp7GsTxxj6tO
 OfYdiMOWxpenBrRBSOIZvogTwkWuNLeyZkGZhsUqVQjpHTxt7gyNR+gk+ g==;
X-CSE-ConnectionGUID: znKMLjH2R6i2s82zSAEhbw==
X-CSE-MsgGUID: kOTzXHt6TyK+ivvRKeJi/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667883"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667883"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:58 -0800
X-CSE-ConnectionGUID: Oi05JNSqTamjcaJ8H3pf+A==
X-CSE-MsgGUID: 8Zj2WXalRYqX5KVXp5xn1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270369"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 2/7] drm/i915/vrr: Simplify CMRR Enable Check in
 intel_vrr_get_config
Date: Wed, 27 Nov 2024 12:41:31 +0530
Message-ID: <20241127071136.1017190-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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

Combine the CMRR capability and enable check into a single condition.
Set crtc_state->cmrr.enable directly within the combined condition.
This will make way to absorb cmrr members in vrr struct.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b7e3bb75c7a7..7f5c2054ab69 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -433,10 +433,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-	if (HAS_CMRR(display))
-		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
 
-	if (crtc_state->cmrr.enable) {
+	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
+		crtc_state->cmrr.enable = true;
 		crtc_state->cmrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 					     TRANS_CMRR_N_HI(display, cpu_transcoder));
-- 
2.45.2

