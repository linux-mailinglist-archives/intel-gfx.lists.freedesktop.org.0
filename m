Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F066BEA56
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 14:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD78A10E111;
	Fri, 17 Mar 2023 13:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F9010EF24
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 13:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679060516; x=1710596516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UVhs6UAUNdXHIF9iNsydBhNHnrw+iOUucZX3Q3NCupo=;
 b=QFmE+EVnAGWEgJgejhtjUKFEt7S6Eh5biTqnZPWDXI6owy4fIupTdPYU
 I1YWvHhkq3pTWG+mQ1jwRI4vzVzM1GFbWQ2xvELpySJVmTco1p57tDgR0
 2XajIpEfHky4PAJMk2D5tOvIafsgE/6QLCMEMyICEKw8CBRweUZmfz8Az
 kjL0aOd+Tt2gWcK/6ax2UlKfaW1j8pdUFuhN/47PxYprsLQ6gZ8mnIOje
 e7KISj7lyOgXYKqQZy2aO1nakp7AziiBK77nAjD3Ovzr/C36UO9YuvP1F
 zGQPgnb8bXB0T9Tk586xOBYmiV8CtzWKZsE3YvR5FnH6KXoLOk874BOT/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424532312"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="424532312"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:41:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="790717024"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="790717024"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:41:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 15:41:43 +0200
Message-Id: <20230317134144.223936-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230317134144.223936-1-jani.nikula@intel.com>
References: <20230317134144.223936-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/psr: switch PSR debugfs to struct
 intel_connector
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

Prefer struct intel_connector over struct drm_connector.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d3205d99b54..bd1a1a2524b5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2879,7 +2879,8 @@ void intel_psr_debugfs_register(struct drm_i915_private *i915)
 
 static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 {
-	u8 val;
+	struct intel_connector *connector = m->private;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	static const char * const sink_status[] = {
 		"inactive",
 		"transition to active, capture and display",
@@ -2890,17 +2891,15 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 		"reserved",
 		"sink internal error",
 	};
-	struct drm_connector *connector = m->private;
-	struct intel_dp *intel_dp =
-		intel_attached_dp(to_intel_connector(connector));
 	int ret;
+	u8 val;
 
 	if (!CAN_PSR(intel_dp)) {
 		seq_puts(m, "PSR Unsupported\n");
 		return -ENODEV;
 	}
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return -ENODEV;
 
 	ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
@@ -2922,21 +2921,19 @@ DEFINE_SHOW_ATTRIBUTE(i915_psr_sink_status);
 
 static int i915_psr_status_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct intel_dp *intel_dp =
-		intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = m->private;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	return intel_psr_status(m, intel_dp);
 }
 DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
 
-void intel_psr_connector_debugfs_add(struct intel_connector *intel_connector)
+void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 {
-	struct drm_connector *connector = &intel_connector->base;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct dentry *root = connector->debugfs_entry;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct dentry *root = connector->base.debugfs_entry;
 
-	if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
-- 
2.39.2

