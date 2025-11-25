Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7318C837CA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 07:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02A410E29B;
	Tue, 25 Nov 2025 06:33:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmF/wMcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE8B10E29B;
 Tue, 25 Nov 2025 06:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764052391; x=1795588391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1n6rzyunSiJ8ke+mNUawiI72H9KOpKU6R4g8yzYv1QA=;
 b=MmF/wMcqnDSjlWq2uTuD/GU5wJGh/RiH3c4MHUqmKhZpEqDutDKWw/hZ
 zbGK0t+S40B7+UsdMDbsnYfzISk/ZuO7nMs2TuYUYogt09QWWPuYd5n3H
 5wUOY8MZFoCh43hS30UawLqaKzA3Rf+Bwzr7Fx99ylrpErS8xBElCsBTK
 VcXNi5fhYJCYrpgaeI74JAjO1x9S48z7BeylgEbjKhkIedP071vsa3SO3
 UzkE9wTNnuNMjogGJgZbd2nqvn6Sg8Xt7dDeJmvE5uqHugCpsuDTTw2MO
 Xds+MmNIQlSY5JGlzdruCcZ7qT503bqItQweejT2WebQhk+WQvzuhBrC9 A==;
X-CSE-ConnectionGUID: ydHtQ+HDR/Sn6SMhwPE+xQ==
X-CSE-MsgGUID: EsnUIAO2QXS5ql5Rno4fvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68652131"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="68652131"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:11 -0800
X-CSE-ConnectionGUID: eSo2nW5jSEOkLSljnHflbg==
X-CSE-MsgGUID: P7L4I57sTeuUVmSeToveIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="192991813"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.198])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:09 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/4] drm/i915/psr: Perform full frame update on async flip
Date: Tue, 25 Nov 2025 08:32:52 +0200
Message-ID: <20251125063253.328023-4-jouni.hogander@intel.com>
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

According to bspec selective fetch is not supported with async flips and
instructing full frame update on async flip.

Bspec: 55229
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 18d5fe992f58..e7781a816823 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2749,7 +2749,8 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
  */
 static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->scaler_state.scaler_id >= 0)
+	if (crtc_state->scaler_state.scaler_id >= 0 ||
+	    crtc_state->uapi.async_flip)
 		return false;
 
 	return true;
-- 
2.43.0

