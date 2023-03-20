Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84576C1226
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 13:44:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620A310E3F9;
	Mon, 20 Mar 2023 12:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D890510E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 12:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679316283; x=1710852283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=46ns0NIcmuN0+e9BZoutn96whhwJ+kyj5mwGOD9BbhY=;
 b=aChe9d2uiMPbwmxYpPjN8XMwAXer1I7hOkeEELAXQHT5OTXxF8m3rshZ
 LUMkp78SiKDBnKUwu3B2f9Lcno0PRCpPA6vty4wm2U/+ipeCmnOX0ZcZj
 K6PCAeao5uj1s/FRO7sNiZRPjsFL2ISQM4FdOskMVrY2QNwHYeYzn1fwO
 yvTrStYarOa8Bnso07yVmLH9A1nVi1oHTZcHq5BKiDQn5IZDlF86ohR4y
 qocnIWMOzU4U63ZqVB7ElcEsRwZOby7q47SJ4YDkuodLlZUHeWza9dFIH
 /InAT+Pr+igPnHLi3ZwPvrh84URqhOYLz/zU2O/HrUHyhnYxSdFiutxcT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="366366981"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="366366981"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:44:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="791600489"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="791600489"
Received: from mseifert-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.180])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:44:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 14:44:29 +0200
Message-Id: <20230320124429.786985-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320124429.786985-1-jani.nikula@intel.com>
References: <20230320124429.786985-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/debugfs: add crtc i915_pipe
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

v2: User letters for pipe names (Ville)

Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3c76e718b951..cc5026272558 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1383,6 +1383,17 @@ static int i915_current_bpc_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
 
+/* Pipe may differ from crtc index if pipes are fused off */
+static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
+{
+	struct intel_crtc *crtc = m->private;
+
+	seq_printf(m, "%c\n", pipe_name(crtc->pipe));
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered drm_connector
@@ -1453,4 +1464,6 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
+	debugfs_create_file("i915_pipe", 0444, root, crtc,
+			    &intel_crtc_pipe_fops);
 }
-- 
2.39.2

