Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E54B5E74EA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 09:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2254310E476;
	Fri, 23 Sep 2022 07:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8060110E469
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 07:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663918523; x=1695454523;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gIle/YJE+un2mK2jXxsgYlKBsOBm0V1lumhDCUR5n4s=;
 b=V9igxS/JagkXmdQWEeCaBo/xJHJuaI1lYRA2TiElAUsvuRBifTqxeFjR
 cW6+OXCrhcNrZc16jbyuEU61rlGNkTIX5wti6hpomvNTA53fToIHAW/TF
 7gp4UOLyHVzniOilY4ehUMHiVRZ6mWJ1WNnAjbZ2UxeYSyGcK82vKgqZB
 khTWyin26l4ZPU0eQb/I2aUfaHNwyxNXUG/wMlF0cGvNx9bcY64fBxEtQ
 y/MRGWhxcXEqceHcRZzmuge+7T3jNiB8I7+WdDYQ09LxUE1sJuVV2/XkS
 BNZ8fH+PjWjop5L8H+CpwxHM6Kh074UtnAsYNNmNPO8WCx+ze1U3mFjQ4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280901047"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="280901047"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 00:35:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="795420082"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 00:35:21 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 09:35:14 +0200
Message-Id: <20220923073515.23093-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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

i915_gem_drain_freed_objects() might not be enough to
free all the objects and RCU delayed work might get
scheduled after the i915 device struct gets freed.

Call i915_gem_drain_workqueue() to catch all RCU delayed work.

Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 88df9a35e0fe..7541028caebd 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1278,7 +1278,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
 {
-	i915_gem_drain_freed_objects(dev_priv);
+	i915_gem_drain_workqueue(dev_priv);
 	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
 	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
 	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
-- 
2.37.3

