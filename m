Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD56B1C431
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 12:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D5E10E746;
	Wed,  6 Aug 2025 10:24:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcNo8r2d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAACD10E746
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754475873; x=1786011873;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EGRzxbCxI85NlA9ez31S2AhReEIozLk1mfmyureIcOg=;
 b=hcNo8r2d1iOAfii5cOoHyDKv2yypcKm6Wg+gQl9Fq9u75MWh9yj/NDze
 e/m++rZrdo1c1d+BszXKtjWYsNp0UnRQQ38B2BE9bUVucOskZNCSggWi/
 dTQwSu5WTGn6na3zdydDROK6QXuRNdHmNz9k5+z4SnYEEw0d5KlCqKvtZ
 7G1Q7p0iS1OpJ3Rv+6LO7MO/2swDzp+7tKiiBG9TSV3QVkSklMB1Cp3nR
 R6P/sQu6TgMQN+ZbFZ5ylTsQcEwyPqh4/9z2l/RJ8H9WrAFUYIH1ok+x2
 7h23Y2Uxj6pMxa6vMmHH2Fvd8Jz83YLtv1e0n3YGvSiXoQiDHfjjCQILv Q==;
X-CSE-ConnectionGUID: S1gO44MuQJm34DeAktNCjw==
X-CSE-MsgGUID: gI1GLFjNRsmz9ZApcxKaHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60600408"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60600408"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 03:24:33 -0700
X-CSE-ConnectionGUID: jW8njI4DQKqVaeKGAc9AmA==
X-CSE-MsgGUID: pZGlAtI9R5CsE16R4jqDyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165079360"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa008.jf.intel.com with ESMTP; 06 Aug 2025 03:24:33 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Date: Wed,  6 Aug 2025 15:49:30 +0530
Message-Id: <20250806101930.2969802-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Remove the redundant check statement.

v2: Add scaler_id check [Jani]

Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cd7ebbeb9508..6891a0b00f41 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	if (!scaler_state && scaler_state->scaler_id == -1)
+	if (scaler_state->scaler_id == -1)
 		return;
 
 	intel_de_write_fw(display,
-- 
2.25.1

