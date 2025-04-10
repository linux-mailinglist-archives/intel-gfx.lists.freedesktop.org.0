Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D4EA84631
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 16:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B296210E9D4;
	Thu, 10 Apr 2025 14:24:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BlycOH4g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DF810E9D4;
 Thu, 10 Apr 2025 14:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744295062; x=1775831062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O6UzQpSjJjHcqgPWDpOGZI3U/eIKfEbfjhSbcD15byo=;
 b=BlycOH4ghrpUwpqe0uiXwHQlVra9vGUAOlKyW9X0ecGXxIcgkC0oXUBM
 UgALzXEWiyceRR7OttKzNbr6qDrVzqMsV8V8MBGecrQjVhci8U6oaBkAk
 stKXrW5VpLSLGXGeXk2vi7rjExxjS47sENgnujGAlhWsB5nLdg97zzQTV
 KhS59kQv9DCn2SYjsPmiE72VNY9A35uU3cUMh/aKwjdsvjo2hEmEr3u/r
 vAwbXDBvV6DGfe8qoxxaIy80yYSKqsFRrqziGuTNJNdUb05ib8DgJ+/iz
 6J5dGSK0kuc+v3IYsZs++kRCBzZt7aykDomk8NHe+TmOPPQ8iSH8n5mdG Q==;
X-CSE-ConnectionGUID: gU9lPAfuTuKxrHJdcUq/jA==
X-CSE-MsgGUID: fwMHl5k6RYKt6J6mYSGF4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45711327"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45711327"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:24:22 -0700
X-CSE-ConnectionGUID: iSc/3D5pT423ZQM5gOxvAg==
X-CSE-MsgGUID: 25t0ExRUQLmLYk+0opFDbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128669839"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:24:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/debugfs: move PCH type to display caps
Date: Thu, 10 Apr 2025 17:24:05 +0300
Message-Id: <a864b7a577ea7a3bd2435e9734e023593edbfd5a.1744295009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744295009.git.jani.nikula@intel.com>
References: <cover.1744295009.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Arguably PCH is more relevant to display. Move the information to
display caps debugfs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 +++
 drivers/gpu/drm/i915/i915_debugfs.c                  | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d43ae6729f21..4c208fdb9137 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -53,8 +53,11 @@ static struct intel_display *node_to_intel_display(struct drm_info_node *node)
 static int intel_display_caps(struct seq_file *m, void *data)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_printer p = drm_seq_file_printer(m);
 
+	drm_printf(&p, "PCH type: %d\n", INTEL_PCH_TYPE(i915));
+
 	intel_display_device_info_print(DISPLAY_INFO(display),
 					DISPLAY_RUNTIME_INFO(display), &p);
 	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 0d9e263913ff..967c0501e91e 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -66,8 +66,6 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 
-	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
-
 	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
-- 
2.39.5

