Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F6B6714BB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 08:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0413210E6B6;
	Wed, 18 Jan 2023 07:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9DFD10E68D;
 Wed, 18 Jan 2023 07:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674026174; x=1705562174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ZfLx14VQts4btj9IQGik2CfGNVFjVDYe8Oxf6OY6yk=;
 b=lWqJTeZpR3JEQ6zeY8vNtJTt7Uf7WVGEoLYfmJJcn64HhdEw0i8yh5+B
 bpMtkWLpzfVUlUooe7eET/57bwi3012eNx4zOVhQKsENw2AYT+PrqnfRJ
 rA3XPOu5lSsCeLHOlN8M9jzIahbviizKyHC6uQYoWpMLt7L6+5DSiGL68
 pGFQBZrYPxKbcHxeyvDGAMLaVbpv3UwtgBwK9qKjMSW1kuayC/eWAJ4W6
 JVNhARSXv2SlQM/xUG7wH+ZCzbNON7/CHpu9mL+e7HZg4lTbqU162iZqJ
 pr8oqXIa1wttSo4TPQVxSB2izcoDAllybRZeTYoPlxUTB7/iekIkxyNi6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308482024"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308482024"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 23:16:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="661609956"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="661609956"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 23:16:13 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 17 Jan 2023 23:15:47 -0800
Message-Id: <20230118071609.17572-2-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
References: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 01/23] drm/i915/vm_bind: Expose vm lookup
 function
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make i915_gem_vm_lookup() function non-static as it will be
used by the vm_bind feature.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 11 ++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_context.h |  3 +++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 46e71f62fcec..b90901ad6866 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -346,7 +346,16 @@ static int proto_context_register(struct drm_i915_file_private *fpriv,
 	return ret;
 }
 
-static struct i915_address_space *
+/**
+ * i915_gem_vm_lookup() - looks up for the VM reference given the vm id
+ * @file_priv: the private data associated with the user's file
+ * @id: the VM id
+ *
+ * Finds the VM reference associated to a specific id.
+ *
+ * Returns the VM pointer on success, NULL in case of failure.
+ */
+struct i915_address_space *
 i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
 	struct i915_address_space *vm;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index e5b0f66ea1fe..899fa8f1e0fe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -139,6 +139,9 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
 				       struct drm_file *file);
 
+struct i915_address_space *
+i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id);
+
 struct i915_gem_context *
 i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id);
 
-- 
2.21.0.rc0.32.g243a4c7e27

