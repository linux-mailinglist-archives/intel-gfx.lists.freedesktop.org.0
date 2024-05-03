Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3638BA71D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14800112834;
	Fri,  3 May 2024 06:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLcqOpts";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B591122C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714718068; x=1746254068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=13YNItMtokEWRbPdDmGTAwq5/WzagRS8IzsU4aURIMU=;
 b=kLcqOptskxLgmAvaB4SCioDPKG/nNNNNPQPkc2GIRRg1etzjI8MpT3zn
 vSk8/rsDAH+oR9j8TsVTIeLsV9FxOUdiDQOAX04BRWE52o19aOii4qq48
 WbIFsIhTQ5F/8+aJ5iq7f5XquCg3d4ZnjFOxcNgM82ydbYmflZgIyKRA0
 z0yYiMVKYZ341+b0GhU5J/YsYn9jk5ROb5H9wMBtOamfEXsa6DXRKvjRI
 9HGIWEq8o+2tHNlIMmRJYINvmu+53dYbjnC25r4MejfLSUwYMv31yxwYL
 lq3rTzisINmJcgSWDEnvuV7bG0j+s4cbFdxgH9sIDdlTbXeRwKDI/6GR2 g==;
X-CSE-ConnectionGUID: VFZ/75USQEG0rnlLVgkeQA==
X-CSE-MsgGUID: +ZKyuh1bQ4q3/GY+iNGuoQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14302302"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14302302"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:28 -0700
X-CSE-ConnectionGUID: H4YtOz0gQEeOHUV1vjUw6g==
X-CSE-MsgGUID: 0Ljt6nyHQEeHA5HNTaipog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="50558685"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 02/12] drm/i915/display: Do not print "psr: enabled" for on
 Panel Replay
Date: Fri,  3 May 2024 09:34:03 +0300
Message-Id: <20240503063413.1008135-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503063413.1008135-1-jouni.hogander@intel.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

After setting has_psr for panel replay as well crtc state dump is
improperly printing "psr: enabled" for Panel Replay as well. Fix this by
checking also has_panel_replay.

Fixes: 5afa6e496098 ("drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 1da4c122c52e..bddcc9edeab4 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -252,7 +252,8 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->sdp_split_enable));
 
 		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
-			   str_enabled_disabled(pipe_config->has_psr),
+			   str_enabled_disabled(pipe_config->has_psr &&
+						!pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
-- 
2.34.1

