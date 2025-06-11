Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F457AD5945
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 16:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CE210E69E;
	Wed, 11 Jun 2025 14:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8C2QgQz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6652610E6A0;
 Wed, 11 Jun 2025 14:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749653492; x=1781189492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rVyb6hLm7Wa/I6sJiVGuqX9dHlbYRipZ9WwJxr36fss=;
 b=H8C2QgQzwzx1Dl3gxbsCHxd44X1AiUn/vW9LuetxlqLkDwXmFju8lR9r
 rwgTs/vcvwIGcL2NuTswDjXBebI9xdtfUjdF410NOgMgtaim50/iNwwDA
 4Q1jtnK8Vp+coah9+z/cVnQCBJ0SUANcXKq+6iTY2+VPHYmqNN7e9GuI7
 q8olA4TexsAkILp4/t59GrsqbrpWmx5dfQLxYLJ8NGxJnHz2aeDrgmRa7
 0Ynhep325MidKa7z15RmTgbQMgjkLwy3n0XAKO3H7lGYC8NDL4B/9eY9a
 0xk/Ex7VSAvqglxjqE4iAOvToSlFYRXoU1gVwmSj0t5BCnK2jcwWxGw2G A==;
X-CSE-ConnectionGUID: PeMLCIKpQh+k4ukIXdMjmg==
X-CSE-MsgGUID: Z6Zn0TzWTXO7Gg34s43Xvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51714038"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51714038"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:32 -0700
X-CSE-ConnectionGUID: Tmw/OfJGScmRaRoIpBv5uw==
X-CSE-MsgGUID: ahLLA+dRRgCx4xiuFOnLHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="147122206"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/gvt: use drm->debugfs_root for creating debugfs
 files
Date: Wed, 11 Jun 2025 17:51:15 +0300
Message-Id: <12b26d3976bfe39a603461fbc89a42bee63d7115.1749653355.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749653354.git.jani.nikula@intel.com>
References: <cover.1749653354.git.jani.nikula@intel.com>
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

