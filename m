Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 383606BF7B7
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 05:21:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB14110E036;
	Sat, 18 Mar 2023 04:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6CC10E036
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679113252; x=1710649252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xCZZvGjOgHVWyS9jyBDzIv9E3lUnz/N8lm/mOiI60YY=;
 b=XvtL6Alq9cz+FO+1QApaQvbO/97oyKs5lWjzsCyLETHYP5dYlRnQOMty
 OLjykB3uCvHpHdmUyp6MljUmuTt4zga789usrFy2U167ZVTvIqrDiuLtb
 Dpz3zR+E/VUvox4l1w6aeu8QPAtG/WJKXdeL8kVn9gj/hz6Twjs1vT92v
 yL1PSYh5SKf4XemzY5rzjNRR4In8oUBWWfSTZWIBKqLQJ+dFhXu6ymcoR
 1robVtBQbQT6Ppq/cKX1vj1U0yhNlSDuiZovNZYMg30BLe2tzupoKH5yh
 Deu9uQBkE1zc9tI/q64H2zEhYEb5bFHM2rWFNlCjN+12OO/Qkdf02x9SB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424681854"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="424681854"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 21:20:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="680511437"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="680511437"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 21:20:50 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 09:47:04 +0530
Message-Id: <20230318041704.2714520-3-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230318041704.2714520-1-bhanuprakash.modem@intel.com>
References: <20230318041704.2714520-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 2/2] drm/i915/debugfs: add crtc i915_pipe debugfs
 file
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jani Nikula <jani.nikula@intel.com>

The pipe may differ from crtc index if pipes are fused off. For testing
purposes, IGT needs to know the pipe.

There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
the upcoming Xe driver won't have that IOCTL, and going forward, we'll
want a unified interface for testing i915 and Xe, as they share the
display code. Thus add the debugfs for i915 display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 29c049aac252..4e489f5aade7 100644
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
2.40.0

