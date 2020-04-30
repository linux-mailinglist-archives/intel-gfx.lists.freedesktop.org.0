Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A4C1C00BC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64CB6E92F;
	Thu, 30 Apr 2020 15:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52FE6E927
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:48:14 +0000 (UTC)
IronPort-SDR: /smiu/6i0RBxVa5c6c7qdHdp2KdZpByIZKS5zl+eH+OpPiEAA7Ei0+ogbsGFPDs86gdNv0k+sI
 /nx+gdp6zecA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 08:48:14 -0700
IronPort-SDR: 822fRfPy5xRGjyf48cAV2h80JzU4GzK+RwsTkAGLFwk4LJtxeG951XIn1mHxubu5igy/I9U9is
 DPuoj/xCzPwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="249780799"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 30 Apr 2020 08:48:13 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id DE7C7840D8A; Thu, 30 Apr 2020 18:47:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 18:47:35 +0300
Message-Id: <20200430154735.22434-9-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/gen12: Flush LLC
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

Request boundary is a global observation point for
all operations. Thus flush the LLC too.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h | 1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 69979cc86caa..a7f4f0934508 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -223,6 +223,7 @@
 #define   PIPE_CONTROL_COMMAND_CACHE_INVALIDATE		(1<<29) /* gen11+ */
 #define   PIPE_CONTROL_TILE_CACHE_FLUSH			(1<<28) /* gen11+ */
 #define   PIPE_CONTROL_FLUSH_L3				(1<<27)
+#define   PIPE_CONTROL_FLUSH_LLC			(1<<26) /* gen12+ */
 #define   PIPE_CONTROL_FLUSH_AMFS			(1<<25) /* gen12+ */
 #define   PIPE_CONTROL_GLOBAL_GTT_IVB			(1<<24) /* gen7+ */
 #define   PIPE_CONTROL_MMIO_WRITE			(1<<23)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 859c901c8935..2a4ef2ea042f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4555,6 +4555,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		flags |= PIPE_CONTROL_L3_FABRIC_FLUSH;
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_FLUSH_L3;
+		flags |= PIPE_CONTROL_FLUSH_LLC;
 		flags |= PIPE_CONTROL_FLUSH_AMFS;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
@@ -4776,6 +4777,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				       PIPE_CONTROL_L3_FABRIC_FLUSH |
 				       PIPE_CONTROL_TILE_CACHE_FLUSH |
 				       PIPE_CONTROL_FLUSH_L3 |
+				       PIPE_CONTROL_FLUSH_LLC |
 				       PIPE_CONTROL_FLUSH_AMFS |
 				       PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 				       PIPE_CONTROL_DEPTH_CACHE_FLUSH |
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
