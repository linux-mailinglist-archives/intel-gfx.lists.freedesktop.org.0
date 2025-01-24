Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80624A1B898
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24A510E9BA;
	Fri, 24 Jan 2025 15:12:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XjhEgM3H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB28D10E9B4;
 Fri, 24 Jan 2025 15:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731561; x=1769267561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ykAZy3KuQU6cVOzZ02SVaVbR4d+WPPVMnrE05yV/rPo=;
 b=XjhEgM3HRPgsxlaaXCUVSLqfLenUGgO7mmltNoEmOQXeQe8JanYzhEl2
 5LY6EY0V99HKfU8HlO3q4p5s4VNpy6fbCeFlKZEz6pORqFYWYZw4YAzRH
 vNnllFA/ji70LmOzrlJS5JAyRLyaULD0ZdcbZu/gqC5+KgQeJbgm4zWlm
 e9jLzC104pgWZBuBuBLLDbxBfzTDWecP9KZhKZZh05I5LCFPbtSumQFZw
 CzZpknekAHiSWJxJJPKZIZdRzznwfR4vyOx8bxaUuTd1PhOwafS9OqrqE
 8PQvECtbm3h3KcIkoXV3UONRuJj6bs9ytqVif4tdf6Jw8gyWIBow9Tme8 A==;
X-CSE-ConnectionGUID: Tal04F3/QvCiDrGDtg3mBQ==
X-CSE-MsgGUID: pXaBtEy8TIuPlIkxjuUDow==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177476"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177476"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:41 -0800
X-CSE-ConnectionGUID: cG+L+6plQzSdMIxkJOlGeg==
X-CSE-MsgGUID: BqaxpyxtSEuGpQ82PZOSJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221599"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 28/35] drm/i915/psr: Allow PSR for fixed refrsh rate with VRR
 TG
Date: Fri, 24 Jan 2025 20:30:13 +0530
Message-ID: <20250124150020.2271747-29-ankit.k.nautiyal@intel.com>
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

At the moment PSR/PSR2 are not supported with variable refresh rate.
However it can be supported with fixed refresh rate while running with
VRR timing generator.
Enable PSR for fixed refresh rate when using the VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index dcbdcdea8a0e..d7abf730134f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1688,9 +1688,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/*
-	 * Currently PSR/PR doesn't work reliably with VRR enabled.
+	 * Avoid PSR/PR when not in fixed refresh rate mode.
 	 */
-	if (intel_vrrtg_is_enabled(crtc_state))
+	if (intel_vrrtg_is_enabled(crtc_state) && crtc_state->vrr.mode != INTEL_VRRTG_MODE_FIXED_RR)
 		return;
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-- 
2.45.2

