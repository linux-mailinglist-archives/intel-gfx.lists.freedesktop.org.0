Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB11A42136
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B443710E43E;
	Mon, 24 Feb 2025 13:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cH6gOiTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E73B210E16F;
 Mon, 24 Feb 2025 08:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385858; x=1771921858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=16ElwTUWMtNU7BKSzye/2pgKFvhXzcXixuYy63F4C6o=;
 b=cH6gOiTGNQQXs2NvcCZvdjacudankO7DjbqU2W+3Am7JzUwtdSUpaGCB
 p0Dz3a6X053ScojtSlLMr+vZShA911i8j5m1y9q2zFqn/iVbp9m9vZfSt
 xFqUsA+uvDvgyKunSks7ti5hnEB/gCiHDa/ZHaR86/dIEhJHIUtXg4nG1
 ZaQXcXQ1KOEeJZuUqin589eLCJ+3Of81UGLCfg8xw9c5BLhpabmKN4NZM
 rbiIflnZEJnHo3fSNni3Pran5bn4eyqneNeW0ACNbSOpj9rarvTc4BrQ9
 HQ/9E/yCZMmFb3J1XeM74Ou+AxjiNh6LaAr1gKv5uGOhHbMExv1l98XKW Q==;
X-CSE-ConnectionGUID: zzpHJXEiSTCyXiPq5puhtw==
X-CSE-MsgGUID: 4k4H0nOGT06v9buQu/Egvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250277"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250277"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:30:57 -0800
X-CSE-ConnectionGUID: G0s+hYYiRqGKKx5+BMw1lQ==
X-CSE-MsgGUID: sY81knxLSrWtGveompsfaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630702"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:30:55 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 3/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Date: Mon, 24 Feb 2025 13:38:42 +0530
Message-Id: <20250224080847.326350-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
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

LOBF can be enabled with vrr fixed rate mode, so add check
if vmin = vmax = flipline in compute_config().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index d94c96ba46b1..1438e125cde1 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -288,6 +288,10 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
+	if (!(crtc_state->vrr.vmin == crtc_state->vrr.vmax &&
+	      crtc_state->vrr.vmin == crtc_state->vrr.flipline))
+		return;
+
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
 	      intel_alpm_aux_less_wake_supported(intel_dp)))
 		return;
-- 
2.29.0

