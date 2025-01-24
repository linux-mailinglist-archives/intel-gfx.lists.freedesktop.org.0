Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E25A1B89A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B5D10E9C0;
	Fri, 24 Jan 2025 15:12:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OTbwvpMA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400C510E9C0;
 Fri, 24 Jan 2025 15:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731563; x=1769267563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QqYJKJr2YbH5t+WafOn0JCEc3o85jLXuiuRHGsWHouA=;
 b=OTbwvpMApHJOA/+MowtkTRLtZ8Icn+2724cUuHTN7JqlIyfkmJ9uTlo4
 6VPLQ/EDZCaczLH/IE1crsafEO2FmyLqYvncZOWM3y5rdhZ99CVdoDyo7
 rpzoppM3PTCIIXQ0AC3HJbKmJgMXORLEUU/B1lPfyYto/KL6t0vpJsdOY
 jnbzmB9X/Og7oTeQN6ZuDPm/mpWLOaEKZ8oXMVddcZyZ0a/Fxn4Jw4nFQ
 NRLQY3wgVH6jFOMx/AHu5bRBAXAmNadQUsocTgs6DUMoOjWqy9k/oY3gG
 wBLBulRRIOOs+Z1g7+TEuuxY10AHYrbMwScpeWPxUZSokcof8NOdnJE5P w==;
X-CSE-ConnectionGUID: sbBcwqZpStWncioQtKrEnA==
X-CSE-MsgGUID: QIRMU6mRTeS5qrPNDRPq8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177489"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177489"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:43 -0800
X-CSE-ConnectionGUID: GgEWmld9RminJ1lxQ6THFw==
X-CSE-MsgGUID: ynOGmPVeRkCEkG47OcILtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221616"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 29/35] drm/i915/display: Extend WA 14015406119 for PSR2
Date: Fri, 24 Jan 2025 20:30:14 +0530
Message-ID: <20250124150020.2271747-30-ankit.k.nautiyal@intel.com>
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

Wa_14015406119 is required for PSR1/2 while working with fixed refresh
rate with VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d8383e1d783..7bdd41158a93 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2609,8 +2609,9 @@ static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
-		IS_DISPLAY_VER(display, 13, 14);
+	return intel_vrr_possible(crtc_state) &&
+	       (crtc_state->has_psr || crtc_state->has_sel_update) &&
+	       IS_DISPLAY_VER(display, 13, 14);
 }
 
 static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

