Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EAFA1D480
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D1110E2EB;
	Mon, 27 Jan 2025 10:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHq0sf2h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE5410E4F5;
 Mon, 27 Jan 2025 10:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973759; x=1769509759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JbGoeDw7x0Pntr6HFiJkuRzhfeVqN/impzT1otHpZ64=;
 b=ZHq0sf2hrHfyTapEvsxoy/RRFvkniavKrZGCrBbx3bas/CHtYUOVmk17
 wIfPX/2b7t6rg7paebv+3DqnNVSQaQO2DNnYo+TQGwD9iBiy/WoaPseJL
 R+a+KSERTKUnHH0GW2ZV8HbUnNGiSLPCiKL49xgMibTzE0yhlQfI8dPQM
 n6woUeGC59CvKyoE1DgH/HiHYKWWRETljKVaR0lni7w3fWoPq+Q+SzkHQ
 LRa+jfCnUEpdLccIP3f10DTGcRs+9DhoDnkMCL5wxIGrFLBRZXvFhcXzr
 0BoGVNP7jgcJoR2GeqFH5HaHLmcc0RXwrX7jZ8mIlKRgUGOAtQ0kHGZca w==;
X-CSE-ConnectionGUID: VykH0n27To6DYExji3xGGQ==
X-CSE-MsgGUID: LOBhB7RATui1vV+yZeeBSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529869"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529869"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:19 -0800
X-CSE-ConnectionGUID: ZLNoJQU8QgSjgN8hTdMmOA==
X-CSE-MsgGUID: a5N4httFRG+9s5AW9zIong==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837894"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:18 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 07/12] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling
 when DSB is in use
Date: Mon, 27 Jan 2025 12:28:41 +0200
Message-ID: <20250127102846.1237560-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
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

Taking PSR lock over DSB commit is not needed because PSR2_MAN_TRK_CTL is
now written only by DSB.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aed35f203fd8d..5db2af86d0c8a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7143,7 +7143,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
+	if (!new_crtc_state->use_dsb)
+		intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
@@ -7731,6 +7732,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
+		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
+						     new_crtc_state);
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
-- 
2.43.0

