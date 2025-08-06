Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD19B1BFDD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 07:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D12ED10E728;
	Wed,  6 Aug 2025 05:22:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WegRr/x6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D6210E39F;
 Wed,  6 Aug 2025 05:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754457755; x=1785993755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zO38RkFLOAv2R/ZuKs7B3x3+CZaDjKmn5Dinimcub48=;
 b=WegRr/x64TDqdQOeJxEFtAL3+yF65Didx5LSBuEAmthh9Q8dzy139KyF
 PM5oGUzK4kFTYHRqrFdL8k53bQegQpV9FFo9f354LbRxz97Cnq1aQQhUr
 udD19877dwrWuCP09Y7xzdnQ9OERwYfWZwdV9BJJIMxoscmmQan63OQBZ
 xBCrgo5agAlSDarom6Th4bca4XV1L8ID1KLyEa2K+8i4u3h7XTuxY9mnE
 NXgHHueoxQjha0p+EblT5U0Mp7ehuTYSitKuyRghJgaUbmcKEw4GCdZRm
 LoopXpMDDb7SZ5Tsx8IbFbXiwXZxEHdQWgitUC9fQ4MLDvjDDlN0vsXjp g==;
X-CSE-ConnectionGUID: 86i2RKdQQOm9v61cy8cq3g==
X-CSE-MsgGUID: SKaLGGCxT6W5VEwZ2rqNyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60597253"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60597253"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:35 -0700
X-CSE-ConnectionGUID: 3YhXl0icRlesOj0FqySyzw==
X-CSE-MsgGUID: bw8/KVyiR+CQU7p5aD1UYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="188350240"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle before
 starting update
Date: Wed,  6 Aug 2025 08:22:13 +0300
Message-ID: <20250806052213.1800559-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250806052213.1800559-1-jouni.hogander@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

Fix this by adding poll ensuring PSR is idle before starting update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c1a3a95c65f0..411c74c73eae 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7271,6 +7271,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
+		intel_psr_wait_for_idle_dsb(new_crtc_state);
+
 		if (new_crtc_state->use_dsb)
 			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
-- 
2.43.0

