Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412AEA259D5
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B13310E4B0;
	Mon,  3 Feb 2025 12:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZD+cm04v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F302C10E4B0;
 Mon,  3 Feb 2025 12:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738586996; x=1770122996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3KBH3jfigL1dWjiHBks6aEwljTEY0aj2NyghchJZMuQ=;
 b=ZD+cm04vG14zWkPZtmGDXW1jlhJGSNFHP6W2YEvw0ZQuuBruCLrEntiE
 eLCE9qo1h9PxEeWC0vHI1iPBAxIQE7p+AZxI2v3/n+/7jJRTv8PhRPO6b
 3hTd/gx+8P9DJb7fUGLJtiYBRgTHp/U4egt1WWOBDq3UAn0qyIevXJk6Q
 VbHx4lUhQPIlJok+dI6hdrKWMOpa+tvNiAdAquOzyyRseB0iYzExI6BDj
 +u7FTklBW1yXvShKE49Bka9cC7qCdbTXnudu8/2VF+Oy54xI+4CXdD735
 hiQKeplu6S9NYyjY/oscQ91ONkn/onRP2q+Jo1vYWejLc6xR43ihSRbd4 Q==;
X-CSE-ConnectionGUID: YoNTlox0QTKQaBrqBNl0bQ==
X-CSE-MsgGUID: ht0bJbRxTgC5W5lhqqxHIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548020"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548020"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:56 -0800
X-CSE-ConnectionGUID: oK0vKOIWQk+75szw3udc8Q==
X-CSE-MsgGUID: uI7N43TqQZOxPt5RGnVLLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528838"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/28] drm/i915/vrr: Simplify CMRR Enable Check in
 intel_vrr_get_config
Date: Mon,  3 Feb 2025 18:08:16 +0530
Message-ID: <20250203123840.3855874-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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
index f8ae3dc6a304..6f314e209e96 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -503,10 +503,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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

