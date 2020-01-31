Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FF014EA1D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CEA6FAB7;
	Fri, 31 Jan 2020 09:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7301E6FAB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:30 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id a6so7719145wrx.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 01:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JbofSBJ3U9yyX3AEoY7F8yj2+goGqyDdcWpouaLqR88=;
 b=m+PMABe1dFM21BbGQCIJef1VwiwuiNtL3Hyqe9+xMTIsPfUGtZ67cosuGcMJwCnCXl
 iuMRCddQxP75kJH4fnfzD834ZGueJNjkCvmCz3MkSNIXAGLazUTTi1DZUCcRzA0q9iR3
 rxjHtlRYu1kaC5+5FRWVy0yiClpXXHCv7txvjCEDna5+Vsp9JqnezjSunaq/QJQTJsYU
 tlRP4IWjU4cxCd5VdFTGhJfLaF0xtGnMXXdfvjkfO0LAT8ujj9M4XNlBb4EcfYLwwfFZ
 9FoKwYWY0nDL/1V0NBaMphxpwPT8fs/3EwzD5vkm7+zi1n7qSDPj5itnHJ4Qne98kNgP
 wojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JbofSBJ3U9yyX3AEoY7F8yj2+goGqyDdcWpouaLqR88=;
 b=nMtEumIPdryi4MmuqPQNS/Z040ElbRZ+P5gC+ziNlj+zhizmfEYs8TokLeGM1ddYyD
 6IOr3idDFNWVneUqi3Sv32VQNeHtvbtlwQ0WP7gBLLxikZgVfHHy5Cjz5gxOSf+sNahP
 dpdk6sxtDqDYcnJL2OskQKa0HFQxSEejVna6X6DaCfiV9tWelF+etOiq7TV6vvWO3oRW
 Ph4iB5o7o9/rPOB9Q61YLEVnW+IHOCXk7JGuX/HQwfEwxwzt6iTSTB+IxNQpdtN2Tx4q
 6kis7v/ctcvUCUTl7pasTyz+A8333ksOctXGCsN+YG3aoBFWfhdWBXpkqJ4+rc4SzoS8
 4s+g==
X-Gm-Message-State: APjAAAXsh7bR3jpdMOs80mSajCOIxzmxhT4v7PNknWX9KzkpWyloLAkT
 mSBwLRCoBRbkFcgK0kPe1Bk=
X-Google-Smtp-Source: APXvYqxLnEN+1bC6XK4uk5xFhTUFQ8vNDdfjN1dNOwq8JMmvsFNxJ57atbgElnv+0F7lJPgbp3sFrA==
X-Received: by 2002:adf:ee0b:: with SMTP id y11mr735955wrn.62.1580463269051;
 Fri, 31 Jan 2020 01:34:29 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm10365360wmc.38.2020.01.31.01.34.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 01:34:28 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 31 Jan 2020 12:34:13 +0300
Message-Id: <20200131093416.28431-3-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/debugfs: conversion to drm_device
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

Manual conversion of printk based logging macros to the struct
drm_device based logging macros in i915/i915_debugfs.c.
Also involves extracting the struct drm_i915_private device from various
intel types to use in the macros.

This does not convert various instances of the DRM_DEBUG macro due to
the lack of an analogous struct drm_device based logging macro.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 350ebfe79de4..6eaa9c72126c 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -2845,7 +2845,8 @@ static ssize_t i915_ipc_status_write(struct file *file, const char __user *ubuf,
 
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
 		if (!dev_priv->ipc_enabled && enable)
-			DRM_INFO("Enabling IPC: WM will be proper only after next commit\n");
+			drm_info(&dev_priv->drm,
+				 "Enabling IPC: WM will be proper only after next commit\n");
 		dev_priv->wm.distrust_bios_wm = true;
 		dev_priv->ipc_enabled = enable;
 		intel_enable_ipc(dev_priv);
@@ -3054,7 +3055,8 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
 	if (IS_ERR(input_buffer))
 		return PTR_ERR(input_buffer);
 
-	DRM_DEBUG_DRIVER("Copied %d bytes from user\n", (unsigned int)len);
+	drm_dbg(&to_i915(dev)->drm,
+		"Copied %d bytes from user\n", (unsigned int)len);
 
 	drm_connector_list_iter_begin(dev, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
@@ -3073,7 +3075,8 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
 			status = kstrtoint(input_buffer, 10, &val);
 			if (status < 0)
 				break;
-			DRM_DEBUG_DRIVER("Got %d for test active\n", val);
+			drm_dbg(&to_i915(dev)->drm,
+				"Got %d for test active\n", val);
 			/* To prevent erroneous activation of the compliance
 			 * testing code, only accept an actual value of 1 here
 			 */
@@ -3642,7 +3645,8 @@ i915_cache_sharing_set(void *data, u64 val)
 	if (val > 3)
 		return -EINVAL;
 
-	DRM_DEBUG_DRIVER("Manually setting uncore sharing to %llu\n", val);
+	drm_dbg(&dev_priv->drm,
+		"Manually setting uncore sharing to %llu\n", val);
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
 		u32 snpcr;
 
@@ -4442,20 +4446,21 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 	struct drm_connector *connector =
 		((struct seq_file *)file->private_data)->private;
 	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	if (len == 0)
 		return 0;
 
-	DRM_DEBUG_DRIVER("Copied %zu bytes from user to force DSC\n",
-			 len);
+	drm_dbg(&i915->drm,
+		"Copied %zu bytes from user to force DSC\n", len);
 
 	ret = kstrtobool_from_user(ubuf, len, &dsc_enable);
 	if (ret < 0)
 		return ret;
 
-	DRM_DEBUG_DRIVER("Got %s for DSC Enable\n",
-			 (dsc_enable) ? "true" : "false");
+	drm_dbg(&i915->drm, "Got %s for DSC Enable\n",
+		(dsc_enable) ? "true" : "false");
 	intel_dp->force_dsc_en = dsc_enable;
 
 	*offp += len;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
