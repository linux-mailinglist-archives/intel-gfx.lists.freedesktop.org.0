Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C27A185636
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726F16E08C;
	Sat, 14 Mar 2020 18:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBEA66E090
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:34:10 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id s14so16224211wrt.8
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZadWXj/98SBM0T2hZ3aY/FgOk8PgIrag3+VO3oxG3Ww=;
 b=lpUT+wQXk8XmD2tjK96dBQMT3OZkz42W54mCap/6J7pVH8Lp5t9NZ+yJN3gj+1h+vw
 LQsOU9DPNVZVNSh3Jl15TBuBHZAYetXSEpZR/EYD6ZDjy97jN4FlSxLCEkqkCTIzf7Wa
 pDJ8eghUvWAn2uXjLBCo9lp8Jv1adbpu9iQr+QFWFjhsw9P8ZL2C+wt6W1QhHPDA+Amq
 /0eajuUnB1kg2ZtlATbKCc9QqCPA2YCI7hu7r0cuchYgMT0D7HyMEY2ZoWmjutT1ls4G
 6BnF25ynjsmns+PGsSAqkSJNH9WS2tv4+/d0c9kbenYbTFpVoE+0xu09wF7uwQJ+MkVD
 nndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZadWXj/98SBM0T2hZ3aY/FgOk8PgIrag3+VO3oxG3Ww=;
 b=HkGbGSVley9czyVmz1wkzW0zP/tPWBhUx6tlXziDZSd41xTe3KeE6qZ3oftEoB4FjD
 n2VtTTOQWOPA4E5nJAiyIu6tBhab1b931TKrnT/lh1hZv1TI61wxAuNN3nivlZ/APwOK
 IaWj33y+ffw8N06cYc6Sv05bZJLo675BeY1sI/IrDBBc/SY/2t+UxuW/G6aOIxTPykPi
 UD2VgoQiMNZfVODOOalWhjwiW8S7PV+Xrwj2HOMMFE01WwzPkA7GdKXPfgIlW90mq65A
 7WjuOTOHlhM2cejv+U3IodaOB6CsXQLOP0NMQnj1Q9C4FM0Sk23s9ADKew3Vs543MfwL
 Oqzg==
X-Gm-Message-State: ANhLgQ1wP3RLjOV4Nt4pv2BvlmzQyzOvKCBKO03VLo+RvxQfafHB0pUz
 byg8zGGQOdlggpuVjcJTmUo=
X-Google-Smtp-Source: ADFU+vujzQJSWHPK0+aDyngZQDsLWxdvvhQGtYMGjkc1bWiPy/VrO/TLsehGKl7Qkym1OkSfMVoxTw==
X-Received: by 2002:adf:b245:: with SMTP id y5mr13032249wra.136.1584210849571; 
 Sat, 14 Mar 2020 11:34:09 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.34.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:34:09 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:44 +0300
Message-Id: <20200314183344.17603-8-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/workarounds: convert to drm_device
 based logging macros.
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

Replace the use of printk based drm logging macros with the struct
drm_device based logging macros.

Note that this converts DRM_DEBUG_DRIVER() to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5176ad1a3976..e96cc7fa0936 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -837,7 +837,7 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 			intel_uncore_read(&i915->uncore, GEN10_MIRROR_FUSE3) &
 			GEN10_L3BANK_MASK;
 
-		DRM_DEBUG_DRIVER("L3 fuse = %x\n", l3_fuse);
+		drm_dbg(&i915->drm, "L3 fuse = %x\n", l3_fuse);
 		l3_en = ~(l3_fuse << GEN10_L3BANK_PAIR_COUNT | l3_fuse);
 	} else {
 		l3_en = ~0;
@@ -846,7 +846,8 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	slice = fls(sseu->slice_mask) - 1;
 	subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
 	if (!subslice) {
-		DRM_WARN("No common index found between subslice mask %x and L3 bank mask %x!\n",
+		drm_warn(&i915->drm,
+			 "No common index found between subslice mask %x and L3 bank mask %x!\n",
 			 intel_sseu_get_subslices(sseu, slice), l3_en);
 		subslice = fls(l3_en);
 		drm_WARN_ON(&i915->drm, !subslice);
@@ -861,7 +862,7 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
 	}
 
-	DRM_DEBUG_DRIVER("MCR slice/subslice = %x\n", mcr);
+	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
 
 	wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
