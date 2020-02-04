Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B9915179D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596696EE0A;
	Tue,  4 Feb 2020 09:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0D96EE0A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:20 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id f129so2582248wmf.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/DJOccIGWwnkU4m3yMYNV6X7PZ+r6TTej7tNGOi6CaY=;
 b=oD01+V7IyJj6oRSLouL2/fNoCbcnPM3y3E4HpKg+8kwDAu8hi1fZaQWPX2avWS0eCM
 KIWV5QOxlh+8EcRDc4KtaNcdmQpzLDb7z7b+FP529XGaSAOCokPCXPRw3yVMDByObSqi
 rTt9u2MamGoWLpJXbYplWN8cYw+pnRpiRhLV1YrGh/OGaR0PVIVCAuJJu+Bi91BpIY0q
 Ldq1ScDw/F8H/1lRjmY6sEA7YBv+tjD581UiWRbmhZ8ms3GSKO2WHg8JwEIxsGmvgIAN
 rP1MPkn/Wlh0Ge0XQgY8x0cLp8wNYGMhCmRfuXWTqEUPDBkL+owLM6yk5Qeag3h18ilb
 bAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/DJOccIGWwnkU4m3yMYNV6X7PZ+r6TTej7tNGOi6CaY=;
 b=cqZn7KA27309TgG62S4ehfLxOTRrEgRKDJnNWAN2QQ9s0439RJT9heo7G8eCQ7BzHZ
 NyHKSkBorw536117YQYwUwafwQIlY/Lki970lsXgLVBvKR9kaiX64ADXjN4CTHZ90B+G
 YWXXSqn07vKjRl4e+s/wsTGStkzzAvOHDhIF9PDwY4rzx7XNsY6Zh5+AGlnJnrjBWP2a
 fVBaKLknjPjJ11MxPhQS0CTBP4POKqEeOPA/yk40Y1AEP+MFYzQ822jMTHr8yIiSdivF
 iNCC2c7RF1N3FCrichHzBMETK5L7yotOxTLeuhv6f5/1LzsYHlkbwWCdaGHWGyioc7ja
 y+8Q==
X-Gm-Message-State: APjAAAX0VmxL0ww8aFVjtFUapZlfzwYVO8Avi3TNp/IhUem8oxpAFNDC
 kvh0SNQ6jZmlaXtoaMEQfYY=
X-Google-Smtp-Source: APXvYqwHtziUQKPp5Xg+i/836GvSmT6Qoe+akjXRaD2FA6U3F3f7bmGHvesSRb3tXhfURWPeoLv5Mw==
X-Received: by 2002:a7b:c652:: with SMTP id q18mr4535526wmk.123.1580807959444; 
 Tue, 04 Feb 2020 01:19:19 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:19 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:46 +0300
Message-Id: <20200204091855.24259-4-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915/atomic: conversion to drm_device
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

Conversion of the printk based drm logging macros to the struct
drm_device based logging macros in i915/display/intel_atomic.c
This change was achieved using the following coccinelle script that
matches based on the existence of a drm_i915_private device pointer:
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

Checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 23 ++++++++++++---------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 9c737aa4cf72..b97905f05cb7 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -66,8 +66,9 @@ int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 	else if (property == dev_priv->broadcast_rgb_property)
 		*val = intel_conn_state->broadcast_rgb;
 	else {
-		DRM_DEBUG_ATOMIC("Unknown property [PROP:%d:%s]\n",
-				 property->base.id, property->name);
+		drm_dbg_atomic(&dev_priv->drm,
+			       "Unknown property [PROP:%d:%s]\n",
+			       property->base.id, property->name);
 		return -EINVAL;
 	}
 
@@ -103,8 +104,8 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 		return 0;
 	}
 
-	DRM_DEBUG_ATOMIC("Unknown property [PROP:%d:%s]\n",
-			 property->base.id, property->name);
+	drm_dbg_atomic(&dev_priv->drm, "Unknown property [PROP:%d:%s]\n",
+		       property->base.id, property->name);
 	return -EINVAL;
 }
 
@@ -361,8 +362,8 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 		mode = SKL_PS_SCALER_MODE_DYN;
 	}
 
-	DRM_DEBUG_KMS("Attached scaler id %u.%u to %s:%d\n",
-		      intel_crtc->pipe, *scaler_id, name, idx);
+	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
+		    intel_crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
 }
 
@@ -413,8 +414,9 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 
 	/* fail if required scalers > available scalers */
 	if (num_scalers_need > intel_crtc->num_scalers){
-		DRM_DEBUG_KMS("Too many scaling requests %d > %d\n",
-			num_scalers_need, intel_crtc->num_scalers);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Too many scaling requests %d > %d\n",
+			    num_scalers_need, intel_crtc->num_scalers);
 		return -EINVAL;
 	}
 
@@ -459,8 +461,9 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 				plane = drm_plane_from_index(&dev_priv->drm, i);
 				state = drm_atomic_get_plane_state(drm_state, plane);
 				if (IS_ERR(state)) {
-					DRM_DEBUG_KMS("Failed to add [PLANE:%d] to drm_state\n",
-						plane->base.id);
+					drm_dbg_kms(&dev_priv->drm,
+						    "Failed to add [PLANE:%d] to drm_state\n",
+						    plane->base.id);
 					return PTR_ERR(state);
 				}
 			}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
