Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EECFE7FB700
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 11:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5E610E47D;
	Tue, 28 Nov 2023 10:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A6810E47D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 10:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701166752; x=1732702752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y2SqiVPlVpC2GlLXE8HVIxwU12C0HIvrmz4JSsWuntk=;
 b=AOy6NwGKPNYBK8OxUdalgHxGR5ThObx597iuIhO48pc7NQpt7kIwzJ7P
 OlFYCYtkQEq8NSGToSdnwQGOGPzSqT3w4+WRuYbba/sMJV3SITxh3uBoi
 rHVGk/jBJkscaDuCRnnekPi8SQZ7YAi5zH0qI6eKOnq7F+rQM++0VFkpQ
 RnoSWEn3yLgiHZlmTMxy9Y/KHdi3A6/uy6/YMs++i5iYK6q0kiJI4tudo
 Tf09I8WbSY/lA8A0Y6kacxA9olTWyfcltrZDZ6yG8Z5CBW6SJOF2GMqJs
 pfKOpUOKXzaG4n3iH/8T1stwE+5qDW98giUVIdE/fZ8srZz4TLWtVwQE5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="396798421"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="396798421"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 02:19:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="859382356"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="859382356"
Received: from bvivekan-desk.iind.intel.com ([10.190.239.116])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 02:19:10 -0800
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 15:54:51 +0530
Message-Id: <20231128102451.825242-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix IP version of the WAs
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

WAs 14011508470, 14011503030 were applied on IP versions beyond which
they are applicable. Fixed the IP version checks for these workarounds.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 18ff7f3639ff..5f091502719b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1697,14 +1697,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (resume)
 		intel_dmc_load_program(dev_priv);
 
-	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
-	if (DISPLAY_VER(dev_priv) >= 12)
+	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
+	if (IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
 		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
 			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
 
 	/* Wa_14011503030:xelpd */
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(dev_priv) == 13)
 		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
 }
 
-- 
2.25.1

