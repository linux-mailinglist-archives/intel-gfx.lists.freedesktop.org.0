Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD8D256F91
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 19:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A44B6E0AB;
	Sun, 30 Aug 2020 17:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B04F6E095;
 Sun, 30 Aug 2020 17:45:08 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id p4so4288575qkf.0;
 Sun, 30 Aug 2020 10:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yju5GRoEe8ZWAk/KDL7JArWZz8FoPxNyzJER8wQ5Su0=;
 b=qSgXLL0EjiMZFLUByt4ocP1/KgH+oFSFqSTD64wR5VwTiiUmSbl7iWv6O6YitRbZFC
 ZYD3w6QjXIuzcIzH7dO4H9iaZLwfc3qynsNL2+dRlOijNU3R7QFxxb5pgd1i8PK493Rj
 XznOeJsQ+yueWyDoVAxH8SaroN6C5VCS+Ao9ZvC2zkJOEnx+UjfluOtrmhhwmRFWbxZY
 P8Ik3q0aOLifyvx0ZgY7afhnggrwaDNSwdEKOTkIt8qb4846+HNIozW7cNs6IRUM+e8e
 XclFPW6cNoBHvwtCDA8yQfiAUOzLc7NPhxOU7VakWmQ7zJU/aTeFskl5TN5T8j/q0AQL
 kGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yju5GRoEe8ZWAk/KDL7JArWZz8FoPxNyzJER8wQ5Su0=;
 b=BnNNeDWQcjWoLXtEWSFGojqL6hTMWch/9BaUXwQyAZPatZdfQhYPRpVasK2ObXwLAq
 0IOOPG5EFl6IxNKceW7x7YrqsPXW7S2i2ps78Fbqi4zKXnIsjjOOPHLWo3MnBQLmxFJs
 p2RWUN/yICHgAWXvgBxodnOA6CQoFGV11JVu4/mDg565NCTzBMsVGbWih/tVmeqyq1t1
 ZatFhpOnVPpoTyYuF2kIARqKKi6SQOARIpmWx2fgjrZWHoQgWEOpKgIRU0XcOcBLjWa8
 Q0zbAiH5XfCT8ynt3CCjkD9K8lGuuNMwvaWKdTAur48KmL/HylYWANnyzYXxdcg5HQ+U
 BDLg==
X-Gm-Message-State: AOAM532oEQRl3p7oFQbcYD/H/pMje6agN+vd+7KCMWEMtgxEyA1Osehi
 r7i3/xd2Ri5DpjVJdGe6yOg27aSNw+r8xw==
X-Google-Smtp-Source: ABdhPJxf94wdigToLr20gFuCiGnfU1sYX2NyEqu58BdcksxMb3OsGDfjhVCJjYDERMmEdgtCpc/sTw==
X-Received: by 2002:a05:620a:13ee:: with SMTP id
 h14mr7682049qkl.44.1598809506818; 
 Sun, 30 Aug 2020 10:45:06 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56e0:6d60::2db6])
 by smtp.gmail.com with ESMTPSA id l1sm6797662qtp.96.2020.08.30.10.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Aug 2020 10:45:06 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Sun, 30 Aug 2020 13:44:07 -0400
Message-Id: <20200830174410.256533-2-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
References: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v9 1/4] lib/igt_kms: Add writeback support
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
Cc: Simon Ser <simon.ser@intel.com>,
 Brian Starkey <rodrigosiqueiramelo@gmail.com>, Simon Ser <contact@emersion.fr>,
 melissa.srw@gmail.com, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Brian Starkey <rodrigosiqueiramelo@gmail.com>

Add support in igt_kms for writeback connectors, with the ability
to attach framebuffers.

v8: Remove unnecessary fence cleanup on prepare commit.

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
 lib/igt_kms.c | 52 +++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_kms.h |  6 ++++++
 2 files changed, 58 insertions(+)

diff --git a/lib/igt_kms.c b/lib/igt_kms.c
index f57972f1..7cf2008e 100644
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
 
@@ -1813,6 +1817,14 @@ static void igt_output_reset(igt_output_t *output)
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
@@ -1930,6 +1942,8 @@ void igt_display_require(igt_display_t *display, int drm_fd)
 	display->drm_fd = drm_fd;
 	is_i915_dev = is_i915_device(drm_fd);
 
+	drmSetClientCap(drm_fd, DRM_CLIENT_CAP_WRITEBACK_CONNECTORS, 1);
+
 	resources = drmModeGetResources(display->drm_fd);
 	if (!resources)
 		goto out;
@@ -2268,6 +2282,11 @@ static void igt_output_fini(igt_output_t *output)
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
@@ -3458,6 +3477,16 @@ display_commit_changed(igt_display_t *display, enum igt_commit_style s)
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
@@ -4130,6 +4159,29 @@ void igt_pipe_request_out_fence(igt_pipe_t *pipe)
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
index 26dc9f5f..45da6bf6 100644
--- a/lib/igt_kms.h
+++ b/lib/igt_kms.h
@@ -128,6 +128,9 @@ enum igt_atomic_connector_properties {
        IGT_CONNECTOR_LINK_STATUS,
        IGT_CONNECTOR_MAX_BPC,
        IGT_CONNECTOR_HDR_OUTPUT_METADATA,
+       IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS,
+       IGT_CONNECTOR_WRITEBACK_FB_ID,
+       IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR,
        IGT_NUM_CONNECTOR_PROPS
 };
 
@@ -379,6 +382,8 @@ typedef struct {
 	bool use_override_mode;
 	drmModeModeInfo override_mode;
 
+	int32_t writeback_out_fence_fd;
+
 	/* bitmask of changed properties */
 	uint64_t changed;
 
@@ -438,6 +443,7 @@ igt_output_t *igt_output_from_connector(igt_display_t *display,
     drmModeConnector *connector);
 void igt_output_refresh(igt_output_t *output);
 const drmModeModeInfo *igt_std_1024_mode_get(void);
+void igt_output_set_writeback_fb(igt_output_t *output, struct igt_fb *fb);
 
 igt_plane_t *igt_pipe_get_plane_type(igt_pipe_t *pipe, int plane_type);
 int igt_pipe_count_plane_type(igt_pipe_t *pipe, int plane_type);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
