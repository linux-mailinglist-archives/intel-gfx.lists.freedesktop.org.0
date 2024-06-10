Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C1D90271C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7726410E4EF;
	Mon, 10 Jun 2024 16:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OZGkNdLi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAB710E34E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038188; x=1749574188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d73GnFPsY7wBHJLEiF+qZRHMZowgASQoA+QxF52in3o=;
 b=OZGkNdLivyyV/XJZ8VL7X4DredHMh6pdYe+vgi2OK2F7pHckGRpXbt2f
 mxU2+qagU4Y1oJJgqvSq/Ow4w+y/7VQA9jWxtR7+6GfE0T/6GMelIRcyj
 vYm9pQhWDeXrvjE8MgN3g3L66Gyg8hfSXq8W9j90932mmtFYEzdwe/Jms
 LIa54IM9M6OFgZUQ8AI8cSI+E7qi6BU25xuGXDbVqzBl5vEf4B4GVVfb9
 5wJf4A8W7rC+aFp5TqlVrVARbyYu3yqWhKNynXeZ6suIMLJsM/29QdKmM
 vDO9XE3zT1hf7U5URuIqXFu1yO/VBcm7nEF6Zt4WxTbnKn0nYzNx0Hx7G A==;
X-CSE-ConnectionGUID: zSR0rP0RSWOe2Aupn8iKWw==
X-CSE-MsgGUID: 7rEeUrylTJSR3epD9Ub0+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494019"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494019"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:48 -0700
X-CSE-ConnectionGUID: Zgo3EZ5qQEi1lgVY66EgBw==
X-CSE-MsgGUID: zwdTyeqNQtaTy8/Mnf8x3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060610"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 18/21] drm/i915/dp: Add debugfs entries to get the max link
 rate/lane count
Date: Mon, 10 Jun 2024 19:49:30 +0300
Message-ID: <20240610164933.2947366-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Add connector debugfs entries to get the maximum link rate and lane
count.

v2: Lock connection_mutex only for the required intel_dp state. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 8a2ebee7a842f..184206067fa61 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1770,6 +1770,44 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 }
 DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
 
+static int i915_dp_max_link_rate_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	*val = intel_dp->link.max_rate;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
+
+static int i915_dp_max_lane_count_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	*val = intel_dp->link.max_lane_count;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1783,4 +1821,10 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
 			    connector, &i915_dp_force_lane_count_fops);
+
+	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
+			    connector, &i915_dp_max_link_rate_fops);
+
+	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
+			    connector, &i915_dp_max_lane_count_fops);
 }
-- 
2.43.3

