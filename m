Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA58A4216F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473D910E50A;
	Mon, 24 Feb 2025 13:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YoZjpFJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E820610E13C;
 Mon, 24 Feb 2025 06:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378595; x=1771914595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8lZuLBLUAJeR7s9dxFH5OsYgiW9BX5aCUFeJxRi9CQc=;
 b=YoZjpFJej5vPuUOsDc/8fJHCBBRv6tpLVqcsCapltWfE/aAZuWjnOd61
 uy/8t6M4+bQpOlapHxmHW834xvOxtRtQCg/DnfvnV+xtKMT1GM8StIKfB
 tqvpSt304Glnr3oa5gdQFOGL3ARMcTwJlohky8CuS7eeLpIVAL3dAMMza
 6xz+vdFWluar3ZdwmcYAxQvL8GYlQFkbssDWG298PglPFH9MZcz8HI9b7
 vFTkN1UkaLQgnx769RRzW+pH7zO8cbP6FDD62t5Ol6P1Yfm2g8UiUh9yz
 C8ISka0lB6VsXrXjZ1Mu3HmwgMEgt3c4BCf+IExqm14Wwj/yjtUHDh5sU Q==;
X-CSE-ConnectionGUID: rvlrlO+8S9SEKZSL4+VwPA==
X-CSE-MsgGUID: z3lllSUMSWSov+KIBxHHLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719677"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719677"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:54 -0800
X-CSE-ConnectionGUID: ENDfu23GTzqctRBwlXfzug==
X-CSE-MsgGUID: s9Ot22nvTSKkgHEsu735qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076558"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:54 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 11/20] drm/i915/display: Disable PSR before disabling VRR
Date: Mon, 24 Feb 2025 11:47:08 +0530
Message-ID: <20250224061717.1095226-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

As per bspec 49268: Disable PSR before disabling VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..0db84af1063a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1202,6 +1202,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_pre_plane_update(state, crtc);
+
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
@@ -1212,8 +1214,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_drrs_deactivate(old_crtc_state);
 
-	intel_psr_pre_plane_update(state, crtc);
-
 	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
-- 
2.45.2

