Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F897C0383
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F0010E0D3;
	Tue, 10 Oct 2023 18:34:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A4A10E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696962873; x=1728498873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DMJ72vYBiZ7qf7ADnRuKeL4un3i0GuJ9nZKQgKUuhic=;
 b=OY5FINnakGP3IHvbrBUYmc3sh00iAyDrttxoEyza3F0rtY3vF0TfNzGy
 FH8hBOMl9IvQvkBdIkaN57x/Nle6jhzMX94FvSoFE+A9IqPyWbQjXSb/t
 R8WS4tpMiQkaTqL1SMvF8voQcE4WIivfraMzsy5UU4eDFoh+M2cDHWb78
 1LZNJQ6113c/YEc6uAGe9J7+F7ng7dY1x4/IFaUnuI8kTGyCSx2IJfuc2
 e5JtKrBtVpt8rvw2u5W4QB/w01MYpDCtgATHiKTm+K5hqDfUMau0afEan
 W8warcJZEdMz+L9YdQcloxeK5r+AWLspg4L1Xu+kq2rJqqNXgGgDzgPPw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384335714"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="384335714"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819359559"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="819359559"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 10 Oct 2023 11:32:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 00:01:00 +0530
Message-Id: <20231010183101.704439-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010183101.704439-1-suraj.kandpal@intel.com>
References: <20231010183101.704439-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Use
 intel_crtc_destroy_state instead kfree
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

intel_encoder_current_mode() seems to leak some resource because
it uses kfree instead of intel_crtc_destroy_state let us fix that.

Fixes: de330815677d ("drm/i915: Reuse normal state readout for LVDS/DVO fixed mode")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e309fda108ef..e7129a5630db 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3999,7 +3999,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
 	}
 
 	if (!intel_crtc_get_pipe_config(crtc_state)) {
-		kfree(crtc_state);
+		intel_crtc_destroy_state(&crtc->base, &crtc_state->uapi);
 		kfree(mode);
 		return NULL;
 	}
@@ -4008,7 +4008,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
 
 	intel_mode_from_crtc_timings(mode, &crtc_state->hw.adjusted_mode);
 
-	kfree(crtc_state);
+	intel_crtc_destroy_state(&crtc->base, &crtc_state->uapi);
 
 	return mode;
 }
-- 
2.25.1

