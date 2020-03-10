Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E69417F254
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36E06E83F;
	Tue, 10 Mar 2020 08:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B7B6E54C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:17 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="234281725"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:43 +0200
Message-Id: <3e8e74494c8aa662ab3fb4de1dac63fedef35c47.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Wambui Karuga <wambui.karugax@gmail.com>

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
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
