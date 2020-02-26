Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A2416FBBB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCEB6E452;
	Wed, 26 Feb 2020 10:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F8E6E452
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:03 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id e8so2222193wrm.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G/1xcQAbVouO2cbF1fXrFbG1Gvl7A6HXFaeERV73QrM=;
 b=nyIRLHFYXeLPPHm9NTAyy3mxFcHMDk6sQM+X/ve9j/dMp4NzDrB68zKtFOiFn2/N/1
 5lXsUNDDGx9uyQeTAiFIyylQqHqbtfuMo5QLIbTaz0+tjx1cOTgtnnzYaVLJ64kCCYU0
 N2+tkeR6523si5008JWUJDR5lv+9r+M6rxq5fM90JjtqrUn/eEEmR+0eZ3eza6MCjfRW
 hbOb2bE+xgrtlEJruURiC6UzsSUcHxjW0U83i/wd5PlkYZI3Aw2X11MkeW5beInUqRbs
 u1WLh8b0gnRL8uPtG/U0jLAIFSego6zRF/sEW7T3yUz//4KOY/v6h+BxRZVoOPraqPsy
 3fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G/1xcQAbVouO2cbF1fXrFbG1Gvl7A6HXFaeERV73QrM=;
 b=audxXdG/hXlX0hvSVH8CQUbOnqCl2weXwYZUhIjjMrCJ0mEtu8Wx3Q9S83hUZT1S1c
 iK99Hazh/8xRGTGrkvRgQ1hPdeWZ3y+A7bQG0+ib9U070xqGTZ2DBx+/cgHgx2wAvnGr
 OG7U1GESoiiia1eYFj71zlu3GNdHY17Ly290SubZPDimcnE71v+CiONROIrM10357GwA
 krgkVoXlL5gKaCVYsvtFLEC6FGqpamjz78C8qmuECH0vvCPpA6zxgVbmKpmOyR5hxn83
 InpkgcgWvHPZRW2e033s2SuqSbqlSw3zNKcu0MuZ6FcEA7/8MDO2Z+RWTgbweUllbSfr
 6aow==
X-Gm-Message-State: APjAAAW6j3YAnSUIVzgw0r0mLgYdjxvcVysvYLBtRc0F50pex5XlsicE
 c6+My7chc3TZKI1c2ehDs+k=
X-Google-Smtp-Source: APXvYqycolyywyD8RXQFDLnff6lfht/Otef5mvWp89ovidK9tuklzaygzSw+M5Qezp0tTwRVe8hzHg==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr4645164wrt.102.1582711921779; 
 Wed, 26 Feb 2020 02:12:01 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:01 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:32 +0300
Message-Id: <20200226101138.15435-5-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/fifo_underrun: convert to
 drm_device based logging.
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
struct drm_device based logging macros in
i915/display/intel_fifo_underrun.c.
This was done using the following coccinelle script:
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
-DRM_DEBUG(
+drm_dbg(&T->drm,
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
-DRM_DEBUG(
+drm_dbg(&T->drm,
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

New checkpatch warnings were addressed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../drm/i915/display/intel_fifo_underrun.c    | 29 ++++++++++---------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 470b3b0b9bdb..813a4f7033e1 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -103,7 +103,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_posting_read(dev_priv, reg);
 
 	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
-	DRM_ERROR("pipe %c underrun\n", pipe_name(crtc->pipe));
+	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
 }
 
 static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
@@ -123,7 +123,8 @@ static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
 		intel_de_posting_read(dev_priv, reg);
 	} else {
 		if (old && intel_de_read(dev_priv, reg) & PIPE_FIFO_UNDERRUN_STATUS)
-			DRM_ERROR("pipe %c underrun\n", pipe_name(pipe));
+			drm_err(&dev_priv->drm, "pipe %c underrun\n",
+				pipe_name(pipe));
 	}
 }
 
@@ -155,7 +156,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
 
 	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
-	DRM_ERROR("fifo underrun on pipe %c\n", pipe_name(pipe));
+	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
 }
 
 static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
@@ -176,8 +177,9 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
 
 		if (old &&
 		    intel_de_read(dev_priv, GEN7_ERR_INT) & ERR_INT_FIFO_UNDERRUN(pipe)) {
-			DRM_ERROR("uncleared fifo underrun on pipe %c\n",
-				  pipe_name(pipe));
+			drm_err(&dev_priv->drm,
+				"uncleared fifo underrun on pipe %c\n",
+				pipe_name(pipe));
 		}
 	}
 }
@@ -223,8 +225,8 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_posting_read(dev_priv, SERR_INT);
 
 	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
-	DRM_ERROR("pch fifo underrun on pch transcoder %c\n",
-		  pipe_name(pch_transcoder));
+	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
+		pipe_name(pch_transcoder));
 }
 
 static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
@@ -246,8 +248,9 @@ static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
 
 		if (old && intel_de_read(dev_priv, SERR_INT) &
 		    SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) {
-			DRM_ERROR("uncleared pch fifo underrun on pch transcoder %c\n",
-				  pipe_name(pch_transcoder));
+			drm_err(&dev_priv->drm,
+				"uncleared pch fifo underrun on pch transcoder %c\n",
+				pipe_name(pch_transcoder));
 		}
 	}
 }
@@ -381,8 +384,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 
 	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
 		trace_intel_cpu_fifo_underrun(dev_priv, pipe);
-		DRM_ERROR("CPU pipe %c FIFO underrun\n",
-			  pipe_name(pipe));
+		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n",
+			pipe_name(pipe));
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(dev_priv);
@@ -403,8 +406,8 @@ void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 	if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
 						  false)) {
 		trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
-		DRM_ERROR("PCH transcoder %c FIFO underrun\n",
-			  pipe_name(pch_transcoder));
+		drm_err(&dev_priv->drm, "PCH transcoder %c FIFO underrun\n",
+			pipe_name(pch_transcoder));
 	}
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
