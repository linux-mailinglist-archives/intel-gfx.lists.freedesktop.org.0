Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 237D397D510
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB7D10E81E;
	Fri, 20 Sep 2024 11:57:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OzZJgX+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE8610E81C;
 Fri, 20 Sep 2024 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833455; x=1758369455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y9LMjrej2pDCEtRnb+xc6t7Gv0h1sAr4B2Fz9otmeLI=;
 b=OzZJgX+87gQPa0lAkk/Z66FXBwvT4Mpbjbva2HHPfQ8yldnYi/fKHaEE
 /Qd55/SUNTzn/1S0ow5oe+KcktWAFGFCiku4WptomZAaxlOlDadAVo7Cc
 JPE7cPQhXw61G6/YYsQKf/wgJPzSAktpzucUJHFaNzxtMASwj3l066cGx
 FqT3BVLv8NuOHJloVpLuOE3imHIhROo+P7M3MAx2yDoGtD6l6mhy/BFAc
 UaMeYJQ8eD3u4jRHxwTI6OKmPtA87BpQz90uiaV6OLfIkyGuLgPfUAddF
 zWQPFTGCVvSdY6YRT792VVaMIv7bPgtEkqDZpBqgqqnlHP1wRPlLhB7jR g==;
X-CSE-ConnectionGUID: 71KkZo62REaTa3q6jmBk+w==
X-CSE-MsgGUID: BuU2VUVtTZuTRV44o9GkDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25984583"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25984583"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:35 -0700
X-CSE-ConnectionGUID: leqjY3tGQuGbdcnbl3SO1A==
X-CSE-MsgGUID: xrvaRgKJRhGE1m8gsL1fNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70519183"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/9] drm/i915/display: remove the loop in fifo underrun
 debugfs file creation
Date: Fri, 20 Sep 2024 14:56:49 +0300
Message-Id: <bd74ff250075c599163c988ae6fb5316f92bf192.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
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

No need for the loop for a single file, and no more files should be
added here, but rather in functionality specific source files.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c    | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 484be08048cf..890ef7067b77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -866,26 +866,13 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_lpsp_status", i915_lpsp_status, 0},
 };
 
-static const struct {
-	const char *name;
-	const struct file_operations *fops;
-} intel_display_debugfs_files[] = {
-	{"i915_fifo_underrun_reset", &i915_fifo_underrun_reset_ops},
-};
-
 void intel_display_debugfs_register(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
 	struct drm_minor *minor = i915->drm.primary;
-	int i;
 
-	for (i = 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
-		debugfs_create_file(intel_display_debugfs_files[i].name,
-				    0644,
-				    minor->debugfs_root,
-				    to_i915(minor->dev),
-				    intel_display_debugfs_files[i].fops);
-	}
+	debugfs_create_file("i915_fifo_underrun_reset", 0644, minor->debugfs_root,
+			    to_i915(minor->dev), &i915_fifo_underrun_reset_ops);
 
 	drm_debugfs_create_files(intel_display_debugfs_list,
 				 ARRAY_SIZE(intel_display_debugfs_list),
-- 
2.39.2

