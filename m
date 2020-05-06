Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0753B1C7342
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 16:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EEA6E85A;
	Wed,  6 May 2020 14:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F956E21F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 14:48:15 +0000 (UTC)
IronPort-SDR: kQ7hleE8Rib0bD0kmB/M5nuFbs9skWUULpbnDY6pZAurlrtJ7uzoTaYYNNaq8Iufbsh2mt9RyU
 5uRSQw15xQsw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 07:48:15 -0700
IronPort-SDR: s8x1+RoemGSYOJmyLt11/etMeNpzjQevDlqy68Hq9lQVIsJhQDj9fG7FC3aUj6s5cUu7B7e0ox
 hoBqGBAXnWXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="369811084"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga001.fm.intel.com with ESMTP; 06 May 2020 07:48:14 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 90FCC84076E; Wed,  6 May 2020 17:47:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 17:47:31 +0300
Message-Id: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/4] Revert "drm/i915/tgl: Include ro parts of
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
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
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
index dc3f2ee7136d..feba021ca572 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4579,7 +4579,6 @@ static int gen12_emit_flush_render(struct i915_request *request,
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
