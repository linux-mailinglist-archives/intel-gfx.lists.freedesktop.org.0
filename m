Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A0FB2D944
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 11:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6038F10E6D0;
	Wed, 20 Aug 2025 09:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Loi8EYjC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B08910E6C0;
 Wed, 20 Aug 2025 09:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755683626; x=1787219626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fQXzKlMJKfXCNeTk6l96ahkWI/q0uzF5M0h7h9poquI=;
 b=Loi8EYjCyu2HqYMac/8ybZiwkP4+uf3iLJLCnKkGoUYd77c1LKOqUDf3
 n40BuzVzoAmtismfMJH9EbqdeUQmikKpo7itbxWcAavTngRFFY+slJsNJ
 axRR75finWuW9wLxk2CHX4izG6zg1eLA+86h8k+4gX7eefL7j01jFQcAs
 tSxrxA0eA4GKLb3zxpf2YF1Hst5rIvURcXwilw8j9TF5lVVz2NFNBeRWg
 ilSMPYLaDgYGNUWduAgESrrtvvd546HFSFCxA+3YYWjOvJoJm7w6U0Djn
 27CVCbIFOhSdSm1SPU7bJdg+xK9Ehl0gz+YtvYKS622UHSanijOUTToyO A==;
X-CSE-ConnectionGUID: +dWtmaL0ShaZPdvMZokSCg==
X-CSE-MsgGUID: 6EnOmD7rQ4ycE7XIOlo/ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57896344"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57896344"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:53:46 -0700
X-CSE-ConnectionGUID: KJUhMW3kQnqLRdPu67/p6Q==
X-CSE-MsgGUID: vyWVerBhSMufgj7UkyqHJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168038911"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.252])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:53:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Date: Wed, 20 Aug 2025 12:53:34 +0300
Message-ID: <20250820095334.3849458-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250820095334.3849458-1-jouni.hogander@intel.com>
References: <20250820095334.3849458-1-jouni.hogander@intel.com>
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

Check drm_mode_vrefresh return value sanity before using it in
intel_get_frame_time_us.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 68eb02127f47..79ba5b17ae40 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1116,11 +1116,16 @@ transcoder_has_psr2(struct intel_display *display, enum transcoder cpu_transcode
 
 static u32 intel_get_frame_time_us(const struct intel_crtc_state *crtc_state)
 {
+	int vrefresh;
+
 	if (!crtc_state->hw.active)
 		return 0;
 
-	return DIV_ROUND_UP(1000 * 1000,
-			    drm_mode_vrefresh(&crtc_state->hw.adjusted_mode));
+	vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
+	if (vrefresh <= 0)
+		return 0;
+
+	return DIV_ROUND_UP(1000 * 1000, vrefresh);
 }
 
 static void psr2_program_idle_frames(struct intel_dp *intel_dp,
-- 
2.43.0

