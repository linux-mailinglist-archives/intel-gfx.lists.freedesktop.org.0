Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3D997F032
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0248210E464;
	Mon, 23 Sep 2024 18:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PH+BT1tS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA66B10E461;
 Mon, 23 Sep 2024 18:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115135; x=1758651135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5pzAvT+xYaGvx9VLhAPsVJ7DmO1QegoR+fanhPKP3E0=;
 b=PH+BT1tSzAnLK1Y/EF6hA7oo5PimoN7pKQfz9iSRDmx32bMN77QbIKK5
 qeq1pF7gafOtckN/AYEMdInCtJ4Vpv348f92yGPO7YuBMxAofudD3YrRr
 T/Rbr4h8zcyfscIm3rQDYjWdoT3PPdq6ihExAUifWT45lr+VnK20y5gw4
 Vn/EtBL2gjSCxlQhw3G3DttM6aI0Vqaz4I+dqYSuNZuL6mbapSqHyr6Cl
 QzFLST7YvnrWyNZd9/t4JJmp0F080WwyuTp3P51+CtOWcQOIFR3CtGkCa
 i867U6Na5QgfQHqkLDLI/YObrPi29+BgkIYPIFiwduoo9frQ6bGbJncqQ g==;
X-CSE-ConnectionGUID: 1b+UmuVORquxog29yekxdg==
X-CSE-MsgGUID: fyIm6qUGSICiQi+qRqk0PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866359"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866359"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:13 -0700
X-CSE-ConnectionGUID: pIyf53YETcCklNK6uEgbmg==
X-CSE-MsgGUID: EQRYR8m3SsWrjBx58qmWRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734484"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 16/16] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Mon, 23 Sep 2024 23:43:36 +0530
Message-ID: <20240923181336.3303940-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

v2: Minor refactoring of switch case logic. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index af164e340cb3..01ddebc61944 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1331,6 +1331,7 @@ static ssize_t i915_joiner_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int force_joined_pipes = 0;
 	int ret;
 
@@ -1349,6 +1350,13 @@ static ssize_t i915_joiner_write(struct file *file,
 	case 2:
 		connector->force_joined_pipes = force_joined_pipes;
 		break;
+	case 4:
+		if (HAS_ULTRAJOINER(i915)) {
+			connector->force_joined_pipes = force_joined_pipes;
+			break;
+		}
+
+		fallthrough;
 	default:
 		return -EINVAL;
 	}
-- 
2.45.2

