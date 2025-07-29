Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FA1B14BC4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 11:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9412E10E603;
	Tue, 29 Jul 2025 09:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcJyOuoo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547B810E1F0;
 Tue, 29 Jul 2025 09:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753783074; x=1785319074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rVyb6hLm7Wa/I6sJiVGuqX9dHlbYRipZ9WwJxr36fss=;
 b=fcJyOuoo2mqR270Cj/LTrK6tzD6W0YT/qSm3GkblnFL1yv4CJVW/K3wV
 0Pt2CRU2lekrE1LckXQ2DkzJlb3MJmXHqn658yYB3HiPVmd2NtecJ07YS
 Pjsy5c+Gwi6wHhXJqrTWI5bvo6l4hzahoPY2jotRe/uotnD16W8ZOUm1o
 mc/pb7ZuXvMwbL1vJs8ypsQ7ALfYuaF8jBg9YaoMkZKkdhB36jg4yq7g5
 Q5zcjRrLVvMTnrO2YtqpZnclL66YQwSekrHS0nLrB4c1hm/V4+xsXdDwe
 a0XtXF43IXHIgqSJeU/GAdbV5BjUgefv76oxZTPiL+1thmXyFUO/FYEe7 w==;
X-CSE-ConnectionGUID: eYd55DwARGaxXc6MK1K7dw==
X-CSE-MsgGUID: yZGJpdegRo2M9NEFLFH1kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="81484980"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="81484980"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:54 -0700
X-CSE-ConnectionGUID: 7v61eybyT66g1ULuDtI8lQ==
X-CSE-MsgGUID: ntkLouBUSYmsROC7VeesYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="167962078"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 2/3] drm/i915/gvt: use drm->debugfs_root for creating debugfs
 files
Date: Tue, 29 Jul 2025 12:57:38 +0300
Message-Id: <482a3516e00b2885cd62f872ad09f51a9d8176b4.1753782998.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753782998.git.jani.nikula@intel.com>
References: <cover.1753782998.git.jani.nikula@intel.com>
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

Since commit 0b30d57acafc ("drm/debugfs: rework debugfs directory
creation v5") we should be using drm->debugfs_root instead of
minor->debugfs_root for creating debugfs files.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/debugfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
index 673534f061ef..415422b5943c 100644
--- a/drivers/gpu/drm/i915/gvt/debugfs.c
+++ b/drivers/gpu/drm/i915/gvt/debugfs.c
@@ -194,9 +194,9 @@ void intel_gvt_debugfs_add_vgpu(struct intel_vgpu *vgpu)
 void intel_gvt_debugfs_remove_vgpu(struct intel_vgpu *vgpu)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_minor *minor = gvt->gt->i915->drm.primary;
+	struct dentry *debugfs_root = gvt->gt->i915->drm.debugfs_root;
 
-	if (minor->debugfs_root && gvt->debugfs_root) {
+	if (debugfs_root && gvt->debugfs_root) {
 		debugfs_remove_recursive(vgpu->debugfs);
 		vgpu->debugfs = NULL;
 	}
@@ -208,9 +208,9 @@ void intel_gvt_debugfs_remove_vgpu(struct intel_vgpu *vgpu)
  */
 void intel_gvt_debugfs_init(struct intel_gvt *gvt)
 {
-	struct drm_minor *minor = gvt->gt->i915->drm.primary;
+	struct dentry *debugfs_root = gvt->gt->i915->drm.debugfs_root;
 
-	gvt->debugfs_root = debugfs_create_dir("gvt", minor->debugfs_root);
+	gvt->debugfs_root = debugfs_create_dir("gvt", debugfs_root);
 
 	debugfs_create_ulong("num_tracked_mmio", 0444, gvt->debugfs_root,
 			     &gvt->mmio.num_tracked_mmio);
@@ -222,9 +222,9 @@ void intel_gvt_debugfs_init(struct intel_gvt *gvt)
  */
 void intel_gvt_debugfs_clean(struct intel_gvt *gvt)
 {
-	struct drm_minor *minor = gvt->gt->i915->drm.primary;
+	struct dentry *debugfs_root = gvt->gt->i915->drm.debugfs_root;
 
-	if (minor->debugfs_root) {
+	if (debugfs_root) {
 		debugfs_remove_recursive(gvt->debugfs_root);
 		gvt->debugfs_root = NULL;
 	}
-- 
2.39.5

