Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E391C00B6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592E66E92D;
	Thu, 30 Apr 2020 15:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830696E930
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:48:13 +0000 (UTC)
IronPort-SDR: uE/Vu1eecuA/eeqouN1ihjjZ8YFEffynKnPAdZWHg+lHLu+XFQn2ZjYdQPVfinvlSj8MxKtxte
 5zYDpwlU78BA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 08:48:13 -0700
IronPort-SDR: Yt5V3Q4QGDHq3boXxkfFgCKrol3q14Eq9NzSOXpfKiHvX+s5cdIdbukmu1yuz9/sSJjjqREoeR
 diinxdCjiomA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="282899253"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 30 Apr 2020 08:48:12 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C12858408A5; Thu, 30 Apr 2020 18:47:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 18:47:30 +0300
Message-Id: <20200430154735.22434-4-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/gen12: Flush L3
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

Flush TDL and L3.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b3ddb928d231..0bbce218157f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4554,6 +4554,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 
 		flags |= PIPE_CONTROL_L3_FABRIC_FLUSH;
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
+		flags |= PIPE_CONTROL_FLUSH_L3;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
 		/* Wa_1409600907:tgl */
@@ -4769,6 +4770,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
 				       PIPE_CONTROL_CS_STALL |
 				       PIPE_CONTROL_L3_FABRIC_FLUSH |
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
