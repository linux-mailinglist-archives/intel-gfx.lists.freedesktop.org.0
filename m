Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84A0891041
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE5210EF4C;
	Fri, 29 Mar 2024 01:14:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PejFh4ZK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A8D410EF4C
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674843; x=1743210843;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LCAQ96mwMeya64+/G9v6zuCwIqDDIiFy54148FXnU7I=;
 b=PejFh4ZKdf+iQ23g4UfbCU3gLztwNxD3ZimIC+JJ7/0D+oRt3d8bmbi/
 7Cj+iNTsQyIXTilQnQRB5TqF5RfaQslm3ytaQ4jIuReUnHJnY6Du802z3
 axqFaqqQBmrZQXwp/kn+JFZkM63vi5WDIrR7FZqLCBashoSArecJ6hG9D
 sTTzqlIdIzDbV79wqa7ryhUg6OiQD2u2LgihAMTNBkCA63mZg2zTqT+Qp
 nbzSWPvRXttweK03QDSl/yct3jj4nEnLjzpEKTgXxPxrI2AKAvEZaRBfj
 ovRDfmRFi9oz7VQLTv9bg5RmBNuGOu2WIU3RL7wMa4f0Y8MJkpU1EtHRp Q==;
X-CSE-ConnectionGUID: 8PapukujQ/qBic9BQfsjfw==
X-CSE-MsgGUID: vxa3NE76TWagTfPl4Cytew==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756358"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756358"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786790"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786790"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:14:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 22/22] drm/i915: Use debugfs_create_bool() for
 "i915_bigjoiner_force_enable"
Date: Fri, 29 Mar 2024 03:12:54 +0200
Message-ID: <20240329011254.24160-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

