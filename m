Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 973B9A06F19
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A2610ED17;
	Thu,  9 Jan 2025 07:32:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3M2uLYX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD3D10ECFD;
 Thu,  9 Jan 2025 07:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407932; x=1767943932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmmypgC+tfq9aRs9O9U8Swm6/bu572VHH9qei/eLsi4=;
 b=k3M2uLYXKQ/aObbgEkzOMNm3s1l+TUpE3KHdU4YluiS0Jj1K7buZxyZp
 VLVfKlNycDpLDLYC38hLNg2GcLHNf2zbLg7QmS3OIysw9v0lryyQc82dd
 R85rLBFjE3Aslt7ZwmkHeXGo7d2tJ+LHPTreEvAtXRwSupvXFatALquuF
 29yN4ysV2puz44ir3t+ekzjHT0uWbuCAdQELbt/4h5dblG0SFkrluk9Dk
 q+JBm5sQwFQmqn94dUqlzeLx3XERFkGPoxL0P4MHkTszfdi4KB3MFV+pZ
 cEw4q9BASUtjtKBsgNAsNZA9an8ssD0DeSxcfQAiLXtNyZBSgZ3PeT+ke w==;
X-CSE-ConnectionGUID: tjdUjR1iTmu66BkbTDppBg==
X-CSE-MsgGUID: Y6nLWSl9Q3GDJJkLlmGNyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200574"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200574"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:12 -0800
X-CSE-ConnectionGUID: JvCPgw7uRcic1IyiIxHAvg==
X-CSE-MsgGUID: lVLyO9zST1uOof1lM/Ux2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297878"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:10 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 09/10] drm/i915/display: Don't use DSB if psr mode changing
Date: Thu,  9 Jan 2025 09:31:36 +0200
Message-ID: <20250109073137.1977494-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109073137.1977494-1-jouni.hogander@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
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

Changing PSR mode using DSB is not implemented. Do not use DSB when PSR
mode is changing.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d76454a69399..e448ff64660a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7647,7 +7647,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-		!intel_crtc_needs_fastset(new_crtc_state);
+		!intel_crtc_needs_fastset(new_crtc_state) &&
+		!intel_psr_is_psr_mode_changing(old_crtc_state, new_crtc_state);
 
 	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
 		return;
-- 
2.43.0

