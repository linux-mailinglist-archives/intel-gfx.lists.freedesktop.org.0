Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E57D597BE25
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE6C10E5CA;
	Wed, 18 Sep 2024 14:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZoyFcAi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492D010E5C1;
 Wed, 18 Sep 2024 14:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670541; x=1758206541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7n+mDQ63jiVubIizZqd6TJrHoG5rzIUcUs8TiUjO67c=;
 b=VZoyFcAiO6oc28ce0ua9lq87mxGcngthRvh7cuKN5BSu2Oqu+xaVIQSC
 FBzVGOHKqZI/fi8o3X9/NZUV1kVeixMMfdmNCh0oc6tp43eZq2qfx/Bao
 Plk7eaCQ43n4ivYGCKCWVpOgZSsXnNpfRsdIHtUA0/2PEYKlSG+B+tpEY
 clfP52FOYtESGkUvxd20f9q0KqkfogYGU9s3ph4/7SFUug4Y8mbLx8f4C
 tasy35sVQTwv082d6yd9+Mp2iqsA3sx1EdGE3jTjWwWtaMHapo/2AhWyM
 EAzQmdKBv6AthWrjkOEKAqakgYQsn+d3pNm/o1GfFOIPQ/ZJ/BtPhsPQN w==;
X-CSE-ConnectionGUID: YXVSN+FYR9GF9FcJDEaMCw==
X-CSE-MsgGUID: CWL9EZgmSeSOm2JxqHILoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481778"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481778"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:21 -0700
X-CSE-ConnectionGUID: s/2A9JA9Q8OAfSsMqdeBzg==
X-CSE-MsgGUID: qJlB3mtETCKW4Iw+cJVSSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200407"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 15/15] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Wed, 18 Sep 2024 20:13:43 +0530
Message-ID: <20240918144343.2876184-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

Allow forcing ultrajoiner through debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c              | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 85742400348f..f5dcc1a4c45c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1520,6 +1520,7 @@ static ssize_t i915_joiner_write(struct file *file,
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = m->private;
 	struct intel_display *display = to_intel_display(connector);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int force_join_pipes = 0;
 	int ret;
 
@@ -1538,6 +1539,13 @@ static ssize_t i915_joiner_write(struct file *file,
 	case 2:
 		connector->force_joined_pipes = force_join_pipes;
 		break;
+	case 4:
+		if (HAS_ULTRAJOINER(i915)) {
+			connector->force_joined_pipes = 4;
+			break;
+		}
+
+		fallthrough;
 	default:
 		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
 			force_join_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4005700ab043..be82d4485fee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1317,6 +1317,8 @@ int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
 	case 1:
 		fallthrough;
 	case 2:
+		fallthrough;
+	case 4:
 		return connector->force_joined_pipes;
 	default:
 		MISSING_CASE(connector->force_joined_pipes);
-- 
2.45.2

