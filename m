Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E94AA66C74
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F18D10E349;
	Tue, 18 Mar 2025 07:47:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="msh+3u9A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE1D10E1FF;
 Tue, 18 Mar 2025 07:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284064; x=1773820064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dIVP8wt3LRdkorY6ZkZEN9MdlyK7ZaQW1023vxFZqY0=;
 b=msh+3u9ACf89sn/WtwS1GI9pMX7YxIflsaGQCv+aFvT0igP4Q1lB9j37
 75RPJkJslrcNyQwQymbov+sZOiL+MoHrFf2a5zbi91tT4AIHX2vQBwSW2
 WU2LMH1sO5Y+PWtOqXn7hN6tJlp0be/jXEsTw/6o5+HxZNsMNFgtYAk52
 2948hnRb1kjJ2b4N9s2SMFlPCKJgUy0s6ScWDOYLpfb5CRrgRHH2pJrGA
 8pEwzJE9KqBOxwsYr0/A3uVQHKIOnXenEfDP4/iZW7OvpliqC1CZ0sjdd
 i5IljVVl4BjNLNmd7IPZg7DzsulOT+xKAar72u73DH9PGhoY6UFGMwUP4 g==;
X-CSE-ConnectionGUID: l5S/xIucTxWAzjmvZGgM1g==
X-CSE-MsgGUID: GBY8ZqwYQaW08rU82FKndQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173781"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173781"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:44 -0700
X-CSE-ConnectionGUID: iNooPMnBQ3+rxzHa/KJfAw==
X-CSE-MsgGUID: Mvc4cVs6QZKYYAPRhY1pzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681583"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/16] drm/i915/display: Disable PSR before disabling VRR
Date: Tue, 18 Mar 2025 13:05:29 +0530
Message-ID: <20250318073540.2773890-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536..246da49af00b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1173,6 +1173,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_pre_plane_update(state, crtc);
+
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
@@ -1183,8 +1185,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_drrs_deactivate(old_crtc_state);
 
-	intel_psr_pre_plane_update(state, crtc);
-
 	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
-- 
2.45.2

