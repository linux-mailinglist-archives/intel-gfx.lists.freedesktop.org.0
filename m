Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE58ACD8F6C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51B110E2CE;
	Tue, 23 Dec 2025 10:51:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hmom4N4x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF50B10E2BE;
 Tue, 23 Dec 2025 10:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487107; x=1798023107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IA/uGeujoVQu3plklxhp1JRcNCwND0RX18AgP1KQMJk=;
 b=Hmom4N4xVYEocizRQ3urlvBr8oD697lzceDtt94swHfNB+0ZAf0vT4sZ
 5nLWlu8qukOLtF45m0zCJ6NEdpByxN/hgvLD5hoq7q1IgX5PP3yT1pYFH
 A8do6xW2/gUcLKTjVovbZHAX0yiXYs0XEi1UWv1MP6zjTr7Z+zQcBRaoB
 Tjl268wfwcmMo+K/l9Cmwyh6Zjat3GFYn5Cg56ZHcne5tJgED/rMnmMdK
 GraH/0eLzWhh8XOlhZy1kDWC+TdbDsynXK2IcVCx2EE9NrxYm/GYJGIk6
 RRcmR3VPveP8a+/z1TwiBQLXaGoz1QfYjP0YjWp1h3eSgdaQVWj0/zg1m w==;
X-CSE-ConnectionGUID: BUrrFBA3QH2xvoJdjpIKXA==
X-CSE-MsgGUID: N0+o3mxlRQq7U64bp3crTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="78651286"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="78651286"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:47 -0800
X-CSE-ConnectionGUID: 21jTGEJHSRO4PvtgGmX0Og==
X-CSE-MsgGUID: riYTW7vgTZS/PvpFGvRZCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204806229"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.100])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:45 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 7/8] drm/i915/psr: Do PSR exit on frontbuffer flush on
 LunarLake and onwards
Date: Tue, 23 Dec 2025 12:51:19 +0200
Message-ID: <20251223105120.21505-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223105120.21505-1-jouni.hogander@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
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

We need to use intel_psr_exit in frontbuffer flush on LunarLake and
onwardsif we want to move using trans push mechanism to trigger Frame
Change event.

Keep PSR1 and PSR2 HW tracking as it is for older platforms as this was
seen causing problems there.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4336ba188aa7..ee70d0ceeb5b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3559,7 +3559,14 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
+	if (DISPLAY_VER(display) >= 20) {
+		/*
+		 * We can use PSR exit on LunarLake onwards. Also
+		 * using trans push mechanism to trigger Frame Change
+		 * event requires using PSR exit.
+		 */
+		intel_psr_exit(intel_dp);
+	} else if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		/* Selective fetch prior LNL */
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
@@ -3579,16 +3586,11 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		intel_psr_configure_full_frame_update(intel_dp);
 
 		intel_psr_force_update(intel_dp);
-	} else if (!intel_dp->psr.psr2_sel_fetch_enabled) {
+	} else {
 		/*
-		 * PSR1 on all platforms
-		 * PSR2 HW tracking
-		 * Panel Replay Full frame update
+		 * On older platforms using PSR exit was seen causing problems
 		 */
 		intel_psr_force_update(intel_dp);
-	} else {
-		/* Selective update LNL onwards */
-		intel_psr_exit(intel_dp);
 	}
 
 	if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-- 
2.43.0

