Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDA5A1B884
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCD010E9A9;
	Fri, 24 Jan 2025 15:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YQbWRbU4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C80D510E998;
 Fri, 24 Jan 2025 15:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731511; x=1769267511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/kYH1lIwNp+YNrHwpP0PsEE90e6JTgR/lT7Fsa4eENU=;
 b=YQbWRbU4uQTHDFwTv7Cb9ad5BEIrCQD4XkrNFoOnjWdmC+sT9nI0yIrr
 qaqFBlnF6+q77X8WD+miHjbrNmEMS787Bd9gIy66sNMCMOI46h+YdvjCF
 fTadCJbzK3uLJghFVREZeNF6N7PD32haYmvL5ziFM0umH6b5oXnoMU1p+
 lcYZfMh6lj2D8533m1FDnhrWGzSVhwJU99ueJ3S7XBWgMMoYS9jPcmt8n
 yPkhOiijNZeTfmHQjPpWW9ngtfj8Zen7wRCubkKjITqH0jdiVaLqJUPl7
 QLLiBA7MaEX3bKYryzvqjtrNduEDHwYPmSJ2upkrYVq/XTy0nz2vaHiJy A==;
X-CSE-ConnectionGUID: 54obPyfYR5urI4xOTas+7g==
X-CSE-MsgGUID: ugUpggcLSj21aHDUUeuMKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177386"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177386"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:51 -0800
X-CSE-ConnectionGUID: 4m0X8yhlT6+e9uLL7A9fRw==
X-CSE-MsgGUID: w0gf6wNtS+WbXdIwVAFJ9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221200"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/35] drm/i915/vrr: Remove unwanted comment
Date: Fri, 24 Jan 2025 20:29:52 +0530
Message-ID: <20250124150020.2271747-8-ankit.k.nautiyal@intel.com>
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

The comment about fixed average vtotal is incorrect.
Remove it.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index adb51609d0a3..532abdb334b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -276,11 +276,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	/*
-	 * When panel is VRR capable and userspace has
-	 * not enabled adaptive sync mode then Fixed Average
-	 * Vtotal mode should be enabled.
-	 */
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-- 
2.45.2

