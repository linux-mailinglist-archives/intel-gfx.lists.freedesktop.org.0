Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B64EDA1B889
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6040010E998;
	Fri, 24 Jan 2025 15:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPj0Txmu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C4D10E9A8;
 Fri, 24 Jan 2025 15:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731523; x=1769267523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wk6gNev03fsFiKR1+23Oo534rn7+VIH/44Tuz8S2mL8=;
 b=GPj0TxmuBVix+nsjz7tNObUieKwgb2YglSFIcjPh6fyylkZY1DC8A2yk
 Y58PxtyhLVAm3WEfV/bTjkVwWSGJaYd345Lncio/qWF7BOkQHPVDqD0d1
 Ee5dPC0+u7+liEoOeUepijIFqs9gEnaMSNGNKLKCX7vVa58yAqqisMddz
 rx3fFWCBBaEBm2sfUmfrGjqlb0F7jlsVdoXiH9otwH+unU+qW1UTCM2JH
 ACOFmxz4NujZTwP8syBx4g1hLyDEIF5vW9SWJPNprY4yrwPpzQIKFvcNw
 tM+pCBluSDMHfv/9hwfJeb0FWSGPqWFUnzcfius8yWXkuSzXeMBTZH14e g==;
X-CSE-ConnectionGUID: Kz7DAlj2TxuuG4rjUO5WXg==
X-CSE-MsgGUID: Tx+QfjkKTgex77RyqlRWpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177401"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177401"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:03 -0800
X-CSE-ConnectionGUID: jgSNDicASCSnNs6xPONJLg==
X-CSE-MsgGUID: yHtR1hAnTgS1mjLF64lNtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221248"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/35] drm/i915/vrr: Simplify CMRR Enable Check in
 intel_vrr_get_config
Date: Fri, 24 Jan 2025 20:29:57 +0530
Message-ID: <20250124150020.2271747-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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
index 90fd6fe58fce..48893351273c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -511,10 +511,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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

