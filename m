Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E52ADC5B677
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 06:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743D110E9AF;
	Fri, 14 Nov 2025 05:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CG7t1x9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FF610E9AF;
 Fri, 14 Nov 2025 05:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763098839; x=1794634839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qPzTehM/LCi6erosVvAFEPjIAz5TzhR7zjYPsD02TRg=;
 b=CG7t1x9aAJTIZkWTr++89zMQmrRV66uK7qAAadm915+QUkxqHiZlHgCG
 2HHMoXsrMHC4hFWUFBP2GFqP6GBHct4fan9Vf10JgI45XWntvXA657hEN
 P2HM/4cqyLjo4UkaBt0VDTjZ7ulP1KfhJ/km4iwZXasmO23j9bWEwGfr6
 0n+3a8aw0QsjDRkAaRx37tcYfRDI4uf+yvSetIqv5coTdEH5wOJJDQGIB
 o5+Vsxbm9xUBD7y14cDG1SBPzfqqgx2HEKD7NVu98KtXdyXfrd0XORupa
 9d53mGHOiamKXVwxkZ8gPClzIzYoZFH1Qs3SSLihGsGtfVi6R61d002XB Q==;
X-CSE-ConnectionGUID: TQ+bPN3sRAeNLLFEab4EaQ==
X-CSE-MsgGUID: QLPBBf7VRqKgLVwBaCrOAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76536270"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76536270"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:39 -0800
X-CSE-ConnectionGUID: x5Q+yMAbQCCLDqKfBAj0HA==
X-CSE-MsgGUID: 0bb8wAK9QYS9iea+KKsZ7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189543634"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/5] drm/i915/alpm: Allow LOBF only for platform that have
 Always on VRR TG
Date: Fri, 14 Nov 2025 10:57:44 +0530
Message-ID: <20251114052746.158751-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

As per bspec the LOBF is allowed when running in fixed refresh rate mode
i.e. when flipline = vmin = vmax. Apparently this means we can allow
LOBF only when VRR timing generator is running in fixed refresh rate
mode.

Use the check intel_vrr_always_use_vrr_tg() to avoid LOBF with legacy
timing generator. Also use intel_vrr_is_fixed_rr() to check for fixed
refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 686e4d13f864..5cfb9345776a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -344,8 +344,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
-	if (crtc_state->vrr.vmin != crtc_state->vrr.vmax ||
-	    crtc_state->vrr.vmin != crtc_state->vrr.flipline)
+	if (!intel_vrr_always_use_vrr_tg(display) ||
+	    !intel_vrr_is_fixed_rr(crtc_state))
 		return;
 
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
-- 
2.45.2

