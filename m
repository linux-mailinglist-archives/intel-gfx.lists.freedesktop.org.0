Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F3F968157
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC7010E241;
	Mon,  2 Sep 2024 08:05:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y6lUBAha";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA50310E23A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264323; x=1756800323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U2eR3j/PbmtZd7fxfFMb2lsw9WLSelfDM+cNmjcioEw=;
 b=Y6lUBAhaPRFatr3qCKFNSL6g0oSZ9LRf0uGL18778DqEnfoWLT+/wR4f
 D8FGSYnvoAtX2pDhFFk1E/1sy60/65FCxIOVxgof9LOMnU2MvakRKVYEN
 EbOrc25nXObHhxbH9jDTALcTy9Pm4zVOtxuWaGgIPXRAVYTAHrC8BHBAf
 FrfASsed6aQsYPl/wlG7C8WzoVSTC2Rgmi+3ebtlKQZHO3dMe6VYpeiGe
 yOutKMZDJrG538dMFE970sRY2DW+6rwwmET020k9p1Mo4FwPeJaY2TRpf
 HRyt+fk+t/MZ7IIROYYkhxT5VQbpKei9vu199f8+h29GkB1+Mx6nlTSM9 w==;
X-CSE-ConnectionGUID: MybJ+J3oQ/i1KWoA+DuXtw==
X-CSE-MsgGUID: 4Ff3YSzRRvqWDA6ZVOcEBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967415"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967415"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:23 -0700
X-CSE-ConnectionGUID: uGMwReAlSfK06hgezHKtDA==
X-CSE-MsgGUID: kn7WqlZnQrS9IQCzMKwOYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039963"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/13] drm/i915/display: Add fixed_rr to crtc_state_dump
Date: Mon,  2 Sep 2024 13:36:34 +0530
Message-ID: <20240902080635.2946858-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

Print vrr.fixed_rr along with other vrr parameters.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..55bb1c327fab 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -296,8 +296,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_printf(&p, "vrr: %s, fixed_rr: %s vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(pipe_config->vrr.fixed_rr),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
-- 
2.45.2

