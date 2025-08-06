Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 243A9B1BFDB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 07:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719AD10E3A3;
	Wed,  6 Aug 2025 05:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SoO1FiiI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F21D10E39E;
 Wed,  6 Aug 2025 05:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754457752; x=1785993752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kFO7miUsrm9ujFy1o+sUWnQTn2x9uQIkVpz78u+KMw0=;
 b=SoO1FiiId4E3tlE7udCpJMqLlTmqfEzWUVmW6spr5zKZUsme+zt+OGTR
 ssGV4WAqCqTtkFhFsojaZitTeM31aQXgZpJXubN9gQJGViK2Hs3Vtglmb
 FA3e8fmkdtBSUPe3EvVNovcSguf02RLX74wpjn5DZ+l41RnRukGhPoXS1
 qCCHiw6vOUQKDlgkUGQrxpBcnKPBYSuEEhBH7bo20yHVybU+gld91i9Nj
 x/XJVO9AYkY2VWEg69KHcU/z538TN9Ba18sRf8f9MaZBXus1hGRu3rMGE
 c5atcJupGJfPqnoJhLlupHC2NZ6XfCEK1mM10H93wMmU/+c2BSUV+rH3R g==;
X-CSE-ConnectionGUID: JjjQdvfeQtyxkJMJybDbIw==
X-CSE-MsgGUID: W9tnfuhjRDGbSKDInHeDyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60597251"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60597251"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:32 -0700
X-CSE-ConnectionGUID: k57I/2/3SsqarNQNQgzaLw==
X-CSE-MsgGUID: B1FwdWpJQtqKT2tINCnAOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="188350232"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/4] drm/i915/psr: Add new define for PSR idle timeout
Date: Wed,  6 Aug 2025 08:22:11 +0300
Message-ID: <20250806052213.1800559-3-jouni.hogander@intel.com>
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

Currently we are using value 50ms as timeout for waiting PSR to idle. Add
own define for this purpose.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c2ab00fe2c20..172bc0c39968 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2982,6 +2982,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+/*
+ * From bspec: Panel Self Refresh (BDW+)
+ * Max. time for PSR to idle = Inverse of the refresh rate + 6 ms of
+ * exit training time + 1.5 ms of aux channel handshake. 50 ms is
+ * defensive enough to cover everything.
+ */
+#define PSR_IDLE_TIMEOUT_MS 50
+
 static int
 _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
 {
@@ -2995,7 +3003,8 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	 */
 	return intel_de_wait_for_clear(display,
 				       EDP_PSR2_STATUS(display, cpu_transcoder),
-				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
+				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
+				       PSR_IDLE_TIMEOUT_MS);
 }
 
 static int
@@ -3004,15 +3013,10 @@ _psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	struct intel_display *display = to_intel_display(new_crtc_state);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 
-	/*
-	 * From bspec: Panel Self Refresh (BDW+)
-	 * Max. time for PSR to idle = Inverse of the refresh rate + 6 ms of
-	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
-	 * defensive enough to cover everything.
-	 */
 	return intel_de_wait_for_clear(display,
 				       psr_status_reg(display, cpu_transcoder),
-				       EDP_PSR_STATUS_STATE_MASK, 50);
+				       EDP_PSR_STATUS_STATE_MASK,
+				       PSR_IDLE_TIMEOUT_MS);
 }
 
 /**
-- 
2.43.0

