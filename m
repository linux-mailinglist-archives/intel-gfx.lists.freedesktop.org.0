Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C59A2D0CC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 23:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC0D10EBBD;
	Fri,  7 Feb 2025 22:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mysZSI/l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6A010EBB7;
 Fri,  7 Feb 2025 22:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738967531; x=1770503531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rCR70x35t9u4TUJihRyUiWzkX1087HffuOo97SMskkQ=;
 b=mysZSI/lCx0ZMrvZpLY3t4p+1o9pleEMCfatyfGQJL5UT1CdTz+VJlqw
 HZDGqm3xEVVMBw3/FOl9j+6bCTgieSOlF5U6XPGhyUdM7nshtQEdztrr4
 Ctui66UzFEBzP4u+omnaFfyzwzux95VYUKIoqUNhteG1JoL8LkWhvo6Gu
 1cPwA4Pd6Uvmoc+FAkJFUiBuvTbHzOkDyKEjPR1RlMtGOnrh/hGYJZq5s
 G57hoD4H3cvUIpetHCrhVCkpV5lSEfMxJupDGyxDFN+ASWn2zNWs7vzB4
 4MbSA+pjhbyRKEBJze/D/hLKKdsfm74LSrr4xfza92PoudERzYLwwJnP3 w==;
X-CSE-ConnectionGUID: RMrRvZUtTomlIqPLoFzZxQ==
X-CSE-MsgGUID: fQXee6ixRf+M9ZMluw4AGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39313394"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39313394"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 14:32:11 -0800
X-CSE-ConnectionGUID: BwTXa+WJQxu4HeyAA081Sw==
X-CSE-MsgGUID: BhqBGan0SVaZk4m+6i6VqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111857428"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 14:32:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Feb 2025 00:32:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 3/8] drm/i915/vrr: Account for TRANS_PUSH delay
Date: Sat,  8 Feb 2025 00:31:54 +0200
Message-ID: <20250207223159.14132-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

When we send a push during vblank the TRANS_PUSH write happens
at some point during a scanline, and the hardware picks it up
on the next scanline. Thus there is up to one extra scanline
of delay between the TRANS_PUSH write and the delayed vblank
triggering. Account for that during intel_dsb_wait_vblank_delay()
so that we are guaranteed to be past the delayed vblank before
we trigger the completion interrupt for the commit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index f8bd6fad0c87..01e3bd385cac 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -116,7 +116,13 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
 		intel_pre_commit_crtc_state(state, crtc);
 
 	if (pre_commit_is_vrr_active(state, crtc))
-		return intel_vrr_vblank_delay(crtc_state);
+		/*
+		 * When the push is sent during vblank it will trigger
+		 * on the next scanline, hence we have up to one extra
+		 * scanline until the delayed vblank occurs after
+		 * TRANS_PUSH has been written.
+		 */
+		return intel_vrr_vblank_delay(crtc_state) + 1;
 	else
 		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 }
-- 
2.45.3

