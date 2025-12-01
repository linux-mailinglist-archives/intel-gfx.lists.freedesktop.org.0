Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A727AC97957
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 14:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F6110E3DE;
	Mon,  1 Dec 2025 13:25:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knGchkq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63F610E3DD;
 Mon,  1 Dec 2025 13:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764595514; x=1796131514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sxQK/+vq57Zj2hWJaznYDpjiiwMSTV70db1yAmuTBTU=;
 b=knGchkq1kDNtX/U/VexuG2kLtXdP1E4rI/wdqU5oHPujdGchV+wbtC/n
 L+9h56dlHbuHm0xfC8AzqI7cwRdolOV1qJFX/XVX+WnCD+cdTO8aKKF6u
 TOGxCc9N8pEyW+H9cD9lBbkQa8i207hLPVbx0oJr7EUAnJxOluxyGGCja
 GmfpwLdmk3EskYXpVcWszcgXCWFqeGaKa7JUOOOFVb0C7GL1zZSa9p175
 gHrjLJwDCqnCSBqV2f0di+HxvhoQwACmamHovMy65I6S7W1r9Z8JpdoH1
 ZnHL1t68VvSqFsQDn3d+HGWNi35XOjhJTOowxrd75Xbu668yMvtvQrUiZ Q==;
X-CSE-ConnectionGUID: zeBltCQcTFy95Y133cwOIw==
X-CSE-MsgGUID: 2kZZQYGAQ8+Uj3XcakuJ/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="70394316"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="70394316"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 05:25:13 -0800
X-CSE-ConnectionGUID: FLjDWP84Rx6yNS4c3M9UdQ==
X-CSE-MsgGUID: 0TcUthOgT7W742dKfuVk5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="225055515"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 05:25:12 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 3/3] drm/i915/psr: Allow async flip when Selective Fetch
 enabled
Date: Mon,  1 Dec 2025 15:24:57 +0200
Message-ID: <20251201132457.624358-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201132457.624358-1-jouni.hogander@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
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
index e5ce47efc809..b262c033f24e 100644
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

