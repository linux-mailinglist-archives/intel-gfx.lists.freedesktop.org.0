Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B13C1C00BB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE17E6E92C;
	Thu, 30 Apr 2020 15:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEAB6E92A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:48:15 +0000 (UTC)
IronPort-SDR: 1FEqf1ffHgCdykgtLU73lYcMOirLsw33/on7h8DDfyZuLab5DucNQmoBv8Bbv77Cbu5ASZaQaf
 51j/MY1If6kw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 08:48:14 -0700
IronPort-SDR: hDSMQNvrKI1OtwvrVCgC/zenTxok8SONUzN3hm+FFJyA+U3gb4ZK/NA+LIb5Keq00tqgTFGJFg
 8sgqaIbLYd0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="294547858"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 30 Apr 2020 08:48:13 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id AFF3C84089D; Thu, 30 Apr 2020 18:47:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 18:47:27 +0300
Message-Id: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/9] Revert "drm/i915/tgl: Include ro parts of
 l3 to invalidate"
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 62037ffff229b7d94f1db5ef8d2e2ec819832ef3.

L3 ro cache invalidation is part of the dword0 of pipe
control. Also it is not relevant to this gen.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h | 1 -
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index ee10122a511e..b3cf09657fb2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -236,7 +236,6 @@
 #define   PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH	(1<<12) /* gen6+ */
 #define   PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE	(1<<11) /* MBZ on ILK */
 #define   PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE		(1<<10) /* GM45+ only */
-#define   PIPE_CONTROL_L3_RO_CACHE_INVALIDATE		REG_BIT(10) /* gen12 */
 #define   PIPE_CONTROL_INDIRECT_STATE_DISABLE		(1<<9)
 #define   PIPE_CONTROL_HDC_PIPELINE_FLUSH		REG_BIT(9)  /* gen12 */
 #define   PIPE_CONTROL_NOTIFY				(1<<8)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4311b12542fb..8f82b960f2a1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4585,7 +4585,6 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
 		flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
 		flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
-		flags |= PIPE_CONTROL_L3_RO_CACHE_INVALIDATE;
 
 		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
 		flags |= PIPE_CONTROL_QW_WRITE;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
