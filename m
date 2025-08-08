Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCB0B1E57A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 11:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D9310E8ED;
	Fri,  8 Aug 2025 09:16:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eK/x8DKE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A7410E8EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Aug 2025 09:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754644562; x=1786180562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Uhgx3FVmLDH9aoRE1uuAKyK3hzuvuWk2olKkktRs9s=;
 b=eK/x8DKE5P8sQswaDtbn52XYKqPm7Vif6p4sGVR3sfeI0PnRf76l8pBl
 9DxuNwqHRAt5dpmcBMp1GVcAJs00rzQA3MDJPh6DNWHjTPojTh71t4zgs
 /mhfL2d7nbnjmqRt0iLhpAWdKvnXDS5g1Es4ckmUBG4sU+6f8knZOxjZ/
 a96LhKAAsFD71ws789tBnDVNkz+b/EiaPdOTIaR1qr0aHpK8gCH/0M7wg
 I/oIrXRLb3VMBXFWPrjEbMHYkAzPzneE4Cwcm4i0DLMbZQYdmG4xn0yFN
 wBy3Jrvy4U6G1eP9FsyXqGtb0n5vcg1Nm8QlYtpiOWeBJyLxUjdK0+Qgy Q==;
X-CSE-ConnectionGUID: FJxmrZRNSLG02JfDDvLQ6A==
X-CSE-MsgGUID: dydj6lDfSDWz3JlmiSpcsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56868682"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="56868682"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 02:16:01 -0700
X-CSE-ConnectionGUID: OMDgGCeORF671SKMqhUxhA==
X-CSE-MsgGUID: XAlEKy6yQIyGZyV9vXXO8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169747572"
Received: from unknown (HELO shawnle1-i9-build-machine.itwn.intel.com)
 ([10.225.64.200])
 by orviesa004.jf.intel.com with ESMTP; 08 Aug 2025 02:15:59 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Date: Fri,  8 Aug 2025 09:16:02 +0000
Message-Id: <20250808091602.288323-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250806042053.3570558-1-shawn.c.lee@intel.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
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

While performing HDMI compliance testing, test equipment may request
different bpc output for signal measurement. However, display driver
typically determines the maximum available bpc based on HW bandwidth.

Introduce a new debugfs that allows user to configure dedicated bpc
manually, and making HDMI compliance test much easier.

v2: Using exist variable max_requested_bpc.

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index ce3f9810c42d..5ef2bcffefc5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1208,6 +1208,47 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
 	.write = i915_dsc_fractional_bpp_write
 };
 
+static int i915_force_bpc_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct drm_connector *conn = &connector->base;
+
+	seq_printf(m, "%u\n", conn->state->max_requested_bpc);
+
+	return 0;
+}
+
+static ssize_t i915_force_bpc_write(struct file *file,
+				       const char __user *ubuf,
+				       size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	struct drm_connector *conn = &connector->base;
+	int new_bpc, ret;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &new_bpc);
+	if (ret < 0)
+		return ret;
+
+	switch (new_bpc) {
+	case 8:
+	case 10:
+	case 12:
+		break;
+	default:
+		drm_dbg_kms(display->drm, "Invalid bpc value (%u)\n", new_bpc);
+		return -EINVAL;
+	}
+
+	conn->state->max_requested_bpc = new_bpc;
+
+	*offp += len;
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_force_bpc);
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1359,6 +1400,11 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
 				    connector, &i915_lpsp_capability_fops);
+
+	if (connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
+		debugfs_create_file("i915_force_bpc", 0644, root,
+				    connector, &i915_force_bpc_fops);
 }
 
 /**
-- 
2.34.1

