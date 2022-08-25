Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6368D5A14D9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 16:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5881B10E38F;
	Thu, 25 Aug 2022 14:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C350E10E38F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 14:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661439155; x=1692975155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xtARnxyRZnhpYhzBIZ2SOwTsdxFjkpt22DHlPDcYScM=;
 b=AvoWWLS/Bd4sxoFnSp2GjlOzU/Nj+GFR8p9LmsPehpjnM5Pp+hP6XKLg
 laDDcnyC1uHY9xw9ZEcZ6QPB8ubJnKF5ZwZzqUH6xnSIXg+dEmBnt4V7q
 AoMK1lWEwk9/KLmktR+QiZ6c/yK+78uYtIwDRbKeAIMgwGVWBSHl97dEi
 FqQdoZnIiFNVK9maMpZDJHgtDJevoQ6PL0qHHgcMFaLv1G0KHk43CvRa9
 XiPd5zU/fPfyUX3xA40BOCUFOWYc6sCtxGCBB0yXfSCOCh3BIpSKZzKBk
 jm32pI/kFzrCL8JStx08emF+DSymmkyE5VELrP6ZjEabpWhiK5Bfi2B9L Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358222626"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="358222626"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 07:52:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="678487020"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 07:52:33 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 16:52:11 +0200
Message-Id: <20220825145211.22941-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: do not try misaligned_pin
 test on unmappable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of Small BAR configurations stolen local memory can be unmappable.
Trying to test it causes -ENOSPC error from _i915_gem_object_stolen_init.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6565
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index fb5e6196347925..667c4c004bdbcf 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1164,6 +1164,10 @@ static int misaligned_pin(struct i915_address_space *vm,
 		if (hole_size < 3 * min_alignment)
 			continue;
 
+		/* avoid -ENOSPC on unmappable memory */
+		if (!mr->io_size)
+			continue;
+
 		/* we can't test < 4k alignment due to flags being encoded in lower bits */
 		if (min_alignment != I915_GTT_PAGE_SIZE_4K) {
 			err = misaligned_case(vm, mr, addr + (min_alignment / 2), size, flags);
-- 
2.25.1

