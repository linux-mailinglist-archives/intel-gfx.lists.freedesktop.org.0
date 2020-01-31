Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597714EA20
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1154988E79;
	Fri, 31 Jan 2020 09:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4936FAD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:36 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z7so7706513wrl.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 01:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2XxzVizsS9Vea+dxKn7qEiWbOHuH6cAeqVKCJBuEdc4=;
 b=r3iK2IBs7KtYa+KKJD71v79DTFLCUklJAmn9P2usxjLLp28DnZWOXhJ5Cb5lZ3P2Q2
 cgA5OBPk+rUTN0zo29Hv9L++0N23Xyf+1kgCwJOf3cLOXzFGOuSkGyGAdqzoeOlpFkfa
 U9oIDq76Ft+lMVclfisv5DjY3cb0Cl72foiJbyehiJFeIl5jXpBiWf9R41282uGpNGDE
 XasBeYYrykj0Eeux3JPQY/jRyyG+zL1XXDfxbZXlbjz1yYC/Kz5I+0QggeeLGA4a8aqH
 LaMksrFVlc3P2M0c1m34ffP2KHv0qW7p0JIS10zON86temw2256Sdoz+kB2tSeXGlzyT
 cMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2XxzVizsS9Vea+dxKn7qEiWbOHuH6cAeqVKCJBuEdc4=;
 b=fDWx1G/E86GXccioaH+iCwbSzP9HUf/8xjdOmDCDj/Ctk0He6sYvYpDo3HxePjIZEU
 MNnW90psG1UUuVS1THC7YM4dNm8aj13h+XAb9gN9Ld1ZsmfSlDNKBr5y244PIGPBEB9h
 WsJNSNziW0vUdO/95YgvkU+m0CDvJ5uadI5dD5fvL0pPQhHp+hJTjifibi86BgUxgsX+
 r5qXH8dQrqVUugp0cJHbSGfoHfZDfiArTefvun7d4Sb2UQEgKcgkYYE6uQy168HMjPK5
 9STjR+ymrj8LRiWLI7DbCAJBjkJLZcz6W0qZNce5HVn5kDXenhYDhs0FQ5/Xkce6XPT0
 ukkg==
X-Gm-Message-State: APjAAAUhL42jWQJg0bpdac6h2IRyYkNr+Mj3JUmVWUEMlhQxcsLTMBSb
 RF60nGsikr2dgnV+jutHufc=
X-Google-Smtp-Source: APXvYqxx8ymmzizDC4c3wv9fdrzM0navGdACRCLUB/pytUKwe5vx+nA9XlGXc0Q1kNTNENQJABg+aA==
X-Received: by 2002:a5d:6445:: with SMTP id d5mr9578273wrw.244.1580463275355; 
 Fri, 31 Jan 2020 01:34:35 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm10365360wmc.38.2020.01.31.01.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 01:34:34 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 31 Jan 2020 12:34:15 +0300
Message-Id: <20200131093416.28431-5-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/perf: conversion to struct
 drm_device based logging macros.
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

Manual conversion of instances of printk based drm logging macros to the
struct drm_device based logging macros in i915/i915_perf.c.
Also involves extraction of the struct drm_i915_private device from
various intel types for use in the macros.

Instances of the DRM_DEBUG printk macro were not converted due to the
lack of an analogous struct drm_device based logging macro.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 143 ++++++++++++++++++++-----------
 1 file changed, 91 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b5249ee5bda6..53ba31278be7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -555,8 +555,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 				aging_tail = hw_tail;
 			stream->oa_buffer.aging_timestamp = now;
 		} else {
-			DRM_ERROR("Ignoring spurious out of range OA buffer tail pointer = %x\n",
-				  hw_tail);
+			drm_err(&stream->perf->i915->drm,
+				"Ignoring spurious out of range OA buffer tail pointer = %x\n",
+				hw_tail);
 		}
 	}
 
@@ -745,7 +746,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 */
 		if (drm_WARN_ON(&uncore->i915->drm,
 				(OA_BUFFER_SIZE - head) < report_size)) {
-			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
+			drm_err(&uncore->i915->drm,
+				"Spurious OA head ptr: non-integral report offset\n");
 			break;
 		}
 
@@ -926,8 +928,9 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 		if (ret)
 			return ret;
 
-		DRM_DEBUG("OA buffer overflow (exponent = %d): force restart\n",
-			  stream->period_exponent);
+		drm_dbg(&stream->perf->i915->drm,
+			"OA buffer overflow (exponent = %d): force restart\n",
+			stream->period_exponent);
 
 		stream->perf->ops.oa_disable(stream);
 		stream->perf->ops.oa_enable(stream);
@@ -1041,7 +1044,8 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 		 */
 		if (drm_WARN_ON(&uncore->i915->drm,
 				(OA_BUFFER_SIZE - head) < report_size)) {
-			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
+			drm_err(&uncore->i915->drm,
+				"Spurious OA head ptr: non-integral report offset\n");
 			break;
 		}
 
@@ -1152,8 +1156,9 @@ static int gen7_oa_read(struct i915_perf_stream *stream,
 		if (ret)
 			return ret;
 
-		DRM_DEBUG("OA buffer overflow (exponent = %d): force restart\n",
-			  stream->period_exponent);
+		drm_dbg(&stream->perf->i915->drm,
+			"OA buffer overflow (exponent = %d): force restart\n",
+			stream->period_exponent);
 
 		stream->perf->ops.oa_disable(stream);
 		stream->perf->ops.oa_enable(stream);
@@ -1339,9 +1344,10 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 
 	ce->tag = stream->specific_ctx_id;
 
-	DRM_DEBUG_DRIVER("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
-			 stream->specific_ctx_id,
-			 stream->specific_ctx_id_mask);
+	drm_dbg(&stream->perf->i915->drm,
+		"filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
+		stream->specific_ctx_id,
+		stream->specific_ctx_id_mask);
 
 	return 0;
 }
@@ -2657,7 +2663,8 @@ static void gen7_oa_disable(struct i915_perf_stream *stream)
 	if (intel_wait_for_register(uncore,
 				    GEN7_OACONTROL, GEN7_OACONTROL_ENABLE, 0,
 				    50))
-		DRM_ERROR("wait for OA to be disabled timed out\n");
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA to be disabled timed out\n");
 }
 
 static void gen8_oa_disable(struct i915_perf_stream *stream)
@@ -2668,7 +2675,8 @@ static void gen8_oa_disable(struct i915_perf_stream *stream)
 	if (intel_wait_for_register(uncore,
 				    GEN8_OACONTROL, GEN8_OA_COUNTER_ENABLE, 0,
 				    50))
-		DRM_ERROR("wait for OA to be disabled timed out\n");
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA to be disabled timed out\n");
 }
 
 static void gen12_oa_disable(struct i915_perf_stream *stream)
@@ -2680,7 +2688,8 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
 				    GEN12_OAG_OACONTROL,
 				    GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE, 0,
 				    50))
-		DRM_ERROR("wait for OA to be disabled timed out\n");
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA to be disabled timed out\n");
 }
 
 /**
@@ -3347,8 +3356,9 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
 		specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
 		if (!specific_ctx) {
-			DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
-				  ctx_handle);
+			drm_dbg(&specific_ctx->i915->drm,
+				"Failed to look up context with ID %u for opening perf stream\n",
+				ctx_handle);
 			ret = -ENOENT;
 			goto err;
 		}
@@ -3381,7 +3391,8 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
 	if (props->hold_preemption) {
 		if (!props->single_context) {
-			DRM_DEBUG("preemption disable with no context\n");
+			drm_dbg(&perf->i915->drm,
+				"preemption disable with no context\n");
 			ret = -EINVAL;
 			goto err;
 		}
@@ -3395,7 +3406,8 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	 */
 	if (privileged_op &&
 	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
-		DRM_DEBUG("Insufficient privileges to open i915 perf stream\n");
+		drm_dbg(&perf->i915->drm,
+			"Insufficient privileges to open i915 perf stream\n");
 		ret = -EACCES;
 		goto err_ctx;
 	}
@@ -3487,7 +3499,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	memset(props, 0, sizeof(struct perf_open_properties));
 
 	if (!n_props) {
-		DRM_DEBUG("No i915 perf properties given\n");
+		drm_dbg(&perf->i915->drm, "No i915 perf properties given\n");
 		return -EINVAL;
 	}
 
@@ -3496,7 +3508,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 						 I915_ENGINE_CLASS_RENDER,
 						 0);
 	if (!props->engine) {
-		DRM_DEBUG("No RENDER-capable engines\n");
+		drm_dbg(&perf->i915->drm, "No RENDER-capable engines\n");
 		return -EINVAL;
 	}
 
@@ -3507,7 +3519,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	 * from userspace.
 	 */
 	if (n_props >= DRM_I915_PERF_PROP_MAX) {
-		DRM_DEBUG("More i915 perf properties specified than exist\n");
+		drm_dbg(&perf->i915->drm,
+			"More i915 perf properties specified than exist\n");
 		return -EINVAL;
 	}
 
@@ -3525,7 +3538,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			return ret;
 
 		if (id == 0 || id >= DRM_I915_PERF_PROP_MAX) {
-			DRM_DEBUG("Unknown i915 perf property ID\n");
+			drm_dbg(&perf->i915->drm,
+				"Unknown i915 perf property ID\n");
 			return -EINVAL;
 		}
 
@@ -3540,28 +3554,32 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			break;
 		case DRM_I915_PERF_PROP_OA_METRICS_SET:
 			if (value == 0) {
-				DRM_DEBUG("Unknown OA metric set ID\n");
+				drm_dbg(&perf->i915->drm,
+					"Unknown OA metric set ID\n");
 				return -EINVAL;
 			}
 			props->metrics_set = value;
 			break;
 		case DRM_I915_PERF_PROP_OA_FORMAT:
 			if (value == 0 || value >= I915_OA_FORMAT_MAX) {
-				DRM_DEBUG("Out-of-range OA report format %llu\n",
-					  value);
+				drm_dbg(&perf->i915->drm,
+					"Out-of-range OA report format %llu\n",
+					value);
 				return -EINVAL;
 			}
 			if (!perf->oa_formats[value].size) {
-				DRM_DEBUG("Unsupported OA report format %llu\n",
-					  value);
+				drm_dbg(&perf->i915->drm,
+					"Unsupported OA report format %llu\n",
+					value);
 				return -EINVAL;
 			}
 			props->oa_format = value;
 			break;
 		case DRM_I915_PERF_PROP_OA_EXPONENT:
 			if (value > OA_EXPONENT_MAX) {
-				DRM_DEBUG("OA timer exponent too high (> %u)\n",
-					 OA_EXPONENT_MAX);
+				drm_dbg(&perf->i915->drm,
+					"OA timer exponent too high (> %u)\n",
+					OA_EXPONENT_MAX);
 				return -EINVAL;
 			}
 
@@ -3589,8 +3607,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
 
 			if (oa_freq_hz > i915_oa_max_sample_rate &&
 			    !capable(CAP_SYS_ADMIN)) {
-				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
-					  i915_oa_max_sample_rate);
+				drm_dbg(&perf->i915->drm,
+					"OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
+					i915_oa_max_sample_rate);
 				return -EACCES;
 			}
 
@@ -3645,7 +3664,8 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 	int ret;
 
 	if (!perf->i915) {
-		DRM_DEBUG("i915 perf interface not available for this system\n");
+		drm_dbg(&to_i915(dev)->drm,
+			"i915 perf interface not available for this system\n");
 		return -ENOTSUPP;
 	}
 
@@ -3653,7 +3673,8 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 			   I915_PERF_FLAG_FD_NONBLOCK |
 			   I915_PERF_FLAG_DISABLED;
 	if (param->flags & ~known_open_flags) {
-		DRM_DEBUG("Unknown drm_i915_perf_open_param flag\n");
+		drm_dbg(&perf->i915->drm,
+			"Unknown drm_i915_perf_open_param flag\n");
 		return -EINVAL;
 	}
 
@@ -3927,7 +3948,8 @@ static struct i915_oa_reg *alloc_oa_regs(struct i915_perf *perf,
 			goto addr_err;
 
 		if (!is_valid(perf, addr)) {
-			DRM_DEBUG("Invalid oa_reg address: %X\n", addr);
+			drm_dbg(&perf->i915->drm,
+				"Invalid oa_reg address: %X\n", addr);
 			err = -EINVAL;
 			goto addr_err;
 		}
@@ -4001,30 +4023,35 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 	int err, id;
 
 	if (!perf->i915) {
-		DRM_DEBUG("i915 perf interface not available for this system\n");
+		drm_dbg(&to_i915(dev)->drm,
+			"i915 perf interface not available for this system\n");
 		return -ENOTSUPP;
 	}
 
 	if (!perf->metrics_kobj) {
-		DRM_DEBUG("OA metrics weren't advertised via sysfs\n");
+		drm_dbg(&perf->i915->drm,
+			"OA metrics weren't advertised via sysfs\n");
 		return -EINVAL;
 	}
 
 	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
-		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Insufficient privileges to add i915 OA config\n");
 		return -EACCES;
 	}
 
 	if ((!args->mux_regs_ptr || !args->n_mux_regs) &&
 	    (!args->boolean_regs_ptr || !args->n_boolean_regs) &&
 	    (!args->flex_regs_ptr || !args->n_flex_regs)) {
-		DRM_DEBUG("No OA registers given\n");
+		drm_dbg(&perf->i915->drm,
+			"No OA registers given\n");
 		return -EINVAL;
 	}
 
 	oa_config = kzalloc(sizeof(*oa_config), GFP_KERNEL);
 	if (!oa_config) {
-		DRM_DEBUG("Failed to allocate memory for the OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Failed to allocate memory for the OA config\n");
 		return -ENOMEM;
 	}
 
@@ -4032,7 +4059,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 	kref_init(&oa_config->ref);
 
 	if (!uuid_is_valid(args->uuid)) {
-		DRM_DEBUG("Invalid uuid format for OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Invalid uuid format for OA config\n");
 		err = -EINVAL;
 		goto reg_err;
 	}
@@ -4049,7 +4077,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 			     args->n_mux_regs);
 
 	if (IS_ERR(regs)) {
-		DRM_DEBUG("Failed to create OA config for mux_regs\n");
+		drm_dbg(&perf->i915->drm,
+			"Failed to create OA config for mux_regs\n");
 		err = PTR_ERR(regs);
 		goto reg_err;
 	}
@@ -4062,7 +4091,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 			     args->n_boolean_regs);
 
 	if (IS_ERR(regs)) {
-		DRM_DEBUG("Failed to create OA config for b_counter_regs\n");
+		drm_dbg(&perf->i915->drm,
+			"Failed to create OA config for b_counter_regs\n");
 		err = PTR_ERR(regs);
 		goto reg_err;
 	}
@@ -4081,7 +4111,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 				     args->n_flex_regs);
 
 		if (IS_ERR(regs)) {
-			DRM_DEBUG("Failed to create OA config for flex_regs\n");
+			drm_dbg(&perf->i915->drm,
+				"Failed to create OA config for flex_regs\n");
 			err = PTR_ERR(regs);
 			goto reg_err;
 		}
@@ -4097,7 +4128,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 	 */
 	idr_for_each_entry(&perf->metrics_idr, tmp, id) {
 		if (!strcmp(tmp->uuid, oa_config->uuid)) {
-			DRM_DEBUG("OA config already exists with this uuid\n");
+			drm_dbg(&perf->i915->drm,
+				"OA config already exists with this uuid\n");
 			err = -EADDRINUSE;
 			goto sysfs_err;
 		}
@@ -4105,7 +4137,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 
 	err = create_dynamic_oa_sysfs_entry(perf, oa_config);
 	if (err) {
-		DRM_DEBUG("Failed to create sysfs entry for OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Failed to create sysfs entry for OA config\n");
 		goto sysfs_err;
 	}
 
@@ -4114,14 +4147,16 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 				  oa_config, 2,
 				  0, GFP_KERNEL);
 	if (oa_config->id < 0) {
-		DRM_DEBUG("Failed to create sysfs entry for OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Failed to create sysfs entry for OA config\n");
 		err = oa_config->id;
 		goto sysfs_err;
 	}
 
 	mutex_unlock(&perf->metrics_lock);
 
-	DRM_DEBUG("Added config %s id=%i\n", oa_config->uuid, oa_config->id);
+	drm_dbg(&perf->i915->drm,
+		"Added config %s id=%i\n", oa_config->uuid, oa_config->id);
 
 	return oa_config->id;
 
@@ -4129,7 +4164,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 	mutex_unlock(&perf->metrics_lock);
 reg_err:
 	i915_oa_config_put(oa_config);
-	DRM_DEBUG("Failed to add new OA config\n");
+	drm_dbg(&perf->i915->drm, "Failed to add new OA config\n");
 	return err;
 }
 
@@ -4153,12 +4188,14 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
 	int ret;
 
 	if (!perf->i915) {
-		DRM_DEBUG("i915 perf interface not available for this system\n");
+		drm_dbg(&to_i915(dev)->drm,
+			"i915 perf interface not available for this system\n");
 		return -ENOTSUPP;
 	}
 
 	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
-		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Insufficient privileges to remove i915 OA config\n");
 		return -EACCES;
 	}
 
@@ -4168,7 +4205,8 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
 
 	oa_config = idr_find(&perf->metrics_idr, *arg);
 	if (!oa_config) {
-		DRM_DEBUG("Failed to remove unknown OA config\n");
+		drm_dbg(&perf->i915->drm,
+			"Failed to remove unknown OA config\n");
 		ret = -ENOENT;
 		goto err_unlock;
 	}
@@ -4181,7 +4219,8 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
 
 	mutex_unlock(&perf->metrics_lock);
 
-	DRM_DEBUG("Removed config %s id=%i\n", oa_config->uuid, oa_config->id);
+	drm_dbg(&perf->i915->drm,
+		"Removed config %s id=%i\n", oa_config->uuid, oa_config->id);
 
 	i915_oa_config_put(oa_config);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
