Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D68929FF6FF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 09:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726D310E3D5;
	Thu,  2 Jan 2025 08:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YoMSpMSj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1056010E3DD;
 Thu,  2 Jan 2025 08:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735807021; x=1767343021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZWsTtOY9Pag1Ke0bucMxDyacNWkLmlXRYg/GikBno0U=;
 b=YoMSpMSjOHJry3c5F9YmM6XtiC2SXdjZO+QRpsw5YF1cRP/clREQRFKu
 HyFk8oT8XpgPwbHkBIyJrVSkbqPGZRBSdY7YRk5uwYweSG5oqATLjaBH2
 6184qlN5RxlrPkilqs8oRY2fOV2+7La3/HDKfmicGMLqkLjxaDnKSLP+o
 aplYhKTW0hmYXVBnTSw4uZv7OlsFezJz7IOrFZuYrla6ZjUaNgtsjxun9
 BiZHP4Hw7FMQ1DV7AnPCKdsdRQeAp3UPB8dLBLkAiDFVF/yBw/gkI4PC/
 cv39Kzeucm1+3GD1qsjyKSDroIN3/xrgXxsWI/VbXBBSJO/80MuAeKrAn g==;
X-CSE-ConnectionGUID: LWyePxF4Q6qHOGgXw9DRJQ==
X-CSE-MsgGUID: 90DrmM1pQimD6omUnWO2Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="23626913"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="23626913"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:37:01 -0800
X-CSE-ConnectionGUID: urnEg48CTQizlN2gHEvNGw==
X-CSE-MsgGUID: ichKJ+1KSnqRF1424xZHlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="106314160"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.76])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:59 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 7/9] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling
 when DSB is in use
Date: Thu,  2 Jan 2025 10:36:36 +0200
Message-ID: <20250102083638.2552066-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102083638.2552066-1-jouni.hogander@intel.com>
References: <20250102083638.2552066-1-jouni.hogander@intel.com>
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

Do needed changes to handle PSR2_MAN_TRK_CTL correctly when DSB is in use:

1. Write PSR2_MAN_TRK_CTL in commit_pipe_pre_planes only when not using
   DSB.
2. Add PSR2_MAN_TRK_CTL writing into DSB commit in
   intel_atomic_dsb_finish.

Taking PSR lock over DSB commit is not needed because PSR2_MAN_TRK_CTL is now
written only by DSB.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a5100f147a6..d76454a69399 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7089,7 +7089,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
+	if (!new_crtc_state->use_dsb)
+		intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
@@ -7678,6 +7679,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
+		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
+						     new_crtc_state);
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
-- 
2.43.0

