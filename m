Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFC0821CF7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 14:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3F810E162;
	Tue,  2 Jan 2024 13:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13CC10E162
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 13:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704202990; x=1735738990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OUN232cdpW1E79ee2j+s4qIN2SpuJiq8ddMy/WwwbAU=;
 b=i4Uv3y61uANlYFPdcSXUSLYVletL+UndtiK+QroIbdw6v/tMZJt67gLE
 N6mhhKxCPgesQkT2C/vo7dg8d1KD3tOtFAAsK0Lo61jgpdNaoXYxI9ywC
 yjEAEwL0fuu9Od3I+iYfpBx1jG7gkNuh8FoLO/BhiZWjnl3m9zNs3z8pm
 IGzlcoLOzrBDk8Z87yPa940BbC8SArfAGLkWHE/Adyg3FGXYu3Ldd17KX
 teuokrzkXJljPYgxO5eBlkhetIhM1EN1BiiResQwCFLCDsluJyoXoH6CB
 03NEp3xd7YHa+XMDP4Kqdlj9fwZUQnVbqEnGaq4moxfJ2/vbpZGkUNIM+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="394024648"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="394024648"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 05:43:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="729503608"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="729503608"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga003.jf.intel.com with ESMTP; 02 Jan 2024 05:43:07 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe: Add workaround 14019877138
Date: Tue,  2 Jan 2024 19:24:08 +0530
Message-Id: <20240102135408.734232-1-tejas.upadhyay@intel.com>
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WA 14019877138 needed for Graphics 12.70/71 both

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3eacbc50caf8..270b56fc85e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -820,6 +820,9 @@ static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_18019271663 */
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
+
+	/* Wa_14019877138 */
+	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.25.1

