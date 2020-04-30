Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAF51C00B5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE2F6E92B;
	Thu, 30 Apr 2020 15:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F336E92F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:48:13 +0000 (UTC)
IronPort-SDR: 7yF9urNHqEeSyOhTOWohZOUUmRJeqeKA6nbOuMTDXrXxdGK71z/FZ5u+whWNwY8+exvrVbGwmN
 /e2/qb5O98Gg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 08:48:13 -0700
IronPort-SDR: tx59P+SFRplDZxRQkF8XYTF2PKitNk95xraug5UGqWGFc2ZGTGC6e37SWwq2HqQpZZamRVY+Yh
 086IFUDXw1KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="303311077"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Apr 2020 08:48:12 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C73228408A8; Thu, 30 Apr 2020 18:47:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 18:47:31 +0300
Message-Id: <20200430154735.22434-5-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/gen12: Flush AMFS
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

To ensure that we have global observation point wrt to
all data, flush amfs.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h | 1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 98b39e65aed9..69979cc86caa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -223,6 +223,7 @@
 #define   PIPE_CONTROL_COMMAND_CACHE_INVALIDATE		(1<<29) /* gen11+ */
 #define   PIPE_CONTROL_TILE_CACHE_FLUSH			(1<<28) /* gen11+ */
 #define   PIPE_CONTROL_FLUSH_L3				(1<<27)
+#define   PIPE_CONTROL_FLUSH_AMFS			(1<<25) /* gen12+ */
 #define   PIPE_CONTROL_GLOBAL_GTT_IVB			(1<<24) /* gen7+ */
 #define   PIPE_CONTROL_MMIO_WRITE			(1<<23)
 #define   PIPE_CONTROL_STORE_DATA_INDEX			(1<<21)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 0bbce218157f..b47230583494 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4555,6 +4555,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		flags |= PIPE_CONTROL_L3_FABRIC_FLUSH;
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_FLUSH_L3;
+		flags |= PIPE_CONTROL_FLUSH_AMFS;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
 		/* Wa_1409600907:tgl */
@@ -4771,6 +4772,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				       PIPE_CONTROL_L3_FABRIC_FLUSH |
 				       PIPE_CONTROL_TILE_CACHE_FLUSH |
 				       PIPE_CONTROL_FLUSH_L3 |
+				       PIPE_CONTROL_FLUSH_AMFS |
 				       PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 				       PIPE_CONTROL_DEPTH_CACHE_FLUSH |
 				       /* Wa_1409600907:tgl */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
