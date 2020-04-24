Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD6E1B6AC8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 03:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BA76EA67;
	Fri, 24 Apr 2020 01:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com
 [IPv6:2607:f8b0:4864:20::f41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D2A6E063;
 Fri, 24 Apr 2020 01:26:53 +0000 (UTC)
Received: by mail-qv1-xf41.google.com with SMTP id di6so3940890qvb.10;
 Thu, 23 Apr 2020 18:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qn3VaQJZ+KqjOis41AXRpAR0YiCD44gachr7QEG7uHo=;
 b=isI9kYpNgA7TzMqC2zPjYHqiSerDeltPmiKTc85rh028WUu66So9Uu6AUMM1+juwPK
 Zh8AHp0YNDRtWD9zU5fF6hwDiL0kZjSlGw7+i14gNz2aEJGVdDK4iIzZ0yYbc31hUKDL
 wkQ00NBiAAxv0rttXpUAnUpBWzpWiPy2zrqxIhl2BXoJtpBbIpBLr4qjylWBF1ceA27k
 ha29/mOaAmP+UI/290oQeN7UKhzo/5J8KXdUp91sLtsvr0aWbN6QOpefSEk859lp8Ozx
 yDpWMYQiIlH07GGBR+PB0SQbQfQOqH840KpxtWfH47mR6G+7MxcF5ed4qMep6lftOIMt
 BANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qn3VaQJZ+KqjOis41AXRpAR0YiCD44gachr7QEG7uHo=;
 b=dPpLI+IOUkGuN10sSsavP/KVFjAjWatiGLYIC95Q/80pgBpx2g6D9yQ6skFgQ2jV/N
 zn1W88bYunltzhTq/JwQsdd3VdNNzcOOgrCm/pcUg34YrpJpbIX+1UXyUwyoRTUxFuY6
 A4VxWmXfEwXNpKeffq3CDfBr/RROx7IyzFGeb4xqpydD/+feyD52zoWeCzq+6Z5HIbRt
 Jp6kPvXT+qSPyuVBTu7OiNN6A/JrO1mUQnXX/vOq9duao6zmmwKGioRrzWAEO4IZjDvH
 Piv1x1EZK4iJtnRcPgN79q/GowCxZwvmTm8+oW35uv4SOlqk+FHpwxBRBF/si64dnTmg
 7Ufg==
X-Gm-Message-State: AGi0PuYgO66N85a9CVBHLQD2giubN8ditqekYXSJwd/8l0g8RgyCXG4C
 Wp+27WLSqmIxt7vqboxqD3ogfWDY5Qg=
X-Google-Smtp-Source: APiQypJf+xwF8b96LcXm5ssTQTp0WlY1PzjIqm2jnlBYfRfsNU4wC+I80Z9JIht6GJXMEYOdV+o9oA==
X-Received: by 2002:a05:6214:287:: with SMTP id
 l7mr6992386qvv.38.1587691612497; 
 Thu, 23 Apr 2020 18:26:52 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56a0:11a1::2])
 by smtp.gmail.com with ESMTPSA id c41sm2997184qta.96.2020.04.23.18.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 18:26:52 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Thu, 23 Apr 2020 21:26:02 -0400
Message-Id: <20200424012605.2279679-2-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
References: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v8 1/4] lib/igt_kms: Add writeback support
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
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <contact@emersion.fr>, Simon Ser <simon.ser@intel.com>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Brian Starkey <rodrigosiqueiramelo@gmail.com>

Add support in igt_kms for writeback connectors, with the ability
to attach framebuffers.

v5: Rebase and add DRM_CLIENT_CAP_WRITEBACK_CONNECTORS before
drmModeGetResources()

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated to the latest igt style]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
[rebased and updated to the latest igt style]
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Simon Ser <simon.ser@intel.com>
---
 lib/igt_kms.c | 57 +++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_kms.h |  6 ++++++
 2 files changed, 63 insertions(+)

diff --git a/lib/igt_kms.c b/lib/igt_kms.c
index e9621e7e..67053d8b 100644
--- a/lib/igt_kms.c
+++ b/lib/igt_kms.c
@@ -421,6 +421,9 @@ const char * const igt_connector_prop_names[IGT_NUM_CONNECTOR_PROPS] = {
 	[IGT_CONNECTOR_LINK_STATUS] = "link-status",
 	[IGT_CONNECTOR_MAX_BPC] = "max bpc",
 	[IGT_CONNECTOR_HDR_OUTPUT_METADATA] = "HDR_OUTPUT_METADATA",
+	[IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS] = "WRITEBACK_PIXEL_FORMATS",
+	[IGT_CONNECTOR_WRITEBACK_FB_ID] = "WRITEBACK_FB_ID",
+	[IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR] = "WRITEBACK_OUT_FENCE_PTR",
 };
 
 /*
@@ -653,6 +656,7 @@ static const struct type_name connector_type_names[] = {
 	{ DRM_MODE_CONNECTOR_VIRTUAL, "Virtual" },
 	{ DRM_MODE_CONNECTOR_DSI, "DSI" },
 	{ DRM_MODE_CONNECTOR_DPI, "DPI" },
+	{ DRM_MODE_CONNECTOR_WRITEBACK, "Writeback" },
 	{}
 };
 
@@ -1802,6 +1806,14 @@ static void igt_output_reset(igt_output_t *output)
 	if (igt_output_has_prop(output, IGT_CONNECTOR_HDR_OUTPUT_METADATA))
 		igt_output_set_prop_value(output,
 					  IGT_CONNECTOR_HDR_OUTPUT_METADATA, 0);
+
+	if (igt_output_has_prop(output, IGT_CONNECTOR_WRITEBACK_FB_ID))
+		igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, 0);
+	if (igt_output_has_prop(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR)) {
+		igt_output_clear_prop_changed(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR);
+		output->writeback_out_fence_fd = -1;
+	}
+
 }
 
 /**
@@ -1885,6 +1897,8 @@ void igt_display_require(igt_display_t *display, int drm_fd)
 
 	display->drm_fd = drm_fd;
 
+	drmSetClientCap(drm_fd, DRM_CLIENT_CAP_WRITEBACK_CONNECTORS, 1);
+
 	resources = drmModeGetResources(display->drm_fd);
 	if (!resources)
 		goto out;
@@ -2193,6 +2207,11 @@ static void igt_output_fini(igt_output_t *output)
 	kmstest_free_connector_config(&output->config);
 	free(output->name);
 	output->name = NULL;
+
+	if (output->writeback_out_fence_fd != -1) {
+		close(output->writeback_out_fence_fd);
+		output->writeback_out_fence_fd = -1;
+	}
 }
 
 /**
@@ -3255,6 +3274,11 @@ static void igt_atomic_prepare_connector_commit(igt_output_t *output, drmModeAto
 					  output->props[i],
 					  output->values[i]));
 	}
+
+	if (output->writeback_out_fence_fd != -1) {
+		close(output->writeback_out_fence_fd);
+		output->writeback_out_fence_fd = -1;
+	}
 }
 
 /*
@@ -3377,6 +3401,16 @@ display_commit_changed(igt_display_t *display, enum igt_commit_style s)
 		else
 			/* no modeset in universal commit, no change to crtc. */
 			output->changed &= 1 << IGT_CONNECTOR_CRTC_ID;
+
+		if (s == COMMIT_ATOMIC) {
+			if (igt_output_is_prop_changed(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR))
+				igt_assert(output->writeback_out_fence_fd >= 0);
+
+			output->values[IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR] = 0;
+			output->values[IGT_CONNECTOR_WRITEBACK_FB_ID] = 0;
+			igt_output_clear_prop_changed(output, IGT_CONNECTOR_WRITEBACK_FB_ID);
+			igt_output_clear_prop_changed(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR);
+		}
 	}
 
 	if (display->first_commit) {
@@ -4049,6 +4083,29 @@ void igt_pipe_request_out_fence(igt_pipe_t *pipe)
 	igt_pipe_obj_set_prop_value(pipe, IGT_CRTC_OUT_FENCE_PTR, (ptrdiff_t)&pipe->out_fence_fd);
 }
 
+/**
+ * igt_output_set_writeback_fb:
+ * @output: Target output
+ * @fb: Target framebuffer
+ *
+ * This function sets the given @fb to be used as the target framebuffer for the
+ * writeback engine at the next atomic commit. It will also request a writeback
+ * out fence that will contain the fd number of the out fence created by KMS if
+ * the given @fb is valid.
+ */
+void igt_output_set_writeback_fb(igt_output_t *output, struct igt_fb *fb)
+{
+	igt_display_t *display = output->display;
+
+	LOG(display, "%s: output_set_writeback_fb(%d)\n", output->name, fb ? fb->fb_id : 0);
+
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, fb ? fb->fb_id : 0);
+	/* only request a writeback out fence if the framebuffer is valid */
+	if (fb)
+		igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR,
+					  (ptrdiff_t)&output->writeback_out_fence_fd);
+}
+
 /**
  * igt_wait_for_vblank_count:
  * @drm_fd: A drm file descriptor
diff --git a/lib/igt_kms.h b/lib/igt_kms.h
index adca59ac..aa082ef6 100644
--- a/lib/igt_kms.h
+++ b/lib/igt_kms.h
@@ -127,6 +127,9 @@ enum igt_atomic_connector_properties {
        IGT_CONNECTOR_LINK_STATUS,
        IGT_CONNECTOR_MAX_BPC,
        IGT_CONNECTOR_HDR_OUTPUT_METADATA,
+       IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS,
+       IGT_CONNECTOR_WRITEBACK_FB_ID,
+       IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR,
        IGT_NUM_CONNECTOR_PROPS
 };
 
@@ -366,6 +369,8 @@ typedef struct {
 	bool use_override_mode;
 	drmModeModeInfo override_mode;
 
+	int32_t writeback_out_fence_fd;
+
 	/* bitmask of changed properties */
 	uint64_t changed;
 
@@ -425,6 +430,7 @@ igt_output_t *igt_output_from_connector(igt_display_t *display,
     drmModeConnector *connector);
 void igt_output_refresh(igt_output_t *output);
 const drmModeModeInfo *igt_std_1024_mode_get(void);
+void igt_output_set_writeback_fb(igt_output_t *output, struct igt_fb *fb);
 
 igt_plane_t *igt_pipe_get_plane_type(igt_pipe_t *pipe, int plane_type);
 int igt_pipe_count_plane_type(igt_pipe_t *pipe, int plane_type);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
