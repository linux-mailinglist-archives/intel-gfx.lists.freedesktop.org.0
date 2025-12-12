Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2245CB920B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7405E10E7B9;
	Fri, 12 Dec 2025 15:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TxMqwXKc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E2410E350;
 Fri, 12 Dec 2025 15:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553347; x=1797089347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d45pWhLSqRJlgs6IraZffGCeiaghJS+9GCJ+hmHhk+M=;
 b=TxMqwXKcfEy43nm+N/Vl6qqC+iB+SqldqFV8Ej68jW2jZ1alA1RXShyZ
 ojpq/Bq+rpGVF9v/ajkzNdaTuzvuSrHL1IMuKlwqXqu8+DuJ+CKnk96I+
 faX+DNVBiz79y45rLByqWjCCAtPoGZyrIZ25RzLIF8B8HFvT3SSNEpw/X
 HRvuDGmu4FoMBYER/s7ESgCkX/VHh1M7daowqr81d7h29eMqHyyElUyI7
 l2juhyJ3RcITks97ZyUVfdNqnWKFFfRfoW2henqQiQKwCdvYWJeRMNWIH
 pPHgPXlT8AV5OAMtFJWNlxr22X33xG3E1SDZSLCu9cNL5PpbqNuK9AFJn g==;
X-CSE-ConnectionGUID: CVW/UqgkSVasC2EuKAkwqg==
X-CSE-MsgGUID: 1D8wFEpRQXWGNbT/81aGpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716379"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716379"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:06 -0800
X-CSE-ConnectionGUID: wFtr4FlDTguyRSXLloDTjQ==
X-CSE-MsgGUID: qOVKfKQETmeqpiz+D3YrbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935051"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:05 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/13] drm/i915: Warn about use_flip==true in MMIO commit
 codepaths
Date: Fri, 12 Dec 2025 17:28:38 +0200
Message-ID: <20251212152847.13679-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Warn if use_flipq==true in intel_pipe_update_{start,end}().
These functions are part of the MMIO based commit codepath,
so should never get there with use_flipq==true.

We were also warning about use_dsb==true for the same reason.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 3fbf25b2e88a..1b5b73f643bc 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -548,7 +548,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	struct intel_vblank_evade_ctx evade;
 	int scanline;
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
 
 	intel_psr_lock(new_crtc_state);
 
@@ -687,7 +687,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
 	ktime_t end_vbl_time = ktime_get();
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
 
 	if (new_crtc_state->do_async_flip)
 		goto out;
-- 
2.51.2

