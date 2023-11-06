Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6AA7E2ED7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7C310E42E;
	Mon,  6 Nov 2023 21:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E6F10E42E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305566; x=1730841566;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dsQUV4mqohM8O4zarMVtcKPHCbLLlp8mirGEpSWh8Wo=;
 b=UnXgihftbiXBZS3G9Ldtuwm5YVoU3rXvZ44Ej6Q5WkykbSnF7uzpbO9C
 q9DmU/I2fjyJxiC4E45Wf7RSaSGBmcAFS+tayIcw2rLS4qw1WQtHbmNC7
 53QjZWhXlThUTAYCct3Mtodv1I7+iFf3OTX83K20Yu4hvb8VDb4IyXr9h
 5hFgPesZwDXRnM1+awQP4zPjwWS76/azEIUDjeHBl8jNn4HfNcrtf+ter
 uCqx/1U/zNB2UjLNShQeEemO7S5/XhvrfYnHfqvidp1NaeFcmRo5GlkVZ
 wWqV3w5b2fSiph2WHIZbBVOnsrLhEa4mWIcC4xqtqlt5CdkbpuJ7v70Gv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911492"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911492"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964185"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964185"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:06 +0200
Message-ID: <20231106211915.13406-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Call intel_pre_plane_updates()
 also for pipes getting enabled
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

We used to call intel_pre_plane_updates() for any pipe going through
a modeset whether the pipe was previously enabled or not. This in
fact needed to apply all the necessary clock gating workarounds/etc.
Restore the correct behaviour.

Fixes: 39919997322f ("drm/i915: Disable all planes before modesetting any pipes")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f24c410cbd8f..dad8dac0ebbe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6856,10 +6856,11 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
+		intel_pre_plane_update(state, crtc);
+
 		if (!old_crtc_state->hw.active)
 			continue;
 
-		intel_pre_plane_update(state, crtc);
 		intel_crtc_disable_planes(state, crtc);
 	}
 
-- 
2.41.0

