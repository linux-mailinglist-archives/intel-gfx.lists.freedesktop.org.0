Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296BAA7FEBB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769A510E65D;
	Tue,  8 Apr 2025 11:15:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H38GsqhN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5967810E660;
 Tue,  8 Apr 2025 11:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110938; x=1775646938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+f2VD6I1HJb49xVuDR0quwpQ60KE9eLOLMy6x8GhTRE=;
 b=H38GsqhNo7LLkjGrZ+7ZQ+coYavy2D/Mg4djcCDhak3P27rCnK4iqd1H
 xGgfHaqP8Ad3BE610vlENFrD7VmrTv2YCIomYFtLtDgKl7lUToqAkg4aQ
 O/pPCdWyiXHG/uYtkC7iHCLEuW+0nzDPd2tak34fXu7U4UsvcLNEXSXUJ
 AYz4kmmoZBwFuHYFtdcAaqrE+MLolJ9ieWqtnClbpqJPdk30A6APRDVFx
 hEavRKaoLKuMh/zlOjlbdgDS51pyMHcTQInY09aVsOzEDV0T/y9bHZikB
 zSZgI8T6umV3PgtmoEG8QJq8q18VLEDBkcuN4ziBkPv3UqnMxSzjG9Qb+ Q==;
X-CSE-ConnectionGUID: Dwt/ayGhSDugkC+h69VV/A==
X-CSE-MsgGUID: Xna/Y/KQTsaeI++uYcnxjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655914"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655914"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:38 -0700
X-CSE-ConnectionGUID: B3vdNGGRRXapCTLIlJUkFQ==
X-CSE-MsgGUID: Qkl/t/U+Sya3AYndb4IoDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133209966"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:36 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 02/11] drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
Date: Tue,  8 Apr 2025 16:30:13 +0530
Message-Id: <20250408110022.1907802-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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
index c166e02b8af0..08e3bbea1a67 100644
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

