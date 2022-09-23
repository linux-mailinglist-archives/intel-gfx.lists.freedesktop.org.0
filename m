Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8153E5E74EB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 09:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA0110E479;
	Fri, 23 Sep 2022 07:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC2510E482
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 07:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663918524; x=1695454524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pzFFg4Ru4SJ5xFjwp6g7F1OTmt6Gyhc6G7+UTo9gZ+Q=;
 b=iO1hxJdN70M9d9yEithADcT8gP0/S3rrUKXtCgZbTP4U36A7Pq0+xtpl
 8YQBDP+RBVUTDlX7/Gc74A7ddUO3Tz2EsGJCrjxsBw+WLbJJJ74cD6tp/
 h2HMg7WFUZRhlF3w1KoyYSTFO1gMvFZUPuJ9xOFQWzqRBcULzL3+LFsMB
 8/hyZt+EhxApZb5YwFCH/BZvxRU7/eY/IQvWR0r9NCy7jqw7q8atjmgpd
 MDmcWdgGq3/7qAebWwcaquZCzShMREMOqCs7CGTwLKVe59oaCkkNoAmtR
 GCkj/ukM+/jK/l2KvGTKG41mbN6gNJ2IdWZqA4TrmMIfdkGrUYZP4ryZI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280901050"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="280901050"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 00:35:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="795420094"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 00:35:22 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 09:35:15 +0200
Message-Id: <20220923073515.23093-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220923073515.23093-1-nirmoy.das@intel.com>
References: <20220923073515.23093-1-nirmoy.das@intel.com>
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
Cc: chris.p.wilson@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_drain_workqueue() call i915_gem_drain_freed_objects()
so no need to call that again.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c                  | 2 --
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 7541028caebd..55d605c0c55d 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1236,8 +1236,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 
 	/* Flush any outstanding unpin_work. */
 	i915_gem_drain_workqueue(dev_priv);
-
-	i915_gem_drain_freed_objects(dev_priv);
 }
 
 void i915_gem_driver_release(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index fff11c90f1fa..f6a7c0bd2955 100644
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

