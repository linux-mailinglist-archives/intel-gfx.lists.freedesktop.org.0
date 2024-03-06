Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D067B8730D7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 09:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C9010F177;
	Wed,  6 Mar 2024 08:35:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zz0wMjFf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A6F810F177
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 08:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709714107; x=1741250107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B8cKDiQmEjPaF/bxNbwy8H3dCxrvJyFpOFYp8cbZ/8s=;
 b=Zz0wMjFfPxOJkMH2bQpPeG78IqGyqX6YnoI2BK8eEKfOQ6IuJoK+Di3x
 Y9vKJm5HqCE3M0yMyugpKSM/kAm44p1CagYTXIBIJtC8JEspZjs0w35vv
 tTVgytvG7Il7npM8aaU1VVKLFlpzUfqJFIEcoDwHw7dQoZN6zZtlpBlC5
 hovflCLonZ8yC27mMOXAB1n5Y07fPkKkYvnQDGj7XpCwmfYww5crGJF2G
 ugQPcQuKAgYPouALIyhbcJJogt0QTWy2QqOIvgJhlZ46Rdi1WAVgSOoDL
 hUHzXgFfiSh6+pazfdLTIbGRhmrHQSOZnn/RZHAT+K81waRLQC2ItpkgG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4177698"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="4177698"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:35:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14344158"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:35:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for LunarLake
 and beyond
Date: Wed,  6 Mar 2024 10:34:26 +0200
Message-Id: <20240306083427.2040475-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306083427.2040475-1-jouni.hogander@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e1df0ece9fa3..e8410e770da8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1160,6 +1160,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
  * This is not directly mentioned in Bspec. There are 50 us io wake time and 32
  * us fast wake time. Clearly preharge pulses are not (improperly) included in
  * 32 us fast wake time. 50 us - 32 us = 18 us.
+ *
+ * For DISPLAY_VER >= 20
+ * RBR 15us, HBR1 11us, higher rates 10us
  */
 static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 {
@@ -1167,8 +1170,12 @@ static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(i915) < 12)
 		return 18;
-	else
+	else if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock > 270000)
 		return 10;
+	else if (crtc_state->port_clock > 162000)
+		return 11;
+	else
+		return 15;
 }
 
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
-- 
2.34.1

