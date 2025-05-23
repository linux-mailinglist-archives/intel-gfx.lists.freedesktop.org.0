Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939A3AC1D24
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2AFB10E716;
	Fri, 23 May 2025 06:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k1gy2N7Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A19410E716;
 Fri, 23 May 2025 06:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982346; x=1779518346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=05r2PK/W5AAgGMGMMMRe4EN6Wm8j6LPTuZMKGTbYf1A=;
 b=k1gy2N7YvzYyBvrwSqYgXXIgJE93wQZ6ATXXoUhOuixVmDVaincT/caI
 N5yT0WOD4H4Ek1seIaVorc222q6jRbFXIANPqZYZ9EeD+3r6uZLIWG2Ex
 HJT+MJM8e6jf1r0upaLem8klDfjkvdj/5b3TpSC0cx0JnakggMxyJnGwy
 99xs8o10WpXM6Ls+9OHRxOfS8b+Cubn4qabK3dHdK43ksyRO3K3bYBXUh
 HD85u2AxtMbCAArdF9XxhX7OT4GCyEKBv6GfE5wpyJ8pz7wK60lOTJeoI
 Ok9hfDX/o3z2h832RKWA5lCv+7KgKxE6MsiBDabJcZp9sl0smIo9hVRKz w==;
X-CSE-ConnectionGUID: 5GeOWXB5R7Wrnh2VCZT6oQ==
X-CSE-MsgGUID: bl3i4JvNR3SuJvIlWKNVdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592216"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592216"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:06 -0700
X-CSE-ConnectionGUID: FlDum2cjRdyi4IlSu/7Qhg==
X-CSE-MsgGUID: DnJSQz+mSdS/2IwPuAzp5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985300"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:04 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 02/11] drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
Date: Fri, 23 May 2025 11:50:32 +0530
Message-Id: <20250523062041.166468-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
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

