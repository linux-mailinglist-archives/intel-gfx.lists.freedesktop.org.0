Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C777A61A8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 13:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1173E10E10F;
	Tue, 19 Sep 2023 11:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4DD10E10F;
 Tue, 19 Sep 2023 11:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695124062; x=1726660062;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EZCE6lNO/5ZK4xDLwMtsiXiVPZzBD8iQ9YtFYhFBliY=;
 b=KT8AnnenBLFWYdhFhwRvZ+/ehwxyNt4kpKvVbnEOQQlPWZIhetsTnOKo
 w/Jw6MzfmShh4Q+PEFOL1pKe/ScJVqYMBA+PSNbY46aMWwrcHvP+FQq8N
 vG5GuSHwAc1BtZVc/Lr1hAsBzADOMj/9bZdAVkg6iaOxDyti9eB8VNlUb
 UN6SZzVTvMGnfxqnphLYZZZ0VN2GM6o4djMID9r3lRwX+xDJwxTitw/Za
 /h+nL7n1QT8e4/2saFN+ga5iyMmEbT6dSh0Kb1IOmfQQ1CrRfpPIMbYCf
 H64fcljSCqkffNehgRr3t8O9hs3NLbN5c5c+SRH+9+6T0ERbtkXqRgTHu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="410847282"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="410847282"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 04:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="861506893"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="861506893"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 04:47:38 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 13:47:16 +0200
Message-ID: <20230919114716.19378-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix aux invalidation with proper
 pipe_control flag
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The suggestion from the spec is to do l3 fabric flush not L3 flush.

Fixes: 78a6ccd65fa3 ("drm/i915/gt: Ensure memory quiesced before
invalidation")
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.8+
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h | 1 +
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 0143445dba83..a4b241d502c8 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -272,7 +272,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 			bit_group_0 |= PIPE_CONTROL_CCS_FLUSH;
 
 		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
-		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
+		if (mode & EMIT_FLUSH)
+			bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
+		else if (gen12_needs_ccs_aux_inv(engine))
+			bit_group_1 |= PIPE_CONTROL_L3_FABRIC_FLUSH;
+
 		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
 		bit_group_1 |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
 		/* Wa_1409600907:tgl,adl-p */
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 2bd8d98d2110..12e8dc481c53 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -284,6 +284,7 @@
 #define   DISPLAY_PLANE_A           (0<<20)
 #define   DISPLAY_PLANE_B           (1<<20)
 #define GFX_OP_PIPE_CONTROL(len)	((0x3<<29)|(0x3<<27)|(0x2<<24)|((len)-2))
+#define   PIPE_CONTROL_L3_FABRIC_FLUSH			(1<<30)
 #define   PIPE_CONTROL_COMMAND_CACHE_INVALIDATE		(1<<29) /* gen11+ */
 #define   PIPE_CONTROL_TILE_CACHE_FLUSH			(1<<28) /* gen11+ */
 #define   PIPE_CONTROL_FLUSH_L3				(1<<27)
-- 
2.41.0

