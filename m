Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B19B9C3A7C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1177C10E448;
	Mon, 11 Nov 2024 09:10:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bkGgCXKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D94E10E44C;
 Mon, 11 Nov 2024 09:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316210; x=1762852210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wuJQYu8I4tlscB8o9bpwo6jfK0cGyL/B+D1XYLny1UQ=;
 b=bkGgCXKwmPxW+8BssBV7Sc0N6CxqndynuvP8AFIGpme+F8jsRI3OG9qf
 ATdWuy+ob6+8KtQQcyqohA7EAR0FHQQ0jPK9sEaysCrW9IwSz4NEx7MxE
 iy0BSBAOouAfkJQuiJO4OFq4eJreokyKm5oVe60cUByX4zRJiGy6s7qWi
 znTop4t2IKN0/5Tw7vb3uiLzt0Zop6XUlBBBMquqPda+pzIkhb0h0ajOO
 4O8lAt1JZbDrYbyKQp41rfWtU+rGOBDUT+7aSfx41seohmwwCRYCACcxJ
 cgg7bfQl1yz2aY+VkcBPeHlRG4oZoxm287NQ1WvgVXDcXm8WZa/32bA47 w==;
X-CSE-ConnectionGUID: wTUYwhAyTyKOYgHIsM47/g==
X-CSE-MsgGUID: E1OkIF4LQfyiRhx2DYWXmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052342"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052342"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:10 -0800
X-CSE-ConnectionGUID: AVPa3lWfTT+pELrnkFYCLQ==
X-CSE-MsgGUID: xn8HQq3DTHiXgeChPBoH4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762619"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/23] drm/i915/vrr: Remove condition flipline > vmin for LNL
Date: Mon, 11 Nov 2024 14:42:06 +0530
Message-ID: <20241111091221.2992818-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

For LNL+ the condition that flipline > vmin is no more required.
Only for platforms before LNL, set the vmin - 1 to have flipline > vmin.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 83b11f3d5eb5..0c0e78622073 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -210,12 +210,18 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 static
 void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	/*
 	 * flipline determines the min vblank length the hardware will
-	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
+	 * generate. For pre LNL flipline>=vmin+1, hence we reduce vmin by one
 	 * to make sure we can get the actual min vblank length.
+	 * For LNL+ there is no such restrictions.
 	 */
-	crtc_state->vrr.vmin = vmin - 1;
+	if (DISPLAY_VER(display) >= 20)
+		crtc_state->vrr.vmin = vmin;
+	else
+		crtc_state->vrr.vmin = vmin - 1;
 	crtc_state->vrr.vmax = vmax;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 }
-- 
2.45.2

