Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14325876299
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 12:01:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8981D113854;
	Fri,  8 Mar 2024 11:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIX8DAxc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D99F3113854
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 11:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709895667; x=1741431667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m8rqJqcwwF1kxs05z27VrKBvdckegy0074bmhC0GxoA=;
 b=LIX8DAxcmpKss/PTd71UqE0UIbIZZ2RPYgBesl0R0SYN8DaTPAj6Bzma
 P5UGvNZM31VsBUZwRYNhIzG95Rl05VXqFakPpC1B5khI9c/dyjwkJSYxR
 fDY32Ftrm/Pq2G3QON6qP7R8ij8IfScosDrrEO07vn9Au6LjmCypeuVDv
 4i3ULpts6roVmJ26LCFcrXrkI45rsN4T2xhwTo5RYusSJqJnOMpCH3Bd2
 BX3E22xDNCsfYnjGFSW6Ls7+DKy6jH74h0f2q7WClGX8Rv8doOVtO/p7A
 rOLkHqU+6W28+00hnJ3C3TIeZHqAH7p8m9Th4JufuvKRxS/gKhywTReJa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4480330"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4480330"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15130082"
Received: from mkupniew-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.210])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:01:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 4/5] drm/i915/psr: Add IO buffer wake times for LunarLake
 and beyond
Date: Fri,  8 Mar 2024 13:00:38 +0200
Message-Id: <20240308110039.3900838-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240308110039.3900838-1-jouni.hogander@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
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

IO buffer wake time used for IO wake calculation is dependent on port clock
on LunarLake and beyond. Take this into account in get_io_buffer_wake_time.

Bspec: 65450

v2: add own io_wake_time helper for LunarLake

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 747761efa4be..e3daaf05d640 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1165,11 +1165,23 @@ static int tgl_io_buffer_wake_time(void)
 	return 10;
 }
 
+static int lnl_io_buffer_wake_time(int port_clock)
+{
+	if (port_clock > 270000)
+		return 10;
+	else if (port_clock > 162000)
+		return 11;
+	else
+		return 15;
+}
+
 static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(i915) >= 20)
+		return lnl_io_buffer_wake_time(crtc_state->port_clock);
+	else if (DISPLAY_VER(i915) >= 12)
 		return tgl_io_buffer_wake_time();
 	else
 		return skl_io_buffer_wake_time();
-- 
2.34.1

