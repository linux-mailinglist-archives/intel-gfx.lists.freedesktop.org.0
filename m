Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 223F49F04E0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7D110EF18;
	Fri, 13 Dec 2024 06:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUzgTxqL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E3D10EF18;
 Fri, 13 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071753; x=1765607753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oIZXvQEFmVrULyZtP/GF0kILPj0xdnqRu7IAIIkb1gU=;
 b=ZUzgTxqLDa7DqUcdB4Jcz1+9C13cnaQmf6j4ACd9ru3nsuz5EQ9gErbL
 AQiA6QTDnEeTSKG6kaeP++B2VcRFsotvlIHJcMFFWJ6mczLB8dV5TGT8b
 sc08fpP4pcV6OR3lL37KrdR1x/dxtPPSnGETKLYkfZkd6nz44HCeCtVRW
 3AXAij8Vwt+6O8FH7rgxelcjLjqK8Wq14FVdjHK1hDGsl4fA9cjKqY7Sf
 B1tTf5nNfyrQiw9md6tJESFRFAO+5VR8PTFr+5cWD2ACYZSTeN56qIaXY
 b0lkYkRhgrmCtD6z5xR9vutgx8CtyeQ999axuC01JSl16wK0xQdAyxA2n A==;
X-CSE-ConnectionGUID: yT2fi0G4Ss6TGeKHuHmGWA==
X-CSE-MsgGUID: Un5CurIbRn+QmNY2sUpQMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846851"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846851"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:53 -0800
X-CSE-ConnectionGUID: yz4Xxgl9Q6q05pfPo8+bQQ==
X-CSE-MsgGUID: UY4y1nvATWWNBXVz6zNG5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307755"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 08/10] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling
 when DSB is in use
Date: Fri, 13 Dec 2024 08:35:26 +0200
Message-Id: <20241213063528.2759659-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
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
index 974c13829fe4..985d7242b102 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7111,7 +7111,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
+	if (!new_crtc_state->use_dsb)
+		intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
@@ -7700,6 +7701,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
+		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
+						     new_crtc_state);
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
-- 
2.34.1

