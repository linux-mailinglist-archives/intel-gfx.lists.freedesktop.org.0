Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351178FE00
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDB310E7C3;
	Fri,  1 Sep 2023 13:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B50810E7C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573487; x=1725109487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p2M+pWLW3mTcnUYh+nwFb/AtE17sboHJiDstynoh7i0=;
 b=VQ05OP6SbigDxs2VwacsfxbpTjIgngYYfbBfAFBNiQXr48NmZdBSqycV
 JCQCQlKW5/tUHylxrJ32lTRouJXYOsBbjZwqdaxbz9mtkSwbzjFpu0X77
 Q4vfQzDzoeCK3BFUQnmsbr7xREwTQ8wpe7pZZ2FxCA6F4D+KV3LqJFxwN
 i/lmFO307Zqf4iXLbtS20az4r3+KATCpEs7G4wG9tT+M9j/DwSmaKxWJ5
 3IjVFRiExkFdU3f67h61RRU159iqxKxuBd3A9wPasQfyZ6F2de7qsFTja
 iUSgBrUGJdSoAwpraNnImSeuwk1oNw1UZsPbyxvV+NFeXjLdMpQsDxTPK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="366440469"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="366440469"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="1070742346"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="1070742346"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 01 Sep 2023 06:04:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:04:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:29 +0300
Message-ID: <20230901130440.2085-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Move psr unlock out from the
 pipe update critical section
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

