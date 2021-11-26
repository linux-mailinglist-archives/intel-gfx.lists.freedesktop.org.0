Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AA445EC37
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 12:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6E06E5C1;
	Fri, 26 Nov 2021 11:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AB36E5C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Nov 2021 11:09:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="296451210"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="296451210"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 03:09:07 -0800
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="675526010"
Received: from dmadorsx-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 03:09:06 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Nov 2021 11:08:43 +0000
Message-Id: <20211126110843.2028582-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gemfs: don't mark huge_opt as static
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

vfs_kernel_mount() modifies the passed in mount options, leaving us with
"huge", instead of "huge=within_size". Normally this shouldn't matter
with the usual module load/unload flow, however with the core_hotunplug
IGT we are hitting the following, when re-probing the memory regions:

i915 0000:00:02.0: [drm] Transparent Hugepage mode 'huge'
tmpfs: Bad value for 'huge'
[drm] Unable to create a private tmpfs mount, hugepage support will be disabled(-22).

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4651
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gemfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
index dbdbdc344d87..182da3c04771 100644
--- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
+++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
@@ -12,6 +12,7 @@
 
 int i915_gemfs_init(struct drm_i915_private *i915)
 {
+	char huge_opt[] = "huge=within_size"; /* r/w */
 	struct file_system_type *type;
 	struct vfsmount *gemfs;
 	char *opts;
@@ -33,8 +34,6 @@ int i915_gemfs_init(struct drm_i915_private *i915)
 	opts = NULL;
 	if (intel_vtd_active()) {
 		if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
-			static char huge_opt[] = "huge=within_size"; /* r/w */
-
 			opts = huge_opt;
 			drm_info(&i915->drm,
 				 "Transparent Hugepage mode '%s'\n",
-- 
2.31.1

