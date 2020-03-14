Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D44185634
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC916E086;
	Sat, 14 Mar 2020 18:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D536E086
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:34:05 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id x11so11479702wrv.5
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LPyXZkZziCVctDF8efr5mfaTp4YD9vLbxWpz2JUz9lE=;
 b=qiIoWuhq5lPe1HsdfM6DUrEbWvtwsat7fHA2/qjjl2uic6QaugRbcEOfebksRHUfvQ
 eBAMGlzvFu0/9qXAlSQnn79oAudOB5Gw+pkZ1xgO/M4dqns60vAtfIm1/pBdsymLiYNS
 ZYp8PjCi8XyvwZiZA/32I7+7dBl03Rb2/+BlJ45ZVTT8cqnkt0mfGTiPxVYaXsreDz4a
 dU02w+XvHHLd5otU+00ROzMBQbnVz5JPjyr40AFOJGWAv4AyJrc6VvL5q55X7/WsUfwZ
 ejMULBK//pDST1tLxXkXuqUiM6TWmeTZB/pBwN0nms994LWAPz+/30/KR7hGaOV64htf
 8m0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LPyXZkZziCVctDF8efr5mfaTp4YD9vLbxWpz2JUz9lE=;
 b=VvYow0y2eAzhemL3iZfcNZntsH7wxdtHAUiqU5msf8o+NJB1FtZYxuuUy4Pzc/rNMB
 xsSiTpTKzJn3BTd2RBe4wBS31SOMhGaf2rk2vhA/7vvSc7yCcVtmIc1RU22WAIoZ4CpS
 uq/P5/t1uED+9KAckbf2SlZoZ75AH0b+Fbx296HhgYi4Lc29a2GQsTh2i9ZH79HTvqgV
 9gXmCMzZT1ikH2zaDQ7Rvdt7MSKy24FtTAneM8/xtTE5gSGMBUemouQ2o8lrIv5cjAyW
 V45C3hCb7TyZ2NdnGtR7z3EjQGvF6EqF2uySeBisqVIHsfdtjAkaNu7SWVLrz2+gotHq
 PmSA==
X-Gm-Message-State: ANhLgQ2ssPwu8zUi/7tDeNQmJ1zMF7DfyMMcuF95i3hjte6F7Fdr+flA
 qrRNeileNUkQRyc2NHaa8PA=
X-Google-Smtp-Source: ADFU+vsep3Qk5EVME9nlqCf4EWuI81Wla+Y6gTVFPttdxfOLsOy9+ntlFD9n0Qe3EQ+FwZQuQksn6w==
X-Received: by 2002:adf:a295:: with SMTP id s21mr13318387wra.26.1584210844502; 
 Sat, 14 Mar 2020 11:34:04 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:34:04 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:42 +0300
Message-Id: <20200314183344.17603-6-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/ring_submission: use drm_device
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

Replace the use of printk based drm logging macros to the struct
drm_device based logging macros in i915/gt/intel_ring_submission.c.
This was done using the following semantic patch that transforms based
on the existence of a drm_i915_private device:
@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

New checkpatch warnings were fixed manually.

Note that this converts DRM_DEBUG_DRIVER to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 33 ++++++++++---------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 1424582e4a9b..1d8a23f85e7d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -577,8 +577,9 @@ static void flush_cs_tlb(struct intel_engine_cs *engine)
 				    RING_INSTPM(engine->mmio_base),
 				    INSTPM_SYNC_FLUSH, 0,
 				    1000))
-		DRM_ERROR("%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
-			  engine->name);
+		drm_err(&dev_priv->drm,
+			"%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
+			engine->name);
 }
 
 static void ring_setup_status_page(struct intel_engine_cs *engine)
@@ -601,8 +602,9 @@ static bool stop_ring(struct intel_engine_cs *engine)
 					    MODE_IDLE,
 					    MODE_IDLE,
 					    1000)) {
-			DRM_ERROR("%s : timed out trying to stop ring\n",
-				  engine->name);
+			drm_err(&dev_priv->drm,
+				"%s : timed out trying to stop ring\n",
+				engine->name);
 
 			/*
 			 * Sometimes we observe that the idle flag is not
@@ -661,22 +663,23 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	/* WaClearRingBufHeadRegAtInit:ctg,elk */
 	if (!stop_ring(engine)) {
 		/* G45 ring initialization often fails to reset head to zero */
-		DRM_DEBUG_DRIVER("%s head not reset to zero "
+		drm_dbg(&dev_priv->drm, "%s head not reset to zero "
+			"ctl %08x head %08x tail %08x start %08x\n",
+			engine->name,
+			ENGINE_READ(engine, RING_CTL),
+			ENGINE_READ(engine, RING_HEAD),
+			ENGINE_READ(engine, RING_TAIL),
+			ENGINE_READ(engine, RING_START));
+
+		if (!stop_ring(engine)) {
+			drm_err(&dev_priv->drm,
+				"failed to set %s head to zero "
 				"ctl %08x head %08x tail %08x start %08x\n",
 				engine->name,
 				ENGINE_READ(engine, RING_CTL),
 				ENGINE_READ(engine, RING_HEAD),
 				ENGINE_READ(engine, RING_TAIL),
 				ENGINE_READ(engine, RING_START));
-
-		if (!stop_ring(engine)) {
-			DRM_ERROR("failed to set %s head to zero "
-				  "ctl %08x head %08x tail %08x start %08x\n",
-				  engine->name,
-				  ENGINE_READ(engine, RING_CTL),
-				  ENGINE_READ(engine, RING_HEAD),
-				  ENGINE_READ(engine, RING_TAIL),
-				  ENGINE_READ(engine, RING_START));
 			ret = -EIO;
 			goto out;
 		}
@@ -719,7 +722,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 				    RING_CTL(engine->mmio_base),
 				    RING_VALID, RING_VALID,
 				    50)) {
-		DRM_ERROR("%s initialization failed "
+		drm_err(&dev_priv->drm, "%s initialization failed "
 			  "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
 			  engine->name,
 			  ENGINE_READ(engine, RING_CTL),
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
