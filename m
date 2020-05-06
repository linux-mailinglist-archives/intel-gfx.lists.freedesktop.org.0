Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FC01C7341
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 16:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8CE6E21F;
	Wed,  6 May 2020 14:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BC96E2A5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 14:48:15 +0000 (UTC)
IronPort-SDR: VjKHVS9Y+B0UZJj7NvK9/tFdwBFYeUtg/BOZLE1P129YsuAF35O0pqPI0cmRVqtN9YoQL450oO
 7zJ59SWSyUGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 07:48:15 -0700
IronPort-SDR: FH9H81n9RATqp8UHVFgB8ozh0rDt3eflqSrJiaTasFQEo3WlgO+D91KzpyInn63ZTFHHRzT6HU
 UfLitKwWpV4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="278248823"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 06 May 2020 07:48:14 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 9AC238408A3; Wed,  6 May 2020 17:47:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 17:47:33 +0300
Message-Id: <20200506144734.29297-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
References: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gen12: Flush L3
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

Flush TDL,L3 and EUs

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 78f879ed4aa7..e1235d504837 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4547,6 +4547,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		u32 *cs;
 
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
+		flags |= PIPE_CONTROL_FLUSH_L3;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
 		/* Wa_1409600907:tgl */
@@ -4758,6 +4759,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
 				       PIPE_CONTROL_CS_STALL |
 				       PIPE_CONTROL_TILE_CACHE_FLUSH |
+				       PIPE_CONTROL_FLUSH_L3 |
 				       PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 				       PIPE_CONTROL_DEPTH_CACHE_FLUSH |
 				       /* Wa_1409600907:tgl */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
