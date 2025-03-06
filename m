Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F74BA54C02
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A679210E995;
	Thu,  6 Mar 2025 13:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMOPz0QR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418B010E991;
 Thu,  6 Mar 2025 13:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267420; x=1772803420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GJio0x512rJ8swjCRHUE4B+AeIu0fIllFNeoAao+yL0=;
 b=DMOPz0QR+G4AbUpR62M8fYf2PvVaFmInqLtkR4MWH1+l1SC10LWBOzy3
 OmW99VGkpwqCp02un8ZiCEtPZtYVZ/t+8/kZOPzt8PTRKutfCtd/aw8I6
 iP1rQUpQGGmg9fv2mg3TkdrXFuR/aEGc6BA5BXj5FDnobj8mPGsps75rq
 vyLjZcUiJB192pq+IoRHwm2u957LvHBhM9M5oNqzfPObHwGcWSH8V3CDB
 wbdEC3uCw+sXCWlZczoR6lwKzXEQWrqWpsLmfEpKskE9yw74Xcurao08I
 VkHiIc4zot8VvUZmken4kX1eg0mIYs2t58IxK3w557MV5VTYtR60U94Ok g==;
X-CSE-ConnectionGUID: NNNHYK+SRlCl5VnODrSC5A==
X-CSE-MsgGUID: Jh47+epqTPaQr7zRK9ZtPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524691"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524691"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:40 -0800
X-CSE-ConnectionGUID: 0Wm2ZqO1SDWdLndulk9F1g==
X-CSE-MsgGUID: 0n6aoKYaRBmc60IStTLq3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243198"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:38 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/21] drm/i915/display: Move vrr.guardband/pipeline_full out
 of !fastset block
Date: Thu,  6 Mar 2025 18:40:56 +0530
Message-ID: <20250306131100.3989503-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

The vrr.guardband/pipeline_full depend on the vrr.vmin. Since we have
set vrr.vmin to adjusted_mode->crtc_vtotal, this shouldn't change on the
fly. With this we can move vrr.guardband/pipeline_full out from !fastset
block.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 322a05648f58..a642496e366c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5393,8 +5393,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
-		PIPE_CONF_CHECK_I(vrr.pipeline_full);
-		PIPE_CONF_CHECK_I(vrr.guardband);
 		PIPE_CONF_CHECK_I(vrr.vsync_start);
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
@@ -5402,6 +5400,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
+	PIPE_CONF_CHECK_I(vrr.pipeline_full);
+	PIPE_CONF_CHECK_I(vrr.guardband);
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
-- 
2.45.2

