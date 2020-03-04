Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EC3179BBD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 23:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09F16EB6F;
	Wed,  4 Mar 2020 22:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA7E6EB6F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 22:33:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 14:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="240608388"
Received: from diana2.ra.intel.com ([10.23.184.122])
 by orsmga003.jf.intel.com with ESMTP; 04 Mar 2020 14:33:24 -0800
From: Caz Yokoyama <caz.yokoyama@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 14:13:59 -0800
Message-Id: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] Revert "drm/i915/tgl: Add extra hdc flush
 workaround"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 36a6b5d964d995b536b1925ec42052ee40ba92c4.
Fixes: 36a6b5d964d9 ("drm/i915/tgl: Add extra hdc flush workaround")

The commit takes care Wa_1604544889 which was fixed on a0 stepping based on
a0 replan. So no SW workaround is required on any stepping now.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b9b3f78f1324..f9425e5ed7ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4145,26 +4145,6 @@ static int gen12_emit_flush_render(struct i915_request *request,
 
 		*cs++ = preparser_disable(false);
 		intel_ring_advance(request, cs);
-
-		/*
-		 * Wa_1604544889:tgl
-		 */
-		if (IS_TGL_REVID(request->i915, TGL_REVID_A0, TGL_REVID_A0)) {
-			flags = 0;
-			flags |= PIPE_CONTROL_CS_STALL;
-			flags |= PIPE_CONTROL_HDC_PIPELINE_FLUSH;
-
-			flags |= PIPE_CONTROL_STORE_DATA_INDEX;
-			flags |= PIPE_CONTROL_QW_WRITE;
-
-			cs = intel_ring_begin(request, 6);
-			if (IS_ERR(cs))
-				return PTR_ERR(cs);
-
-			cs = gen8_emit_pipe_control(cs, flags,
-						    LRC_PPHWSP_SCRATCH_ADDR);
-			intel_ring_advance(request, cs);
-		}
 	}
 
 	return 0;
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
