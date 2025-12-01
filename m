Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 794CAC96FDF
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:33:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1780010E3AC;
	Mon,  1 Dec 2025 11:33:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QhrzySbH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CA2210E3AF;
 Mon,  1 Dec 2025 11:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764588787; x=1796124787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VUUViv/t04hXV5XLzYXypv7loGN48K1kOpdHxHpmY9w=;
 b=QhrzySbHSLSAeg6WbY19hLtkU86wdubADDpuP15IaGn2VZZNNsF9JcqF
 5tXwTErFvU1z7QsZtlWfqkzHpS6c0P+zZR4rPZwZ7e7WMAEs89LVFAmqU
 k3z7eEheDaMvgzkebR7uYvxXaK6VPZQdL8j+3M1uhcs0Fizu82m7bECs/
 7r5LjSPzJz/dtBr2Em1v77r4oShqo+k9AlggCgZHVC2lzxxEGUU5ZoDgE
 Vtdintg3T8k5RjIokBh56A6DWaVBid0DgnhXLw0ohQ476i++S3aY1KiTx
 i7l2DFGkBJ/JX6IomU+bUehIQYPlumVSvfCgCAnfMoMhEAeOGKerQ/m6P Q==;
X-CSE-ConnectionGUID: O9z2LUocSY+MyWyGNxKkFw==
X-CSE-MsgGUID: ia8KFeVlQlyazr1j/fmBFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66558464"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66558464"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:07 -0800
X-CSE-ConnectionGUID: VWN/geDdTp6ktA91L4p0wg==
X-CSE-MsgGUID: OPpiR4ekRyek6BtGDh7jug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="198251900"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.122])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/3] drm/i915/psr: Allow async flip when Selective Fetch
 enabled
Date: Mon,  1 Dec 2025 13:32:48 +0200
Message-ID: <20251201113248.617347-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201113248.617347-1-jouni.hogander@intel.com>
References: <20251201113248.617347-1-jouni.hogander@intel.com>
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

Now as Selective Fetch is performing full frame update on async flip and
vblank evasion is done as needed we can allow async flip even when
Selective Fetch is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 04f5c488f399..a8a3e8000187 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6017,14 +6017,6 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 		return -EINVAL;
 	}
 
-	/* FIXME: selective fetch should be disabled for async flips */
-	if (new_crtc_state->enable_psr2_sel_fetch) {
-		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] async flip disallowed with PSR2 selective fetch\n",
-			    crtc->base.base.id, crtc->base.name);
-		return -EINVAL;
-	}
-
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
 		if (plane->pipe != crtc->pipe)
-- 
2.43.0

