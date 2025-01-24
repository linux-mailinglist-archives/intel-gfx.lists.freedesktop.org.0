Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC9EA1B899
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2A910E9B4;
	Fri, 24 Jan 2025 15:12:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jok1GRaR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7247B10E9BD;
 Fri, 24 Jan 2025 15:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731552; x=1769267552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2uvLK8+O/MCAd66EN0QnOp4sFjnTcqvtFkPNT32Og7s=;
 b=Jok1GRaRw5jsi+patBhJWGb/KrwNRlc8vS8anuzXbKSrQhvJXP0x1c/J
 nZTy900H4ctg7443oyDIw/Sz6JrOuYRBAWxhoJL0LdVAVEjBByEcJVgbC
 ly8a+vsniOCY4Mvgegv+53t7hFJ8++G2qAJdQDd/1RUckvTZGGCYnqCJz
 W33mh0uoWgmfPcLwE6iG53MliNrw8Ksd4xi8EQwZt8WOTJfHEfZm6X7vb
 dRu7N0n7aTSAjnU9SI6ugqPEhn9S7zJCPLRyUUFeCuk1OSYguAbmBHXtq
 uj6+QSqGc7RI3jmaMip2QhR4r3a2PC3P+TMF8Qty09BRCtUUd3FQnaKlw A==;
X-CSE-ConnectionGUID: RhHnmmY5SgirgARucashYQ==
X-CSE-MsgGUID: a6GvRQ1ARQK3tClLj6hseA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177449"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177449"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:31 -0800
X-CSE-ConnectionGUID: Xwv7xwehRpqAGjVMyTiYSg==
X-CSE-MsgGUID: 4UpXtTFDSzm5QY1XwJMPxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221513"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:29 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 24/35] drm/i915/vrr: Adjust Vtotal for MSA for fixed timings
Date: Fri, 24 Jan 2025 20:30:09 +0530
Message-ID: <20250124150020.2271747-25-ankit.k.nautiyal@intel.com>
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

DP sink uses MSA timings for the fixed refresh rate mode.
For using VRR timing generator for fixed refresh rate mode, the HW prepares
the Vtotal for the MSA from the VMAX register. Since the MSA Vtotal is
one-based while Vmax is zero-based we need to take care of this while
setting Vtotal value for the fixed refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index f485c3e35d68..5a1b0d61c483 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -264,6 +264,18 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+static
+int adjust_vtotal_for_msa(int vtotal)
+{
+	/*
+	 * DP sink uses MSA timings for the fixed refresh rate mode.
+	 * The HW prepares the Vtotal for the MSA from the VMAX register.
+	 * Since the MSA Vtotal is one-based while Vmax is zero-based we need to
+	 * take care of this while setting Vtotal value.
+	 */
+	return vtotal - 1;
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
@@ -274,7 +286,7 @@ int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 	 * For this set the vmin as crtc_vtotal. With this we never need to
 	 * change anything to do with the guardband.
 	 */
-	return crtc_state->hw.adjusted_mode.crtc_vtotal;
+	return adjust_vtotal_for_msa(crtc_state->hw.adjusted_mode.crtc_vtotal);
 }
 
 static
-- 
2.45.2

