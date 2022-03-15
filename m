Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9106D4DA228
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B599510E489;
	Tue, 15 Mar 2022 18:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E3810E46B
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368110; x=1678904110;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JMWLl+4AsIvUZcxFlBUoMXglzfiv9S2lh8PREp6Hsho=;
 b=jKRfztzmx/oh7cOEdIheStFlFNXi2Mp9cPXiy9AhT4giuS+9hRrpOOM4
 kpQm6nEDelHXqVoPhZs6C0UcxEIAzEjpkY9Wso7St0UvT4pM1i6cJP4Kx
 xL/YLPv6THoJOAsVyOZfIgJaV5xn/TrvDclFEFS/0ejCvK9I2N9tblUA/
 5qvaIVmXNuXNUgyJXWylMI7xgkVjh6rgCrvHoiCzR3TjQpx0kt/RHrrkh
 djhdjNwWrhSV5RtaAnCAtH2ib41AyHf85GaMVJ9ZRub4xHM1ToHsu3UY/
 m0KRebu4LDJfGiRU0SfVPyf+Rzf5vAzgomjmYnBbGk+7SFJv/4VzQcy3w w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255221158"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255221158"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="498133191"
Received: from sobyrne-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:09 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:14:24 +0000
Message-Id: <20220315181425.576828-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315181425.576828-1-matthew.auld@intel.com>
References: <20220315181425.576828-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 6/7] drm/i915/display: Check mappable aperture when
 pinning preallocated vma
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

From: CQ Tang <cq.tang@intel.com>

When system does not have mappable aperture, ggtt->mappable_end=0. In
this case if we pass PIN_MAPPABLE when pinning vma, the pinning code
will return -ENOSPC. So conditionally set PIN_MAPPABLE if HAS_GMCH().

Suggested-by: Chris P Wilson <chris.p.wilson@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Ap Kamal <kamal.ap@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 5227e5b35206..f797fcef18fc 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -51,6 +51,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 base, size;
+	u64 pinctl;
 
 	if (!mem || plane_config->size == 0)
 		return NULL;
@@ -101,7 +102,10 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (IS_ERR(vma))
 		goto err_obj;
 
-	if (i915_ggtt_pin(vma, NULL, 0, PIN_MAPPABLE | PIN_OFFSET_FIXED | base))
+	pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
+	if (HAS_GMCH(i915))
+		pinctl |= PIN_MAPPABLE;
+	if (i915_vma_pin(vma, 0, 0, pinctl))
 		goto err_obj;
 
 	if (i915_gem_object_is_tiled(obj) &&
-- 
2.34.1

