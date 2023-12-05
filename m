Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A290805640
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8EA10E539;
	Tue,  5 Dec 2023 13:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6833110E53C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701783718; x=1733319718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AStN1c5pb2JF+aMWVra6j/G7SfyhrWuLQoIPsQzk2Os=;
 b=D8pUJQIpkHEjL67T/oXltSRkf3B3+6/zb9+O0RpsLF7IFx/BnXSHotj/
 bIVQJPhuOi3CCmoREc3AuLRR4vidNUeFc9v9iGCO8FIxDbQmcjbq+3uro
 +JKjEtVhgaI4DKy0ePWaWZR0xYrhvSYnBJDJK9Iyz3YO4B/6NDsBH2OUG
 g9eqV9prFuoUkFlBAAiNXy9QN9po0vr43yWTtW0YkAdAMsb9tXgjaL5Wh
 Km56ymNkieR+3FsHv70m0HuY9CU3qiw4XnSf3skO+NdOwNasgBbLSs0Gt
 hw97IjqCOygpYT3Tkp4Yb08PjRC6HY8AqDf5EZvikMaihSCvNipzl9mWb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384293160"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="384293160"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:41:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="764331007"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764331007"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:41:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 15:41:43 +0200
Message-Id: <20231205134143.2427661-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205134143.2427661-1-jani.nikula@intel.com>
References: <20231205134143.2427661-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: use octal permissions in display
 debugfs
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

Octal permissions are preferred over the symbolics ones.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 668862fa513c..d951edb36687 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1095,7 +1095,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 
 	for (i = 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
 		debugfs_create_file(intel_display_debugfs_files[i].name,
-				    S_IRUGO | S_IWUSR,
+				    0644,
 				    minor->debugfs_root,
 				    to_i915(minor->dev),
 				    intel_display_debugfs_files[i].fops);
@@ -1582,13 +1582,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_psr_connector_debugfs_add(connector);
 
 	if (connector_type == DRM_MODE_CONNECTOR_eDP)
-		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
+		debugfs_create_file("i915_panel_timings", 0444, root,
 				    connector, &i915_panel_fops);
 
 	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
-		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
+		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
 				    connector, &i915_hdcp_sink_capability_fops);
 	}
 
-- 
2.39.2

