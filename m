Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 243309E1621
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DBE10E97C;
	Tue,  3 Dec 2024 08:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRys26AF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F372510E978;
 Tue,  3 Dec 2024 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733215637; x=1764751637;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=atpKAuxN/RXbAUO3xz0GjDNe8Vz+Q34Fc8+kNaFare4=;
 b=mRys26AFm9QnasAB+hYTvDSa1lcOPYYN1ymhiOv6EnaIlgOSpGYp7lO3
 Lb0zcVj25eEvJoQAw7KmLoeg9+WyYMQM2ytUZiyYqc/TUYLh08mKrPFKn
 xkMGkW4xhy/QRIcrDhvwckQf4SVrwvFZfEJ1bjMiWeaBA/xNhvI4zs8bq
 aUQ3zJbze0tW6Nd0bEH9/ID/HNl8AEV5O1giTqUS64YvJM/YI9fW1xgE9
 jGZbiBzeUyqyq/Rnb72ujuFILMQvzzLjJw7AdjlJGh26YqisUOKZ8iVmr
 BRiLWS+5VSzJ/bhx58iwdA06xBKs2gPu1i8D+TQt4mT3z4F5yFGDGhk2L A==;
X-CSE-ConnectionGUID: fB9ALtKDQtOA2mCMuju/8A==
X-CSE-MsgGUID: s+8z1NVUT6CZhvk5OCiP/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44805419"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44805419"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:47:16 -0800
X-CSE-ConnectionGUID: 4uYsiuF8T2CyXY7tOwbLiA==
X-CSE-MsgGUID: UVWvaAJNQ36iArl9pc+Vhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="94198881"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 03 Dec 2024 00:47:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Date: Tue,  3 Dec 2024 14:17:01 +0530
Message-Id: <20241203084706.2126189-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps
to eliminate the else block and make the whole code a lot cleaner.

--v2
-Seprate patch to club variables together [Mitul]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1a4c1fa24820..c40e0173a5bd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2857,7 +2857,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
-	u32 max_latency = 0;
+	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2870,9 +2870,6 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
-	} else {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = 0;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-- 
2.34.1

