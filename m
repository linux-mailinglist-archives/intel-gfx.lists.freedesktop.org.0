Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDA15B276D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B71110E59C;
	Thu,  8 Sep 2022 20:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7782410E064
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 20:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662667640; x=1694203640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t4YzckH8BTqVLkL7QfedK6zJ/LcLRnUBnt18GjY0m1A=;
 b=X+/qnTnmnYEl5jbC/aYL96WdKt3GHOAQdrQxhNsyWUu3MAKMwRa3XX9m
 0Kgb9d5BMNO2+ejsxjn5RH4GKJ+qBLLhmNuRN7WszS9Hrm4AJwz4LQ1F/
 zRAdPVVXZ53Cr9H2MHVv9eAMLjytR02OjCdcbIUUdW02Un7dw09Hm7YAf
 PzK7+L9X3E8Hoy2JClQtZS92yoI2PUpce1hq/Gac7sd7ZdiF8fLtr/iH0
 d+EWtjdk8J1c0XxUQUrYBRW5J+RmyPLFWG4LaPdFF7ajUeCBQHwUIZIuw
 MN+MX8WgP0C4F3/bMs4Xml4EM3bRbA7lq8PlVr4haHbIDKyiWBwQHfvkr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="284332841"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="284332841"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:07:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="683369650"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:07:19 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 22:07:06 +0200
Message-Id: <20220908200706.25773-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220908200706.25773-1-nirmoy.das@intel.com>
References: <20220908200706.25773-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: remove excessive
 i915_gem_drain_freed_objects
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_drain_workqueue() call i915_gem_drain_freed_objects()
so no need to call that again.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c                  | 2 --
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e8a053eaaa89..e16718d79533 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1217,8 +1217,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 
 	/* Flush any outstanding unpin_work. */
 	i915_gem_drain_workqueue(dev_priv);
-
-	i915_gem_drain_freed_objects(dev_priv);
 }
 
 void i915_gem_driver_release(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index f5904e659ef2..5d02346c43a2 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -67,7 +67,6 @@ static void mock_device_release(struct drm_device *dev)
 	intel_gt_driver_remove(to_gt(i915));
 
 	i915_gem_drain_workqueue(i915);
-	i915_gem_drain_freed_objects(i915);
 
 	mock_fini_ggtt(to_gt(i915)->ggtt);
 	destroy_workqueue(i915->wq);
-- 
2.37.3

