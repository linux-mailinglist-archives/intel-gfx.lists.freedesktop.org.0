Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D06D22AFD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E17F10E17E;
	Thu, 15 Jan 2026 07:00:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SdXykBzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B7410E13E;
 Thu, 15 Jan 2026 07:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768460458; x=1799996458;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZvHY6s3dhRLzX0jtIb+bq4GeY1KK2H4zl11ETljkc9Y=;
 b=SdXykBzVYWvMixOQJVtZUNiI/GjOaS9GWfM8aYu8h0DvUe6SprXEe4cG
 0K18qCIMieUi08RTLzfcxfFpEFOFRxls9z/Ijgz12SZ4SEjbrHwcQS72A
 jFBNmLlU+Qc9RpNT371BAEvz3ElbF82nDkEB7Q+dnr398rmdpWaTKv43u
 ksJLjRAIeH2VqnHNX+hBeEywVkwZ/gS/AgEcqLH+cmfVIImRmQqecfh45
 I0IHq2eCHu8l1INbSNgRkzjDmCGRhfxRb9nsH5sxowMNifO1yFiWaY8Vg
 +X00WtJRRTEBlfpZZfPcirIz/68VIKt1F3qI6y4NrleROncuCdXJ7KPtG Q==;
X-CSE-ConnectionGUID: sr//Ov/iRk2ajWPsaA+mGQ==
X-CSE-MsgGUID: EA3F1borTiqLk6kTzNtfQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="80059979"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="80059979"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:00:57 -0800
X-CSE-ConnectionGUID: x1/AbvKgSgSiegeI9l/anw==
X-CSE-MsgGUID: HnnX+Na1SfOvFWpUlvUliQ==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.125])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:00:55 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, stable@vger.kernel.org
Subject: [PATCH] drm/i915/psr: Don't enable Panel Replay on sink if globally
 disabled
Date: Thu, 15 Jan 2026 09:00:39 +0200
Message-ID: <20260115070039.368965-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

With some panels informing support for Panel Replay we are observing
problems if having Panel Replay enable bit set on sink when forced to use
PSR instead of Panel Replay. Avoid these problems by not setting Panel
Replay enable bit in sink when Panel Replay is globally disabled during
link training. I.e. disabled by module parameter.

The enable bit is still set when disabling Panel Replay via debugfs
interface. Added note comment about this.

Fixes: 68f3a505b367 ("drm/i915/psr: Enable Panel Replay on sink always when it's supported")
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: <stable@vger.kernel.org> # v6.15+
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 91f4ac86c7ad..62208ffc5101 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -842,7 +842,12 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp,
 
 void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp)
 {
-	if (CAN_PANEL_REPLAY(intel_dp))
+	/*
+	 * NOTE: We might want to trigger mode set when
+	 * disabling/enabling Panel Replay via debugfs interface to
+	 * ensure this bit is cleared/set accordingly.
+	 */
+	if (CAN_PANEL_REPLAY(intel_dp) && panel_replay_global_enabled(intel_dp))
 		drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
 				   DP_PANEL_REPLAY_ENABLE);
 }
-- 
2.43.0

