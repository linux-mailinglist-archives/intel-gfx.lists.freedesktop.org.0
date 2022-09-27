Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248955ECA93
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 19:13:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD01F10E02F;
	Tue, 27 Sep 2022 17:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4B410E02F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 17:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664298800; x=1695834800;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hEtiXRa/r+C5BxPRq8LeOtsEg+59zbwK/xVg9+eaDo0=;
 b=IlRcb1lkr3elmrrcy09KXZ13XKm915b+cDa4PVHKMelAkE4Jwa7go0kX
 tWv/GKStv/OwcMsOoGejltHv2rfZpCcqqDxElHeVO9y+pyh/lF/Y2bt2q
 VWWny4kdhWgf6q1beOE34bvCaGHGzR0ugQCLVlPXF7WdNtoNePjlApdB0
 X1w+SBTnDo1Z+QTiH4zFgGGq5chRnh7ck+gHINWLy7Y9ougVFU+KGjkCd
 6mN8Gmmq2nBsZfh0tk0W6aRkYIDbBXDrmbjE4wiwMe1gbn1Jsov7e3QK8
 DQpAvJe+j8Oki9cI9W3VTBQwLU8sZ5pB2ow9hfm/GtJm4FFEejoZ57hVP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="365418582"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="365418582"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:13:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="763952302"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="763952302"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:13:19 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 19:13:13 +0200
Message-Id: <20220927171313.6553-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Flush to global observation point
 before breadcrumb write
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

From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>

Add flag to pipecontrol instruction to ensure in-flight writes are
flushed to global observation point. Also split the pipecontrol
instruction like we have in gen8.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/5886
Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 29 +++++++++++++++++-------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e49fa6fa6aee..31a2fbd8c4a8 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -583,6 +583,8 @@ u32 *gen8_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	cs = gen8_emit_pipe_control(cs,
+				    PIPE_CONTROL_CS_STALL |
+				    PIPE_CONTROL_TLB_INVALIDATE |
 				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
 				    PIPE_CONTROL_DC_FLUSH_ENABLE,
@@ -600,15 +602,21 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 
 u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
+	cs = gen8_emit_pipe_control(cs,
+				    PIPE_CONTROL_CS_STALL |
+				    PIPE_CONTROL_TLB_INVALIDATE |
+				    PIPE_CONTROL_TILE_CACHE_FLUSH |
+				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
+				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
+				    PIPE_CONTROL_DC_FLUSH_ENABLE,
+				    0);
+
+	/*XXX: Look at gen8_emit_fini_breadcrumb_rcs */
 	cs = gen8_emit_ggtt_write_rcs(cs,
 				      rq->fence.seqno,
 				      hwsp_offset(rq),
-				      PIPE_CONTROL_CS_STALL |
-				      PIPE_CONTROL_TILE_CACHE_FLUSH |
-				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
-				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
-				      PIPE_CONTROL_DC_FLUSH_ENABLE |
-				      PIPE_CONTROL_FLUSH_ENABLE);
+				      PIPE_CONTROL_FLUSH_ENABLE |
+				      PIPE_CONTROL_CS_STALL);
 
 	return gen8_emit_fini_breadcrumb_tail(rq, cs);
 }
@@ -715,6 +723,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct drm_i915_private *i915 = rq->engine->i915;
 	u32 flags = (PIPE_CONTROL_CS_STALL |
+		     PIPE_CONTROL_TLB_INVALIDATE |
 		     PIPE_CONTROL_TILE_CACHE_FLUSH |
 		     PIPE_CONTROL_FLUSH_L3 |
 		     PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
@@ -731,11 +740,15 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 	else if (rq->engine->class == COMPUTE_CLASS)
 		flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
 
+	cs = gen12_emit_pipe_control(cs, PIPE_CONTROL0_HDC_PIPELINE_FLUSH, flags, 0);
+
+	/*XXX: Look at gen8_emit_fini_breadcrumb_rcs */
 	cs = gen12_emit_ggtt_write_rcs(cs,
 				       rq->fence.seqno,
 				       hwsp_offset(rq),
-				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
-				       flags);
+				       0,
+				       PIPE_CONTROL_FLUSH_ENABLE |
+				       PIPE_CONTROL_CS_STALL);
 
 	return gen12_emit_fini_breadcrumb_tail(rq, cs);
 }
-- 
2.37.3

