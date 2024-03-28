Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FA7890190
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 15:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368A211224F;
	Thu, 28 Mar 2024 14:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CINaFONJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5BD112252
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 14:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711635641; x=1743171641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d5y96cdk6n9s5NQV6xpUbJrhjyNfo5eG28+Hf/NUq7E=;
 b=CINaFONJsirU1FoqnZ7+UQyHIEC1w4X8F+Zbz5E1dCAI3SKz5oeNxRdP
 WmV1yDLq9o6k4W1sjRMJn/sEvu8C5DDD6VytUrroCDzBYSEDbyzdRanE0
 QJxibsUV/uC+r6zqsMgHb01Fq2LoPLP4d9raSRor+dhoG4Uz2/LNKyZKU
 2hxclFC9oPLwDK7Lx+s6JyeQKHvta79At5M0zHtBodFip6Bh8A1VhAk/A
 UIUbI7FLWNkWtgY17fov+LvRi5AahWjNE5d7eZTxHKLclG0fxszS26YB1
 KPG5erYJbYF1FgqNodQ/ncBQFB6A6FoHnoyhVxBq9qCrBAI5/m1JFw98k A==;
X-CSE-ConnectionGUID: XaLwZBH5QiWd17eRBZ5u2w==
X-CSE-MsgGUID: P6j2r4DgQgKfq17NIujkmw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6623553"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6623553"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21314478"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:20:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	kunal1.joshi@intel.com
Subject: [PATCH] drm/i915/display_debugfs: Remove check for crtc in force
 bigjoiner
Date: Thu, 28 Mar 2024 19:44:21 +0530
Message-Id: <20240328141421.609982-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
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

At the moment, we allow force joiner debugs to work only for connector
with status connected and a crtc attached to it.
This creates a problem when we force bigjoiner and then pipe gets reset
before the force bigjoiner is disabled.
Relax the condition to check for crtc while exposing the debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b99c024b0934..94bc9e0d30fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1405,10 +1405,8 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
-	struct drm_crtc *crtc;
 
-	crtc = connector->base.state->crtc;
-	if (connector->base.status != connector_status_connected || !crtc)
+	if (connector->base.status != connector_status_connected)
 		return -ENODEV;
 
 	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enable);
@@ -1443,12 +1441,10 @@ static ssize_t i915_bigjoiner_enable_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = m->private;
-	struct drm_crtc *crtc;
 	bool bigjoiner_en = 0;
 	int ret;
 
-	crtc = connector->base.state->crtc;
-	if (connector->base.status != connector_status_connected || !crtc)
+	if (connector->base.status != connector_status_connected)
 		return -ENODEV;
 
 	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
-- 
2.40.1

