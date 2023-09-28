Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D39D7B213F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 17:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B9110E679;
	Thu, 28 Sep 2023 15:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD8A10E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 15:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695914901; x=1727450901;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=J04+qEbaMudDMSW7hg7qIPTMuSjGGr2jic/X9P4Tmj0=;
 b=lpLAwOHIXaL0EmiFsHX3XfhZvnEJolElnBoMpOU1a5AbqFX6vfknI9nB
 gwhbbeJpx+lHdF65UgtmDNyDMzrHAKFoaJonxIvvraYk1BUH33ktE2BZ9
 i+fYNpWE3yxUI15Dv16aIY+JN3j7pJkPU1jiUPWaYiTd/inb/raJFDZ74
 fOTglgfN/5QR8ikhZYGLErC50+3+QYK0wZMCkLPmoom3LVnMinay65GCu
 Qe63UsALLDaPcuXcaK1KQEfatpT4xxmjdyCfaVkM+rN76ZNHGr30BqEnn
 cLVvamHej/yxBfLUYiusYyI9kkVRSu6KoqQTfhxDh7WvAx01J7tSxWwqz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384898421"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384898421"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 08:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865305239"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="865305239"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 28 Sep 2023 08:24:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Sep 2023 18:24:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 18:24:50 +0300
Message-ID: <20230928152450.30109-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
References: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Drop irqsave/restore for
 flip_done_handler()
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

Since flip_done_handler() is always called from the irq handler
we can skip the irqsave/restore dance.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d3df615f0e48..95e1bf5d8707 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -340,17 +340,15 @@ static void flip_done_handler(struct drm_i915_private *i915,
 			      enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
-	struct drm_device *dev = &i915->drm;
-	unsigned long irqflags;
 
-	spin_lock_irqsave(&dev->event_lock, irqflags);
+	spin_lock(&i915->drm.event_lock);
 
 	if (crtc->flip_done_event) {
 		drm_crtc_send_vblank_event(&crtc->base, crtc->flip_done_event);
 		crtc->flip_done_event = NULL;
 	}
 
-	spin_unlock_irqrestore(&dev->event_lock, irqflags);
+	spin_unlock(&i915->drm.event_lock);
 }
 
 static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
-- 
2.41.0

