Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 421E3AC21BD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 13:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE80910E299;
	Fri, 23 May 2025 11:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="anSRbrRW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0E310E28F;
 Fri, 23 May 2025 11:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747998382; x=1779534382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K4m4rONtUqaHqafOiO+FHWiyrgN85sVFyiYRkCpK/wE=;
 b=anSRbrRWlRQsGlJiJ2L2wdB4cFyPhm4fvTEh9mmtwJ1Pe/IImfjzy/pn
 l2SzAfM0+ravSPeoyYKam9Rt3+TltN1aBe28krLfWJnS5aALOstbTJiBv
 Cb2i30tTPO23oMlrmNrfltxwvyEuGg3bv7Bumn2P9rtMZGUJSlAxv8IYg
 mfBeIfFVLgXIjWEW9Bzuw+AIPRoKFjOOldT4EO2jkPogLRYI/Ae/OCLjb
 1tc0EymNdr8/NsjR0Kw4veh7+x/QnRQA31xjRNPWorUl6ASSV0CSdek3m
 85Uby6rXPdZ8ylj4oM3oVws0H1SKDRtCSuICHrZSE/nx1zynOurR4Gshb g==;
X-CSE-ConnectionGUID: iwr3EeURRxuZHVzo0mfgVA==
X-CSE-MsgGUID: rN0GJzGYSYuZmvsizQqVBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67463916"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67463916"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:15 -0700
X-CSE-ConnectionGUID: SWXa0jIhRDudWRzwTlz9UQ==
X-CSE-MsgGUID: /vMdyIyYQwyINyc3giZTIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="164341794"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.108])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/4] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Date: Fri, 23 May 2025 14:05:52 +0300
Message-ID: <20250523110555.3494901-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250523110555.3494901-1-jouni.hogander@intel.com>
References: <20250523110555.3494901-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We want to get rid of triggering "Frame Change" events from
frontbuffer flush calls. We are about to move using TRANS_PUSH
register for this on LunarLake and onwards. Touching TRANS_PUSH
register from fronbuffer flush would be problematic as it's written by
DSB as well.

Fix this by using intel_psr_exit when flush or invalidate is done on
LunarLake and onwards. This is not possible on AlderLake and
MeteorLake due to HW bug in PSR2 disable.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd833b63ea6b..3d637d92ca89 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3250,7 +3250,9 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (!intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 			intel_psr_configure_full_frame_update(intel_dp);
@@ -3338,7 +3340,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0)
@@ -3355,11 +3357,13 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		 * existing SU configuration
 		 */
 		intel_psr_configure_full_frame_update(intel_dp);
-	}
 
-	intel_psr_force_update(intel_dp);
+		intel_psr_force_update(intel_dp);
+	} else {
+		intel_psr_exit(intel_dp);
+	}
 
-	if (!intel_dp->psr.psr2_sel_fetch_enabled && !intel_dp->psr.active &&
+	if ((!intel_dp->psr.psr2_sel_fetch_enabled || DISPLAY_VER(display) >= 20) &&
 	    !intel_dp->psr.busy_frontbuffer_bits)
 		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
 }
-- 
2.43.0

