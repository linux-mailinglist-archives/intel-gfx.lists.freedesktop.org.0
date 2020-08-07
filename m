Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F47323EB14
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 12:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE986E9C0;
	Fri,  7 Aug 2020 10:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61716E9BD;
 Fri,  7 Aug 2020 10:01:57 +0000 (UTC)
IronPort-SDR: Qhofhgyf3G+ix+SXbXxV5vOLQPIbaJTgLKKFP1OxXVnCgDzonDTsFw7TnftMKBCirOal//4wxQ
 5EwYqc02434g==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="132604163"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="132604163"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 03:01:57 -0700
IronPort-SDR: hHhMksox2ps/x8ndnNg/Vhp7oCs+zoufopKI5RiCG7qR6nkpXlGzeM0UsU1BEfR2dJmqpBhCp2
 F4hYk064++ZQ==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="468178391"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 07 Aug 2020 03:01:53 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Aug 2020 15:05:48 +0530
Message-Id: <20200807093551.10673-5-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200807093551.10673-1-karthik.b.s@intel.com>
References: <20200807093551.10673-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 4/7] drm/i915: Do not call
 drm_crtc_arm_vblank_event in async flips
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
Cc: paulo.r.zanoni@intel.com, michel@daenzer.net,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com,
 harry.wentland@amd.com, nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the flip done event will be sent in the flip_done_handler,
no need to add the event to the list and delay it for later.

v2: -Moved the async check above vblank_get as it
     was causing issues for PSR.

v3: -No need to wait for vblank to pass, as this wait was causing a
     16ms delay once every few flips.

v4: -Rebased.

v5: -Rebased.

v6: -Rebased.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index c26ca029fc0a..2b2d96c59d7f 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -93,6 +93,9 @@ void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
 	DEFINE_WAIT(wait);
 	u32 psr_status;
 
+	if (new_crtc_state->uapi.async_flip)
+		goto irq_disable;
+
 	vblank_start = adjusted_mode->crtc_vblank_start;
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		vblank_start = DIV_ROUND_UP(vblank_start, 2);
@@ -206,7 +209,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	 * Would be slightly nice to just grab the vblank count and arm the
 	 * event outside of the critical section - the spinlock might spin for a
 	 * while ... */
-	if (new_crtc_state->uapi.event) {
+	if (new_crtc_state->uapi.event && !new_crtc_state->uapi.async_flip) {
 		drm_WARN_ON(&dev_priv->drm,
 			    drm_crtc_vblank_get(&crtc->base) != 0);
 
@@ -220,6 +223,9 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	local_irq_enable();
 
+	if (new_crtc_state->uapi.async_flip)
+		return;
+
 	if (intel_vgpu_active(dev_priv))
 		return;
 
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
