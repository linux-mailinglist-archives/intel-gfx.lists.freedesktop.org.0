Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D88B7ABFCC8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0498210E741;
	Wed, 21 May 2025 18:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLh3c8Jc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E01F10E757;
 Wed, 21 May 2025 18:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851418; x=1779387418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z10KsXzBpq0+09aD1Jyu3CXJhp/035BpyX+d2jp9KFI=;
 b=hLh3c8Jcax5uW1JH6v7N3Xg9S78/1IkZ7xX74pA78hzVM9pXJ+A4AVt7
 uTqxlF0KjAZ3XLPgZck5pswrPQPXtxy/iWQPt7yEdud+BBXLwzruX74XP
 1KiGAbyEStFOjC020Thw7R9jTf6bxPEdqVFJlwyeONXcSxCvg7kMEd+Ct
 Ah3wS/5VmoIZhB5zvj0GtShpA9YoAhWWZX9I17MX62OS1kwZkQRPEvQPt
 l5BBuHdqZ5H5agMN7bkv7AD02hm4W+nBnXcZhxorvTlBem0aGskXBOE2C
 hdf2HWoctJU+W4xXAi0u8O+4R5IG143z+1De/c6jLdYydKEVu/MeoWPKA w==;
X-CSE-ConnectionGUID: F6bUP1rjRdisB/VBLUCRWQ==
X-CSE-MsgGUID: D4tHsNcvT5mCV33JUl9z6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244730"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244730"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:16:58 -0700
X-CSE-ConnectionGUID: AOg9LZBKQNiGXLoFnHFGTw==
X-CSE-MsgGUID: cxqNIgztQ4GYFZfBwMSbFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322283"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:16:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:16:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 03/13] drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
Date: Wed, 21 May 2025 21:16:35 +0300
Message-ID: <20250521181645.32737-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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

Extract the DSB tail alignment checks into helper. We already
have two uses of this, and soo we'll get a third.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b5c8972dfad2..b7d11eb1ce80 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -204,6 +204,15 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
 			 crtc->base.base.id, crtc->base.name, dsb->id);
 }
 
+static bool assert_dsb_tail_is_aligned(struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	struct intel_display *display = to_intel_display(crtc->base.dev);
+
+	return !drm_WARN_ON(display->drm,
+			    !IS_ALIGNED(dsb->free_pos * 4, CACHELINE_BYTES));
+}
+
 static void intel_dsb_dump(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
@@ -623,9 +632,10 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	if (drm_WARN_ON(display->drm, dsb->id == chained_dsb->id))
 		return;
 
+	if (!assert_dsb_tail_is_aligned(chained_dsb))
+		return;
+
 	tail = chained_dsb->free_pos * 4;
-	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
-		return;
 
 	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
 			    ctrl | DSB_ENABLE);
@@ -697,10 +707,11 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
 
-	tail = dsb->free_pos * 4;
-	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
+	if (!assert_dsb_tail_is_aligned(dsb))
 		return;
 
+	tail = dsb->free_pos * 4;
+
 	if (is_dsb_busy(display, pipe, dsb->id)) {
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d is busy\n",
 			crtc->base.base.id, crtc->base.name, dsb->id);
-- 
2.49.0

