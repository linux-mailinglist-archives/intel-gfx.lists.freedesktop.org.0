Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25A35815A5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 16:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930BF18BF81;
	Tue, 26 Jul 2022 14:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8942A75B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 14:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658846841; x=1690382841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5MWMywZ3NAxfBnkGEO8Ak7gbqiq6PeH4mLZ1yy0NGOE=;
 b=Fx8invYTIbPn87172XVuXXIYzvpq1zBHLHmKTBHA+jNGpiGVpJ45Gc99
 2gvLaeZYKC/+e+9/7HrbbaL6NuFbSrrf+ZQGZVQ+B1sUGp38+blyAG2E0
 pWfeWwnOnbT0irBUMLw70iLoBd9PE9gpH0yqeDrZwlj2W1487ehwod0iA
 NjudbRkhjqJLgRIwyUlNv6IicVdaINear/0vNuk59CA/adWsuXMlxXqtH
 Oo8taZ6N8tT1H+WPA0RoqQ7i0i3iiCOQ5HY5UAAKdGptTUilB+tEVoXuP
 LFGQKf7/1QAz/P5tdlamojNaGgj5qYPqZ7IwWjoiZNduVkMEWuOqYP4tc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="267737165"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="267737165"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 07:47:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="658718078"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 07:47:19 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jul 2022 16:47:14 +0200
Message-Id: <20220726144714.18251-1-nirmoy.das@intel.com>
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
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

