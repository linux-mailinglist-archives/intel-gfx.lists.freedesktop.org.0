Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E71A1B4E3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E648210E935;
	Fri, 24 Jan 2025 11:39:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Snr+yjnR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 176D610E935;
 Fri, 24 Jan 2025 11:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718780; x=1769254780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PzKW4Y/ekmhFEFcw/ZmCcbRMpwdWe/vI/6+xvUv/S0k=;
 b=Snr+yjnR7ad4RR8XRhqEHqoVpQDwGtMzrkyzCqJ3fqq86pQEqE0xhIUO
 nctLzTdUZot+Hrw00EioM+qpovv5h16yFsWOiNNgHFwtvfpBDU5zTgpA6
 e9l1+s/8gPd05v8D3Y5qEuaUKRhiWoVNXylDZ3udRh93VWqQ9lt00YA7M
 ujMbe8YcmoCISzhExdsauEB/pJ+519in2eJMyTCgBFlD2C7tpOVJDQ+2G
 DENbCbLGpithMm5kR15CiZD2T5HZXEr9Orf6ndQOklxbxsmfJUO5e57Vx
 3Bs5JElsdlUNJNsbS3T7tPDGNZZOLUx0z1jaAXEq3QlBWx2MVzagfWyaX g==;
X-CSE-ConnectionGUID: flCwE5avSF6eaLOtX/UmLQ==
X-CSE-MsgGUID: 3UVo1rs3Qmq9828nJy9qjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237800"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237800"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:39 -0800
X-CSE-ConnectionGUID: s8gN52smT7+tDx+5yDVYwg==
X-CSE-MsgGUID: w3OyE7GmRW2CIEUVxt9A7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757845"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:37 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 10/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Fri, 24 Jan 2025 13:39:03 +0200
Message-ID: <20250124113906.850488-11-jouni.hogander@intel.com>
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

We have different approach on how flip is considered being complete. We are
waiting for vblank on DSB and generate interrupt when it happens and this
interrupt is considered as indication of completion -> we definitely do not
want to skip vblank wait.

Also not skipping scanline wait shouldn't cause any problems if we are in
DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
we are not in DEEP_SLEEP evasion works same way as without PSR.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2f2812c239725..1fb3bb8c5d5b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -168,13 +168,12 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_SKIP_WAITS_EN |
-			DSB_CTRL_WAIT_SAFE_WINDOW |
+		return DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
 	else
-		return DSB_SKIP_WAITS_EN;
+		return 0;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

