Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7605B276C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD54A10E064;
	Thu,  8 Sep 2022 20:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE2710E064
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 20:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662667639; x=1694203639;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CckStyMebEHsUAIZs+aXqi0IbL/BULQQ5dwyq2c0UcI=;
 b=gI/43c/tzqo720m+V9fkTs1lW0jlF8chOew5Rbpf0OFC3FYyu4IJYSri
 NHgj1eXs5EuM4DQ8c/nmYIyfH7ZUv1TzCcBQFdgONxg03XSxFagSAWcbk
 WeuwYfmMzSQsmPCIl5yVC00B/+2y8Dlv/U0aMYxjX1IVDkSWx3yMtAiL7
 dsyyRUfS/EJJLxWERpINYDv9e80h1c5OTJCanYBvnN7PAn57Lu9sSMXOg
 BAH7X7yVIWBLR1h4pJu/QYDeQOfq6dZaTFNeIoiYYSjhUq2KuR2Y0rf4J
 hX93uSDrUPojDsLDNxAmrotqTtysvZ9lbZeJbwyAH80Y8jVmGv7Ic59QG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="284332840"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="284332840"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:07:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="683369645"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:07:17 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 22:07:05 +0200
Message-Id: <20220908200706.25773-1-nirmoy.das@intel.com>
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_drain_freed_objects() might not be enough to
free all the objects and RCU delayed work might get
scheduled after the i915 device struct gets freed.

Call i915_gem_drain_workqueue() to catch all RCU delayed work.

Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0f49ec9d494a..e8a053eaaa89 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
 {
-	i915_gem_drain_freed_objects(dev_priv);
+	i915_gem_drain_workqueue(dev_priv);
 	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
 	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
 	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
-- 
2.37.3

