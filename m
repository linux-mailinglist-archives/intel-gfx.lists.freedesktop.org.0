Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4913BB9AE87
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A3910E784;
	Wed, 24 Sep 2025 16:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cSN0JzCB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431B610E784;
 Wed, 24 Sep 2025 16:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732280; x=1790268280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0c4s/DkGxoPVLx/+i1wu8DN4NkmbRICo9exza5qkpQ=;
 b=cSN0JzCBgR4urpszgl4VO3TJo/nV77pB1GZaQhAM+UVphIx6H7Kl/8fG
 H5EkwpNujT84kKJoCS0a5Q13MiQsQ/om+MEXAcFBGtV7g0BWlDd5Ia71g
 bWA2yQCc29+V+EpltsQ2Q5PoZbVZMBMhSPXXhJJY+y31UjZyil8cYz/LV
 c9WlJIF3RcbfpH8uUgS7fDGSGWuy9BM+6GdPgRIHJM3JaBBR+IVr0JP29
 n7rCUSpQ82vztbg3y8pTfDljGY2PP/lDfebnfFOSV7nGpVx+YSXVxEAgM
 2RlHgg+TwxBkazL0BdC1F7QEstkDS8wKMOjaZ6YsLpJMiCyk9G5Ei4/1W g==;
X-CSE-ConnectionGUID: hXorgwZ2SN6psnqhLVTUAw==
X-CSE-MsgGUID: j84bjAl+TOy8Oumx6AsTZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="64676903"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="64676903"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:40 -0700
X-CSE-ConnectionGUID: b4Id9MuvRoekylkQvj7j/g==
X-CSE-MsgGUID: BBZyAOofSRSgietC5tcS7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="208009347"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 11/11] drm/xe/stolen: use the same types as i915 interface
Date: Wed, 24 Sep 2025 19:43:40 +0300
Message-ID: <f15d41bc232dfa957841f16d9a069c777af40194.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
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

Unify the i915 and xe interfaces by switching to the same types as i915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h  | 8 ++++----
 drivers/gpu/drm/xe/display/xe_stolen.c                    | 7 +++----
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index 42927326e567..48e3256ba37e 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -11,11 +11,11 @@
 struct drm_device;
 struct intel_stolen_node;
 
-int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node,
-					 u32 size, u32 align,
-					 u32 start, u32 end);
+int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
+					 unsigned int align, u64 start, u64 end);
 
-int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u32 size, u32 align);
+int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
+				unsigned int align);
 
 void i915_gem_stolen_remove_node(struct intel_stolen_node *node);
 
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index d7af731d9c90..9f04ba36e930 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -11,9 +11,8 @@ struct intel_stolen_node {
 	struct xe_bo *bo;
 };
 
-int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node,
-					 u32 size, u32 align,
-					 u32 start, u32 end)
+int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
+					 unsigned int align, u64 start, u64 end)
 {
 	struct xe_device *xe = node->xe;
 
@@ -42,7 +41,7 @@ int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node,
 	return err;
 }
 
-int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u32 size, u32 align)
+int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size, unsigned int align)
 {
 	/* Not used on xe */
 	WARN_ON(1);
-- 
2.47.3

