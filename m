Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B6C57B645
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 14:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5669A8B8C7;
	Wed, 20 Jul 2022 12:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E78B8B8D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 12:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658319814; x=1689855814;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5MWMywZ3NAxfBnkGEO8Ak7gbqiq6PeH4mLZ1yy0NGOE=;
 b=BrmynS8HUuRFQ973GdD/DAtzxn0qG7dNpguvsysBDlZqMCTN6OEgQ9wM
 au00BSjnMoayOb5rwVSMwPq/JOpjyDba7cNITtxUsZ5yW3jDP7wNFvKS+
 Y3/2cE1iKJxk4yUBW2mBqTwRY9r7IhFxcm6AMToT7Wwqr3i44wARg6eb1
 LVEBf/oa5A0qo/WroAmpz0du73YEDKlqrNtuz2xWl2j4bVxqzCCgM3lnq
 TIHGikyYal1hKEx7PPM7zjxU5hn/YNleurcHgg4PubDw/3aPsY4wewJ9a
 58MPw2UEMqDStXmvCATEO+9r9L8Z/SaeGLkv197W9+GT36C7ZyJwgq6iV Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="348457353"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="348457353"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 05:23:33 -0700
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="656249131"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 05:23:32 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jul 2022 14:23:21 +0200
Message-Id: <20220720122321.18270-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Suppress oom warning for shmemfs
 object allocation failure
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
Cc: chris.p.wilson@intel.com, matthew.auld@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

We report object allocation failures to userspace with ENOMEM, yet we
still show the memory warning after failing to shrink device allocated
pages. While this warning is similar to other system page allocation
failures, it is superfluous to the ENOMEM provided directly to
userspace.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4eed3dd90ba8..4466173e1bcc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -137,7 +137,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 				 * trigger the out-of-memory killer and for
 				 * this we want __GFP_RETRY_MAYFAIL.
 				 */
-				gfp |= __GFP_RETRY_MAYFAIL;
+				gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
 			}
 		} while (1);
 
-- 
2.35.1

