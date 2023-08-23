Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7655785E41
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0B610E4B8;
	Wed, 23 Aug 2023 17:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598D210E498;
 Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810563; x=1724346563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0x98jy/aV61osiWq+zh52OHJwwFio0bcD1Fg0gf2hmk=;
 b=Nw3n+8XZNgir2GqHfVH1aIZLbdMun+/99WFysRXwrbur7ycuAKg1bBMk
 QZQrIVR2G7yeXByEswteHBSlG5DcpoKvbN6MEtF2uYvZaWaP2Hw264+qR
 mXR49sgT7kZrlu2kv6wOUBQfVB3kfSMxpbc2dPRblC7NbQ1tP4aXQEzXa
 GkvD+M/E9oZKLnYTructiQggb+EvwRWDY4qyxaC7mP7hi9SGyqOzO90N4
 Jn2K30Z6spRJ1srRnQf6+W2lIbFaLF6aJFNR2N1rcxDMwD9tGl1TKKqWu
 TVmEh7BBLI+aIHMmkS63d7Tayyep7FS+6R40wko1g4fitmETY0D82cqDK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147515"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147515"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204882"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204882"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:36 -0700
Message-Id: <20230823170740.1180212-39-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 38/42] drm/i915/lnl: Serialize global state if
 mdclk/cdclk ratio changes.
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

mdclk_cdclk_ratio is a part of dbuf_state and if it changes, it requires
hw to be poked, so we must serialize the global state in that case.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4d8b960389ec..38a9c47e4ae1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2789,7 +2789,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
 	enum pipe pipe;
-	struct intel_dbuf_state *dbuf_state;
+	struct intel_dbuf_state *new_dbuf_state;
+	struct intel_dbuf_state *old_dbuf_state;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
@@ -2823,11 +2824,21 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 		}
 	}
 
-	dbuf_state = intel_atomic_get_new_dbuf_state(state);
-	if (dbuf_state)
-		dbuf_state->mdclk_cdclk_ratio =
+	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
+	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
+	if (new_dbuf_state && old_dbuf_state) {
+		new_dbuf_state->mdclk_cdclk_ratio =
 			get_mdclk_cdclk_ratio(dev_priv, &cdclk_state->actual);
 
+		if (new_dbuf_state->mdclk_cdclk_ratio != old_dbuf_state->mdclk_cdclk_ratio) {
+			int ret;
+
+			ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
+			if (ret)
+				return ret;
+		}
+	}
+
 	min_cdclk = max(cdclk_state->force_min_cdclk,
 			cdclk_state->bw_min_cdclk);
 	for_each_pipe(dev_priv, pipe)
-- 
2.40.1

