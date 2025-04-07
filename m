Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122CEA7E209
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B58610E4B7;
	Mon,  7 Apr 2025 14:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iI9zQil4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD0010E4B7;
 Mon,  7 Apr 2025 14:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036757; x=1775572757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=314mqfDtjNu5mtNipiXbkfIWSGIVATmO2SWZYbJ+pPA=;
 b=iI9zQil4rx/LaiJDPzjgDdghBDlfdFE25fPJrGWw4k7+gpyB5x4V0T3Y
 GGxxnhiOP5Zqi+pRhVDhd3lvCQgTYp4CdMsRumgqi13h80DJ/DXqUu98v
 i/92plq+lesxkU4EqYzBtCiVwfBY/kNMyOIbKLQ712acU+MFsjkXXxgt3
 3WEOO1d5XECSw6Lg/97eVyU3mGmz2lwAOH4SbieUWHyzlkwyBIOqY/1mC
 dFhCEvkFJ5kjdIqXyVlpw6YX9jVJpze7izN/k9f0aXfIu93015xFADlzx
 4vWL6KdulfoHNgUTgGhUB22EahfTCeMPX7TgoSd9QOwqHHGnQXNf7ZpvW w==;
X-CSE-ConnectionGUID: kn7HBtVSSL2K9ujiG0unew==
X-CSE-MsgGUID: s9SsoSKGSiGHYibFTc9sPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572413"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572413"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:17 -0700
X-CSE-ConnectionGUID: lJ+cWvDrRV25IIr5UDtC8g==
X-CSE-MsgGUID: Lttk/nseRMq/wbNnhRPjYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963656"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:15 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 03/11] drm/i915/dsb: Extract intel_dsb_{head,tail}()
Date: Mon,  7 Apr 2025 19:53:51 +0530
Message-Id: <20250407142359.1398410-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the code that calculates the DSB_HEAD/TAIL register
values into small helpers. We already have two copies of this,
and soon there will be a third.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 08e3bbea1a67..0de15e3a9a56 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -237,6 +237,16 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
+static unsigned int intel_dsb_head(struct intel_dsb *dsb)
+{
+	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
+}
+
+static unsigned int intel_dsb_tail(struct intel_dsb *dsb)
+{
+	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + dsb->free_pos * 4;
+}
+
 static void intel_dsb_ins_align(struct intel_dsb *dsb)
 {
 	/*
@@ -625,7 +635,6 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state->base.dev);
 	struct intel_crtc *crtc = dsb->crtc;
 	enum pipe pipe = crtc->pipe;
-	u32 tail;
 
 	if (drm_WARN_ON(display->drm, dsb->id == chained_dsb->id))
 		return;
@@ -633,8 +642,6 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	if (!assert_dsb_tail_is_aligned(chained_dsb))
 		return;
 
-	tail = chained_dsb->free_pos * 4;
-
 	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
 			    ctrl | DSB_ENABLE);
 
@@ -655,10 +662,10 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	}
 
 	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
-			    intel_dsb_buffer_ggtt_offset(&chained_dsb->dsb_buf));
+			    intel_dsb_head(chained_dsb));
 
 	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
-			    intel_dsb_buffer_ggtt_offset(&chained_dsb->dsb_buf) + tail);
+			    intel_dsb_tail(chained_dsb));
 
 	if (ctrl & DSB_WAIT_FOR_VBLANK) {
 		/*
@@ -703,13 +710,10 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	struct intel_crtc *crtc = dsb->crtc;
 	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 tail;
 
 	if (!assert_dsb_tail_is_aligned(dsb))
 		return;
 
-	tail = dsb->free_pos * 4;
-
 	if (is_dsb_busy(display, pipe, dsb->id)) {
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d is busy\n",
 			crtc->base.base.id, crtc->base.name, dsb->id);
@@ -727,7 +731,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
 
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
-			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
+			  intel_dsb_head(dsb));
 
 	if (hw_dewake_scanline >= 0) {
 		int diff, position;
@@ -749,7 +753,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	}
 
 	intel_de_write_fw(display, DSB_TAIL(pipe, dsb->id),
-			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
+			  intel_dsb_tail(dsb));
 }
 
 /**
-- 
2.25.1

