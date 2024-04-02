Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773BF8955CD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34D810FD45;
	Tue,  2 Apr 2024 13:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YaLnKuyj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6994C10FD45
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065933; x=1743601933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dcAK+8Uw+oZn+guOh0X5eI1Hcnj4myAqLWnNqAFyAtY=;
 b=YaLnKuyjzuf0HO2b6hMafwx1qgZFTR90vjWeqKgaMgiZVz8v9C/U6GUx
 Riu0XU6vSzvEtlhd69tRmneE5dVotOqWPTKMEY7JswhkcEjsQvNS26uWO
 8p7sV1++GbbjdSWSAiimuV/+ldtdNXGdT0+l78SQcRkkLH+tO8BZCCCRK
 iMDtymIlctz4EYkBzn+1tNBghURuuTsmcs4NnK+Opg5pd8tfliMSgu8jN
 AFgoIVnXj4kfnV56K+oJvNl9p0DsqtFu9wwdeUAIBJ8IS99fVOgycI1ok
 QgcjbETlE/dUCxA23lnRdSwIJuhq7jeVmSNN4uQJr0MCWmDY0C+nYJg6E g==;
X-CSE-ConnectionGUID: 7R0cSrZdTEC6WXE9eJLT+Q==
X-CSE-MsgGUID: zeMkc+yBT+OVyDqc/B0CFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804674"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804674"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789403"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789403"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:52:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:52:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 7/7] drm/i915: Use debugfs_create_bool() for
 "i915_bigjoiner_force_enable"
Date: Tue,  2 Apr 2024 16:51:48 +0300
Message-ID: <20240402135148.23011-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There is no reason to make this debugfs file for a simple
boolean so complicated. Just use debugfs_create_bool().

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 44 +------------------
 1 file changed, 2 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b99c024b0934..3e364891dcd0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1402,20 +1402,6 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 	return ret;
 }
 
-static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = m->private;
-	struct drm_crtc *crtc;
-
-	crtc = connector->base.state->crtc;
-	if (connector->base.status != connector_status_connected || !crtc)
-		return -ENODEV;
-
-	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enable);
-
-	return 0;
-}
-
 static ssize_t i915_dsc_output_format_write(struct file *file,
 					    const char __user *ubuf,
 					    size_t len, loff_t *offp)
@@ -1437,30 +1423,6 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
 	return len;
 }
 
-static ssize_t i915_bigjoiner_enable_write(struct file *file,
-					   const char __user *ubuf,
-					   size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = m->private;
-	struct drm_crtc *crtc;
-	bool bigjoiner_en = 0;
-	int ret;
-
-	crtc = connector->base.state->crtc;
-	if (connector->base.status != connector_status_connected || !crtc)
-		return -ENODEV;
-
-	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
-	if (ret < 0)
-		return ret;
-
-	connector->force_bigjoiner_enable = bigjoiner_en;
-	*offp += len;
-
-	return len;
-}
-
 static int i915_dsc_output_format_open(struct inode *inode,
 				       struct file *file)
 {
@@ -1554,8 +1516,6 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
 	.write = i915_dsc_fractional_bpp_write
 };
 
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
-
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1640,8 +1600,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	if (DISPLAY_VER(i915) >= 11 &&
 	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
-		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
-				    connector, &i915_bigjoiner_enable_fops);
+		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
+				    &connector->force_bigjoiner_enable);
 	}
 
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
-- 
2.43.2

