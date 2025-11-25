Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 348B9C837C7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 07:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0E610E299;
	Tue, 25 Nov 2025 06:33:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJFmpj1S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8549C10E297;
 Tue, 25 Nov 2025 06:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764052389; x=1795588389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PRBUbHRhuAaDwy4TT/OsEERwYWcxQImzlK6kxznEwGY=;
 b=aJFmpj1SeYNQY/pbL919bmT0xUCBfPY4YGSJcZPPMqT9wtqpXnEfSVmu
 Bl64KGOaOY46BBoyMcJwni/rqN4p0YopxdHDgrI8rayEFTc9Cbumr0OWr
 qJj6/HkVFYk5p+J/gWQLDiXgelyw61M5Xbz6dollPm/fxLlOv3BbkVcro
 JwNsJ+mtN1nwO7WZRxOyBiBIMa8oHl5GP3Uy5/Oyu1fyFTlhsDqIcVc7R
 KWUibmVdB0NwFWFzpX5ghdzZeh7Ymj7Cp1IxDtdccXGCSoDWmn2jkcWtP
 zqYDr6Ozb3u0M1s1AeJzb5NkzajZIUzepa0s0RyyLm39cMLP1ZrBVnhzE A==;
X-CSE-ConnectionGUID: wBwsVSDBTYWbJ+ptuf6sVA==
X-CSE-MsgGUID: KUrOSyQxQIikhHM2D7+e1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68652129"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="68652129"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:09 -0800
X-CSE-ConnectionGUID: TDXUwYRXQ1q/w5h2Ss5Paw==
X-CSE-MsgGUID: X89HdObySqSTzYJdWCtvtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="192991801"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.198])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip as
 well for PSR
Date: Tue, 25 Nov 2025 08:32:51 +0200
Message-ID: <20251125063253.328023-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125063253.328023-1-jouni.hogander@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
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

PSR2_MAN_TRK_CTL[SF Continuous full frame] is sampled on the rising edge of
delayed vblank. SW must ensure this bit is not changing around that. Due to
this PSR2 Selective Fetch needs vblank evasion.

Currently vblank evasion is not done on async flip. Perform it in case
required by PSR.

Bspec: 50424
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 153ff4b4b52c..42c4ce07f8c0 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -433,7 +433,8 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 		(intel_crtc_needs_color_update(crtc_state) &&
 		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
 		!intel_color_uses_dsb(crtc_state) &&
-		!crtc_state->use_dsb;
+		!crtc_state->use_dsb &&
+		!crtc_state->do_async_flip;
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
@@ -539,7 +540,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	if (new_crtc_state->do_async_flip) {
 		intel_crtc_prepare_vblank_event(new_crtc_state,
 						&crtc->flip_done_event);
-		return;
+		if (!intel_psr_needs_evasion(new_crtc_state))
+			return;
 	}
 
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
-- 
2.43.0

