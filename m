Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB41A6450E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5316110E3CA;
	Mon, 17 Mar 2025 08:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lEj2sQBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE0610E029;
 Mon, 17 Mar 2025 08:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199573; x=1773735573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rFti+pA48oZvQ35W+IsGWxbS+l51jTGYPUckOj149sg=;
 b=lEj2sQBUNq2ZSkKSwM4VSh85AqvVBa2dvx75xR2DHMmkahS+7plVVX1f
 3coOo5+Y9aW7QJDgT4CMGhQtV1/ZfFQ+OrXz9YFOjhZ5gM9uuCGwBPyV6
 GEqPut8hyvf4G4DIFXVbmLJDMkzWyUWcemTBcMLOsRttk+R7CbS64n1EM
 gpOrcYOeTJQkYkqXb5BKo3xyKjfFBJZmiw5jAlPNaga4WkAVmMMNuMWtW
 KmyQKT92Owvy5ReAw1bFQb/bhuKnLtEIyRY0lWJHvMCtsSCdHmhIaj6xX
 385G29lfsQrRSUxiZqQhEhB/4NWoKmjrG3LjpLh6h2xlpiAmnCahtIff5 A==;
X-CSE-ConnectionGUID: pkHelkvgRUKrYhR6e7RrZA==
X-CSE-MsgGUID: +07ivztyQ9yMvmrOslx2Qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653528"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653528"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:33 -0700
X-CSE-ConnectionGUID: g9YB0pf/SDi1ZRRIi5sPPA==
X-CSE-MsgGUID: 9TEjoI67RZ6msBpcywP3tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677178"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 11/11] drm/i915/display: Rename vblank DC workaround
 functions and variables
Date: Mon, 17 Mar 2025 10:19:05 +0200
Message-ID: <20250317081905.3683654-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

We have extended using vblank DC workaround mechanism for
Wa_16025596647. Rename related functions and variables:

vblank_wa_num_pipes -> vblank_enable_count
vblank_dc_work -> vblank_notify_work
intel_display_vblank_dc_work -> intel_display_vblank_notify_work

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++--
 .../gpu/drm/i915/display/intel_display_irq.c  | 20 +++++++++----------
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index bdf30ab963967..537859630363b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -156,7 +156,7 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 
 	crtc->vblank_psr_notify = false;
 
-	flush_work(&display->irq.vblank_dc_work);
+	flush_work(&display->irq.vblank_notify_work);
 }
 
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 7ca1e7d710133..b24586c3753a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -466,9 +466,9 @@ struct intel_display {
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 
-		int vblank_wa_num_pipes;
+		int vblank_enable_count;
 
-		struct work_struct vblank_dc_work;
+		struct work_struct vblank_notify_work;
 
 		u32 de_irq_mask[I915_MAX_PIPES];
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 833f8227da803..22942edf5ff02 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1722,13 +1722,13 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	return true;
 }
 
-static void intel_display_vblank_dc_work(struct work_struct *work)
+static void intel_display_vblank_notify_work(struct work_struct *work)
 {
 	struct intel_display *display =
-		container_of(work, typeof(*display), irq.vblank_dc_work);
-	int vblank_wa_num_pipes = READ_ONCE(display->irq.vblank_wa_num_pipes);
+		container_of(work, typeof(*display), irq.vblank_notify_work);
+	int vblank_enable_count = READ_ONCE(display->irq.vblank_enable_count);
 
-	intel_psr_notify_vblank_enable_disable(display, vblank_wa_num_pipes);
+	intel_psr_notify_vblank_enable_disable(display, vblank_enable_count);
 }
 
 int bdw_enable_vblank(struct drm_crtc *_crtc)
@@ -1742,8 +1742,8 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (crtc->vblank_psr_notify && display->irq.vblank_wa_num_pipes++ == 0)
-		schedule_work(&display->irq.vblank_dc_work);
+	if (crtc->vblank_psr_notify && display->irq.vblank_enable_count++ == 0)
+		schedule_work(&display->irq.vblank_notify_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
@@ -1773,8 +1773,8 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (crtc->vblank_psr_notify && --display->irq.vblank_wa_num_pipes == 0)
-		schedule_work(&display->irq.vblank_dc_work);
+	if (crtc->vblank_psr_notify && --display->irq.vblank_enable_count == 0)
+		schedule_work(&display->irq.vblank_notify_work);
 }
 
 static u32 vlv_dpinvgtt_pipe_fault_mask(enum pipe pipe)
@@ -2345,6 +2345,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 
 	intel_hotplug_irq_init(i915);
 
-	INIT_WORK(&i915->display.irq.vblank_dc_work,
-		  intel_display_vblank_dc_work);
+	INIT_WORK(&i915->display.irq.vblank_notify_work,
+		  intel_display_vblank_notify_work);
 }
-- 
2.43.0

