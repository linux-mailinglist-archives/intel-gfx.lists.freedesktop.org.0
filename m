Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A29A1B4E6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4493610E800;
	Fri, 24 Jan 2025 11:39:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONZCTaaV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89D7E10E951;
 Fri, 24 Jan 2025 11:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718784; x=1769254784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OaWgL6uMCw6SIoaI+eQRgJUXnbJtRebf8FQpifCzUVM=;
 b=ONZCTaaVVM50dcVOeQ4PaLkgrg+eMVkExgkfLkakSv08ZfgBjfjtGcGs
 2TmUyQ+u3JHHe93TrZt5Y1wsQpXZmdMmHChn++/WFN5wuqR5szw7/yzrc
 0L2P4fX3Rf9nICJX4GjmIzy5SIJjg1ROyHS3laFhOxYiIjaaX5brdYn4e
 9+W/S0sj2rtzNMkxkNedzDuBR2k+Ag+ibbr3ojniWW99lnQYe5l8myYWx
 WYhV//HSVG7JQ4JpqWD/uos1gMrMYYbzj0B6yXe6whEGJvb0JBkD6hxY6
 oH7zLHP6L7LWvuPCAUPgBDYIRigFUGyHOa7GyRurKM0WALZ/7g+MSUF9B w==;
X-CSE-ConnectionGUID: Ze1LiRRvQZiTwTnBtB3Qtw==
X-CSE-MsgGUID: dPIazQhrRDOJuh6MLT6LYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237818"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237818"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:44 -0800
X-CSE-ConnectionGUID: TKH0hRVtTZGW7YZccSG5IA==
X-CSE-MsgGUID: 4Z561rKjSFWFSPiLRCOX4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757856"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:42 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 13/13] drm/i915/psr: Allow DSB usage when PSR is enabled
Date: Fri, 24 Jan 2025 13:39:06 +0200
Message-ID: <20250124113906.850488-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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

Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
usage also when PSR is enabled for LunarLake onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6da46406576de..66b3b3e79e9cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7697,7 +7697,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
 		!new_crtc_state->do_async_flip &&
-		!new_crtc_state->has_psr &&
+		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-- 
2.43.0

