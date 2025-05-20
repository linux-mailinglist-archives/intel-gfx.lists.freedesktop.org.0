Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEF8ABD191
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BC910E570;
	Tue, 20 May 2025 08:14:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyaPrPPn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8273710E550;
 Tue, 20 May 2025 08:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728844; x=1779264844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=05r2PK/W5AAgGMGMMMRe4EN6Wm8j6LPTuZMKGTbYf1A=;
 b=iyaPrPPncpC0tKeRC+rwxJ5DDCNfHuxnMqxZ/t+M2HNF/x7HlQv8fkqv
 O22thiyWNxegQ5v2SVHdqIOod1JjMqkv9R5th/qbJiDB30NQKTGDkFj2u
 wJFX8Iko5c5cffmArjOx2+QjHZjqk1B9MtlInoz+UmYA+faFpyXL0uFVY
 J9ncbIuZLWlOmUZGtZ5tDRiOmAq4VY9egbborXsQNgdHV/8Bd/O//LYzj
 ok+TYm1bIQ+Zu8X8VkaINNroTuQmpMdzlMNqrEGGQ36mjniDQmJnB5v/k
 MZUvD17G+ZmXPYhgnODuVBvxirXvM322D+w3S6U36rSYogdKh/IG+q8OE Q==;
X-CSE-ConnectionGUID: Z55rum4pTvaUReEoB+pqTg==
X-CSE-MsgGUID: aog5B1ZbSVGGtRBSUWza6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764834"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764834"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:04 -0700
X-CSE-ConnectionGUID: 9psxW5FHRU+2erFRg4scIg==
X-CSE-MsgGUID: iO6Don6BQiuJu522WG9AKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144475981"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:02 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 02/11] drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
Date: Tue, 20 May 2025 13:25:28 +0530
Message-Id: <20250520075537.4074010-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
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
have two uses of this, and soon we'll get a third.

v2: s/soo/soon in commit message (Animesh)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index d6641cfe8061..f2574e6812d1 100644
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
@@ -621,10 +630,11 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	if (drm_WARN_ON(display->drm, dsb->id == chained_dsb->id))
 		return;
 
-	tail = chained_dsb->free_pos * 4;
-	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
+	if (!assert_dsb_tail_is_aligned(chained_dsb))
 		return;
 
+	tail = chained_dsb->free_pos * 4;
+
 	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
 			    ctrl | DSB_ENABLE);
 
@@ -695,10 +705,11 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
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
2.25.1

