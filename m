Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDAC1C00B9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DEA6E929;
	Thu, 30 Apr 2020 15:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F09C6E92F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:48:14 +0000 (UTC)
IronPort-SDR: 08RbYTl3qbB4aLiultb1ABCjDEFr4LZwJqBZekMBkF5UuR0FXUAbY/H+lD3nPlEC+6PBy5rk2x
 LR8huwWMnr1w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 08:48:13 -0700
IronPort-SDR: P9lIOm8lzcpU7WWmCdmagJbO6PW1QFvUdmCZDNT+WtUiqV6XA7WP5XW6acVqxnzRiJ1TyuBcdR
 tFu22VK9XOkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="459620071"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 30 Apr 2020 08:48:12 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id BAE458408A3; Thu, 30 Apr 2020 18:47:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 18:47:29 +0300
Message-Id: <20200430154735.22434-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/gen12: Add L3 fabric flush
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

Do a l3 fabric flush when emitting flush.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h | 1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 534e435f20bc..98b39e65aed9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -219,6 +219,7 @@
 #define   DISPLAY_PLANE_A           (0<<20)
 #define   DISPLAY_PLANE_B           (1<<20)
 #define GFX_OP_PIPE_CONTROL(len)	((0x3<<29)|(0x3<<27)|(0x2<<24)|((len)-2))
+#define   PIPE_CONTROL_L3_FABRIC_FLUSH		        (1<<30) /* gen12+ */
 #define   PIPE_CONTROL_COMMAND_CACHE_INVALIDATE		(1<<29) /* gen11+ */
 #define   PIPE_CONTROL_TILE_CACHE_FLUSH			(1<<28) /* gen11+ */
 #define   PIPE_CONTROL_FLUSH_L3				(1<<27)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3c5e55ad4f9f..b3ddb928d231 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4552,6 +4552,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		u32 flags = 0;
 		u32 *cs;
 
+		flags |= PIPE_CONTROL_L3_FABRIC_FLUSH;
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
@@ -4766,6 +4767,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				       i915_request_active_timeline(request)->hwsp_offset,
 				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
 				       PIPE_CONTROL_CS_STALL |
+				       PIPE_CONTROL_L3_FABRIC_FLUSH |
 				       PIPE_CONTROL_TILE_CACHE_FLUSH |
 				       PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 				       PIPE_CONTROL_DEPTH_CACHE_FLUSH |
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
