Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1B26BE9AD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 13:54:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F3F10E382;
	Fri, 17 Mar 2023 12:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC8A10E37A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 12:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679057640; x=1710593640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G1yGSlYg+oVmz8n4nDJzKqFq0yEHNW+OpkXtXd1p0BI=;
 b=Nc7vG+QluCZYdQsW0sBNmiPHG9JFNM9ENzbjjRY0THTeSwIiVMLrBJ1x
 z5k29BrgW/KNviZr0rJBzysvKpNpLetbWbYyI61CTJzRhaRaLaC9O0w4Q
 edbPNGQR1YmUxaBn2JDq2/XFXykzpdM3GAyh04atXgdLB45/rCff3bCA+
 89SoE8JeL/wxSuCJA3pX67cUc5w19MRm9yi9udlcKQzrkrf6IGxuz++ZE
 GPpmRnw3YSXxfzQGerh5daoKIzDMg8OhudYO7THakKtdj1Fqw5vYUNZqf
 XCZlk4L0r/MizIQw7cTUglPjHgLcAP1wtdHOvGMteDKzulboPNsloYkKe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="317907074"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="317907074"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 05:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="790701619"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="790701619"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 05:53:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 14:53:52 +0200
Message-Id: <20230317125352.198042-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230317125352.198042-1-jani.nikula@intel.com>
References: <20230317125352.198042-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: add crtc i915_pipe
 debugfs file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The pipe may differ from crtc index if pipes are fused off. For testing
purposes, IGT needs to know the pipe.

There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
the upcoming Xe driver won't have that IOCTL, and going forward, we'll
want a unified interface for testing i915 and Xe, as they share the
display code. Thus add the debugfs for i915 display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index faa44fb80aac..e85270adca95 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1657,6 +1657,17 @@ static int i915_current_bpc_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
 
+/* Pipe may differ from crtc index if pipes are fused off */
+static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
+{
+	struct intel_crtc *crtc = m->private;
+
+	seq_printf(m, "%d\n", crtc->pipe);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered drm_connector
@@ -1735,4 +1746,6 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
+	debugfs_create_file("i915_pipe", 0444, root, crtc,
+			    &intel_crtc_pipe_fops);
 }
-- 
2.39.2

