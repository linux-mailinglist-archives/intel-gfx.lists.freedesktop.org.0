Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C3889D1DB
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 07:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69DAE1128F5;
	Tue,  9 Apr 2024 05:15:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jBCIeh2u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F58112B25
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 05:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712639723; x=1744175723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=taKEsIROgwak5vLWz6hFRs0YIQFrSjQIwFNpPg3Sf54=;
 b=jBCIeh2upbTUAQxFAzIzm8RNOVOT4tKGfMC9cdtDv1yJNXbaFpPKIRNz
 uRGqJS5cPg0Fu8B1IguZB6q1B2wJq2XCdX31TtM7YNnem7MDqH3+rbSCY
 /yluPhbaCnlVM6WhNgJwbhY/NZE6oGNlhtGm2sn6U1dJ8ZoewDvTCP9qV
 Uf2+sI9pZ/7JpMP3xGF7wXU0XMo8PnYV5jXvGalqwWutGasr4zwrIXQb5
 SaDyNKDJW66wTVpcfG5FQOvhHNMeJ2MokTvwEPEZPQwckBGWNY+eqphD+
 lyvYEsdIGe8+3iJQoUaPujJQMwuntCoyRrFd6XHVWyRlTOjwavfBWBz9C w==;
X-CSE-ConnectionGUID: Pi+qS5eKTFmzgS7giOtpVQ==
X-CSE-MsgGUID: 6FNkcQYSRiex1Eos4ZA3dQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="30432497"
X-IronPort-AV: E=Sophos;i="6.07,188,1708416000"; d="scan'208";a="30432497"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 22:15:15 -0700
X-CSE-ConnectionGUID: 4JAxCArXSEexxl2BB61jsg==
X-CSE-MsgGUID: LQiWflrVT120U4KYTEg8BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,188,1708416000"; d="scan'208";a="19989437"
Received: from brentlu-desktop.itwn.intel.com ([10.225.64.203])
 by orviesa010.jf.intel.com with ESMTP; 08 Apr 2024 22:15:13 -0700
From: Brent Lu <brent.lu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brent Lu <brent.lu@intel.com>
Subject: [PATCH] drm/i915/audio: 'scheduling while atomic' during system resume
Date: Tue,  9 Apr 2024 21:01:13 +0800
Message-Id: <20240409130113.3081587-1-brent.lu@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

The i915_audio_component_codec_wake_override() function will be called
during resume process so replace usleep_range() function calls with
udelay() to avoid the 'scheduling while atomic' error.

[22138.069052] BUG: scheduling while atomic: cras/2682/0x00000000
[22138.069359] Call Trace:
[22138.069369]  <TASK>
[22138.069380]  dump_stack_lvl+0x69/0x97
[22138.069407]  __schedule_bug+0x87/0x9a
[22138.069422]  __schedule+0x4f9/0xf88
[22138.069450]  schedule+0x4e/0xd0
[22138.069462]  schedule_hrtimeout_range_clock+0xab/0x11b
[22138.069488]  usleep_range_state+0x63/0x8c
[22138.069502]  i915_audio_component_codec_wake_override+0x8e/0xf2
[22138.069518]  snd_hdac_set_codec_wakeup+0x39/0x44 [snd_hda_core (HASH:381b 97)]
[22138.069541]  hda_dsp_ctrl_init_chip+0x45/0x414 [snd_sof_intel_hda_common (HASH:ff4d 98)]
[22138.069578]  hda_resume+0x4c/0xf2 [snd_sof_intel_hda_common (HASH:ff4d 98)]
[22138.069598]  hda_dsp_runtime_resume+0x32/0x9f [snd_sof_intel_hda_common (HASH:ff4d 98)]
[22138.069618]  sof_resume+0x67/0x234 [snd_sof (HASH:ad31 99)]
[22138.069655]  __rpm_callback+0x87/0x130
[22138.069680]  rpm_callback+0x22/0x77
[22138.069691]  rpm_resume+0x3bb/0x508

Signed-off-by: Brent Lu <brent.lu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 07e0c73204f3..9a85e6da63bf 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1120,12 +1120,12 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	 */
 	intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
 		     SKL_AUD_CODEC_WAKE_SIGNAL, 0);
-	usleep_range(1000, 1500);
+	udelay(1000);
 
 	if (enable) {
 		intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
 			     0, SKL_AUD_CODEC_WAKE_SIGNAL);
-		usleep_range(1000, 1500);
+		udelay(1000);
 	}
 
 	i915_audio_component_put_power(kdev, cookie);
-- 
2.34.1

