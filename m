Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4039C4DEE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 05:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E6F10E226;
	Tue, 12 Nov 2024 04:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0GD33qp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D0B10E0EB;
 Tue, 12 Nov 2024 04:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731387290; x=1762923290;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZcgpnOa40SIuetdynEKEerOPih2ow/d+dMCvF24+4HA=;
 b=P0GD33qpsHGbuzjry6l+4xSS9+8xP9iA+iX3qSuH5O5uzzvuqpsHXJtO
 +uz61mOf4p+GRfGBBQxx4mG9URgDAf0PsAn8qYkvLXyVrbEJBeQgAdIxm
 A0Nj7IkbmnMq5wEScTbwQyKkia7tzKbLRsOxPqfpZNpwrbym076eUf4Tr
 RayivdnQloNGpr2yDJgAMumA1Hy/+K0vpx5ENICLPpManjT9DNCA7go2o
 pJ7Kv9hKwJYKicm6wNWsb+fS93rB2bnVGi5vjxn9PeWxt94RZqGdxECKx
 ZhFLHnDoT6NRCoCQlj5DLgUAUzIkSgnJ4W5WOxWuKFChUs0nwTjTOHv0J g==;
X-CSE-ConnectionGUID: PN51JjM8T8uo1sSfwtVViw==
X-CSE-MsgGUID: O69vrzn/SPaAXmvqpnNA4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42585885"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="42585885"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 20:54:49 -0800
X-CSE-ConnectionGUID: Mv7ESORqQsqZRRCGYFzZWw==
X-CSE-MsgGUID: fhcWyHRKSneDnjZByatmtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87673092"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 11 Nov 2024 20:54:48 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/5] drm/i915/watermark: Initialize latency variable to
 appropriate value
Date: Tue, 12 Nov 2024 10:24:31 +0530
Message-Id: <20241112045435.1189586-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..a97e90ac643f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2850,7 +2850,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
-	u32 max_latency = 0;
+	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2863,9 +2863,6 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
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

