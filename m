Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C899B0511C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 07:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E98810E36C;
	Tue, 15 Jul 2025 05:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QIIrOyKH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894C710E172;
 Tue, 15 Jul 2025 05:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752558044; x=1784094044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8bn5anJ2111DInbOmAZwiM1IvhsP94FIl5zvsQvHsDY=;
 b=QIIrOyKHszCpm/FOJq5Y/7lTf6H5ihOCqR/a/P5SzAzwtkSotpX4zZhL
 8smC8a9lA3a6NOtBOGo72lmHmGIckvHuEDuJNFmaKaQoX40mDdo0gEe3z
 Fph8QMyDJX1ggQqQHLU136UyDcmF8J4JtHj8tQsqkyCjAvkoOzg5qPF36
 ae2decth5DDrEOh48+eNywWfgntX+JMcG7tEEULyf/idNnR+MZmC2mMkg
 MdV+RSo1YLdoeqqSiL+XKIBC4efmeA+Bkbi0ZdLNXPaP6lob1GLlQSkdk
 ScGJdHSibSETGWhgstspoLnHRHEDvoWl5mNxjYUXvDe1h04XfbC3Q5fmQ w==;
X-CSE-ConnectionGUID: 6e7TJgNmRB+skiwcZ2/XEw==
X-CSE-MsgGUID: goMcabKkQ9aKlKAHQmWWEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54701832"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="54701832"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:39 -0700
X-CSE-ConnectionGUID: P8uvehB7TLCknou590a6sA==
X-CSE-MsgGUID: 2YGgioWSTpmLu5NJif9UJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157232214"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 1/7] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Date: Tue, 15 Jul 2025 08:40:18 +0300
Message-ID: <20250715054024.3856223-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715054024.3856223-1-jouni.hogander@intel.com>
References: <20250715054024.3856223-1-jouni.hogander@intel.com>
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
index ae9053919211..41988e193a41 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3275,7 +3275,9 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (!intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 			intel_psr_configure_full_frame_update(intel_dp);
@@ -3361,7 +3363,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0)
@@ -3378,11 +3380,13 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
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
 		queue_work(display->wq.unordered, &intel_dp->psr.work);
 }
-- 
2.43.0

