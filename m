Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C57078A54D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BA910E04F;
	Mon, 28 Aug 2023 05:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1728510E046
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693201311; x=1724737311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p2M+pWLW3mTcnUYh+nwFb/AtE17sboHJiDstynoh7i0=;
 b=HodjN6OgHsxR8cwMgDt1HinZJf8OYAgbQ2ZA2Hk/zNcEKNOfuYpvp0VS
 00kWP5bSle03/bbqtDDELpEn5r+frmIR4u0Kw4XBGR8Dx/PvFYatCzlZv
 lhXlIRF4Wnskwci6kW4upzE7F7gdMsdaTAYsy9w6S2vdWrOUUoiaS8kCm
 8EIDfQglFaeqvNHYpHvADpWP8rEZM4RQihdc8dqMb6O5sK/xAccGdq4An
 4jdbi+9aoDlQpfeJIp01E1cq07PHwh+C+XZhGiPOCaDlr02ApnwImk04t
 L0ZrsH+sVxuYac7X4EM2CvQUEkxSIIUnXPMSgqJTE4LMuTFAraSvZWAw0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="372420493"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="372420493"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="852707934"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="852707934"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 27 Aug 2023 22:41:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Aug 2023 08:41:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 08:41:35 +0300
Message-ID: <20230828054140.28054-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Move psr unlock out from the pipe
 update critical section
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

Do the PSR unlock after the vblank evade critcal section is
fully over, not before.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 182c6dd64f47..5caa928e5ce9 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -646,10 +646,8 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	ktime_t end_vbl_time = ktime_get();
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	intel_psr_unlock(new_crtc_state);
-
 	if (new_crtc_state->do_async_flip)
-		return;
+		goto out;
 
 	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
 
@@ -709,7 +707,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	local_irq_enable();
 
 	if (intel_vgpu_active(dev_priv))
-		return;
+		goto out;
 
 	if (crtc->debug.start_vbl_count &&
 	    crtc->debug.start_vbl_count != end_vbl_count) {
@@ -724,4 +722,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	}
 
 	dbg_vblank_evade(crtc, end_vbl_time);
+
+out:
+	intel_psr_unlock(new_crtc_state);
 }
-- 
2.41.0

