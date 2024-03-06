Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1198730D5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 09:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38BA10EB7C;
	Wed,  6 Mar 2024 08:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RK/5WEs9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB71F10EB7C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 08:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709714102; x=1741250102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ec0U4HZP37aHqBn/hwmb2y7ZwtcH1zc4heatRFZJ8WY=;
 b=RK/5WEs9CUbKSxYJMR55rp/lwCg/GeDrrlQ7y7Y+y0sNqMTK7EDoOm8l
 rxSvtV6fq0wRRHA3kEX3sRbJBX+JLMQFbUsT4oU0DYhsnefyLftSYPJxO
 zJzt4DHv2rfPN2quCIZSLUc+hB9BU1DlJxPL37NqPdIt0OOoqyEwwxgHr
 aENbTUZ/yCIVUUs8NQhGaZVU0yXufu1Ri+cmfsOcXvTXKfPcRiYNDVyQB
 SUCvaNX16x8AZk3EdpjrS5lXHBZ0ypIN0aRFKM1EnOihtx1x28OJPY8Rm
 BYdIgh9Bs/Sjx4ucN5DvIhDAMMKPSPKQkpCplUnUM++z30vHuSvfhl2+T g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4177696"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="4177696"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14344126"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:35:01 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 2/5] drm/i915/psr: Improve fast and IO wake lines
 calculation
Date: Wed,  6 Mar 2024 10:34:24 +0200
Message-Id: <20240306083427.2040475-3-jouni.hogander@intel.com>
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

Current fast and IO wake lines calculation is assuming fast wake sync
length is 18 pulses. Let's improve this by checking actual length.

Add getter for IO buffer wake time and return 10 us there which was assumed
with static 42 us IO wake time. Upcoming patches will extent this for
different display versions.

Bspec: 65450

v2:
  - rename io_wake_time in if block to io_buffer_wake_time
  - rename get_io_wake_time to get_io_buffer_wake_time

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6927785fd6ff..905208e1c771 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1150,6 +1150,11 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	return true;
 }
 
+static int get_io_buffer_wake_time(void)
+{
+	return 10;
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
@@ -1158,12 +1163,16 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	u8 max_wake_lines;
 
 	if (DISPLAY_VER(i915) >= 12) {
-		io_wake_time = 42;
-		/*
-		 * According to Bspec it's 42us, but based on testing
-		 * it is not enough -> use 45 us.
-		 */
-		fast_wake_time = 45;
+		int io_buffer_wake_time = get_io_buffer_wake_time();
+		int tfw_exit_latency = 20; /* eDP spec */
+		int phy_wake = 4;	   /* eDP spec */
+		int preamble = 8;	   /* eDP spec */
+		int precharge = intel_dp_aux_fw_sync_len() - preamble;
+
+		io_wake_time = max(precharge, io_buffer_wake_time) + preamble +
+			phy_wake + tfw_exit_latency;
+		fast_wake_time = precharge + preamble + phy_wake +
+			tfw_exit_latency;
 
 		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
-- 
2.34.1

