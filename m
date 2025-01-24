Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C01A1B43E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B238E10E92C;
	Fri, 24 Jan 2025 10:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B+8nREyA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5859A10E912;
 Fri, 24 Jan 2025 10:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716220; x=1769252220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ELWm9xfwks384J7zLCYJfhAXMcgQyOh1DdjG2P1w2Qc=;
 b=B+8nREyApTuSXbq1VkYa3BXBwURn0ryqp6sJ/0Vek+td4mleNcItUERl
 2g4yKFWwqQmaebxU5isw8PF+pyeDxPRKUMNTeQ+Cxlqr/RG8G0QT1c76d
 CDCDMqrzzaPh1AtKCqXmwHTOQsTZM1B0KMHJ9myxf3ETkbG4q1PUlahR0
 KGT/vGEXJjSxBsZg7BxlW+ZcYTuzOeZshp4ln+GX4EQXEqqAbvzsuH8c2
 Myq24J1kk+NU1hI5CWtcZhnH6Pm3q3WUYEShSUh43Tw9O0sl8PQtGo7z8
 qX/3sVYvuTm8aQdOcktA7BpEX3OEGsMDzrB5DtFT3Gl9ucLGQshXzdUJs g==;
X-CSE-ConnectionGUID: JrULGf59TpeD6TezCrQRmA==
X-CSE-MsgGUID: 13v1gOjlTWq3IVXEtnnhQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660090"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660090"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:00 -0800
X-CSE-ConnectionGUID: uXtqhkZtReuUUbeE0zxPmw==
X-CSE-MsgGUID: szC0H9BXQEGvcLS9OAMGUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864267"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 07/13] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling
 when DSB is in use
Date: Fri, 24 Jan 2025 12:56:18 +0200
Message-ID: <20250124105625.822459-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124105625.822459-1-jouni.hogander@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
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
index d5e52bb884797..3ac1cc9ac08a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7124,7 +7124,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
+	if (!new_crtc_state->use_dsb)
+		intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
@@ -7713,6 +7714,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
+		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
+						     new_crtc_state);
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
-- 
2.43.0

