Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D43614B02B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:15:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF416ECB7;
	Tue, 28 Jan 2020 07:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652FC6ECB7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:15:06 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id d16so14710121wre.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wfbiaSiMOHzpFyhDl+v1qJj/QXTn89NG3kDHVCdBkuc=;
 b=JTvCZRaZHQcev0ikTkbxG0CHShvB99q5Di8NnOoCSjpZ1Z6uSGm8K882VrfrZcPnk8
 9/EeGKEFnpYD/B5OudPLRcFTXEWDRm43kXKUWRL7aLMNEKv+7lDJ7F0DQKk49fkz/5/g
 XOpYpo2Q366R7zvVce5245dmle0ycflrCnMKMDT/bR3xx2QFGDk6b8AHP+fO7DZm5Ju4
 7CysDkrs40rcJAtsp4LZCEqrRLqMZXsjGpKw9vB6V9g/c6GqjkWrDT3FR0GEVZQLCVy2
 hh5PTiPI0xXlaFb6XYY/MXd17gIx9JhSRJqNTd357qg3d+jY/sWCCVbtnf8oCxR/jytz
 dL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wfbiaSiMOHzpFyhDl+v1qJj/QXTn89NG3kDHVCdBkuc=;
 b=kDVnVNbr+Z2V+V5E1tY7Gi2t4GZjtMY+vi+x+Oi2ajCvNNcPRSZ1TbSRmRBFFu8ylL
 5/f17wIZiJ+0mQNPKzun/PxCPsqt4mT7QrArX8Q7AroIte10WqjkcgWe9+aPfR9uQgan
 HIvNxTsAMnFKCOMTDVHb16Bw+ePXrQ5X6UHPcPVYZlIjje3ak5L/1TmUJPCYcApEpcRm
 qixTg8JnAgXyVu8yqYM8MAwJAXUw+DxEpq5F79jsZ7SmK0iVRvVWNjG7LWvtonw8Hbk/
 rcKb9RN7dHCMyhgfVAjBpOhi65EGOFr7cLW5fEBbvdNtNgi0xUN6yARUQSvODMGNCuaV
 Hd3A==
X-Gm-Message-State: APjAAAWAQsio4W2Eptc8xx7aJyo84Dty1DwLv1SVIumsEjXLhmBp9Klt
 XhrRYzFwbJDUVOLzGwN14Cw=
X-Google-Smtp-Source: APXvYqx1cMsIh5JToymNLeohaRZ0exiW8Bul1jIv30hWWFmvx8epTAPsohf2UrSQpUp0GBWNqYBlwQ==
X-Received: by 2002:a5d:6284:: with SMTP id k4mr27309695wru.398.1580195704894; 
 Mon, 27 Jan 2020 23:15:04 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:15:04 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:37 +0300
Message-Id: <20200128071437.9284-9-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/rps: move to new drm logging
 macros in gt/intel_rps.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert various instances of the printk based drm logging macros to the
new struct drm_device based logging macros in i915/gt/intel_rps.c.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 54e63435ccfe..9771d5f64b94 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -306,7 +306,7 @@ static bool gen5_rps_set(struct intel_rps *rps, u8 val)
 
 	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 	if (rgvswctl & MEMCTL_CMD_STS) {
-		DRM_DEBUG("gpu busy, RCS change rejected\n");
+		drm_dbg(&uncore->i915->drm, "gpu busy, RCS change rejected\n");
 		return false; /* still busy with another command */
 	}
 
@@ -450,7 +450,8 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 
 	if (wait_for_atomic((intel_uncore_read(uncore, MEMSWCTL) &
 			     MEMCTL_CMD_STS) == 0, 10))
-		DRM_ERROR("stuck trying to change perf mode\n");
+		drm_err(&uncore->i915->drm,
+			"stuck trying to change perf mode\n");
 	mdelay(1);
 
 	gen5_rps_set(rps, rps->cur_freq);
@@ -873,12 +874,13 @@ static void gen6_rps_init(struct intel_rps *rps)
 
 static bool rps_reset(struct intel_rps *rps)
 {
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 	/* force a reset */
 	rps->power.mode = -1;
 	rps->last_freq = -1;
 
 	if (rps_set(rps, rps->min_freq, true)) {
-		DRM_ERROR("Failed to reset RPS to initial values\n");
+		drm_err(&i915->drm, "Failed to reset RPS to initial values\n");
 		return false;
 	}
 
@@ -1441,6 +1443,7 @@ static void rps_work(struct work_struct *work)
 {
 	struct intel_rps *rps = container_of(work, typeof(*rps), work);
 	struct intel_gt *gt = rps_to_gt(rps);
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 	bool client_boost = false;
 	int new_freq, adj, min, max;
 	u32 pm_iir = 0;
@@ -1516,7 +1519,7 @@ static void rps_work(struct work_struct *work)
 	new_freq = clamp_t(int, new_freq, min, max);
 
 	if (intel_rps_set(rps, new_freq)) {
-		DRM_DEBUG_DRIVER("Failed to set new GPU frequency\n");
+		drm_dbg(&i915->drm, "Failed to set new GPU frequency\n");
 		rps->last_adj = 0;
 	}
 
@@ -1547,6 +1550,7 @@ void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 
 	if (pm_iir & rps->pm_events) {
 		spin_lock(&gt->irq_lock);
@@ -1563,7 +1567,8 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 		intel_engine_signal_breadcrumbs(gt->engine[VECS0]);
 
 	if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
-		DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
+		drm_dbg(&i915->drm,
+			"Command parser error, pm_iir 0x%08x\n", pm_iir);
 }
 
 void gen5_rps_irq_handler(struct intel_rps *rps)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
