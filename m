Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 271C55FF1AD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 17:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88C510EB25;
	Fri, 14 Oct 2022 15:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F394410E08E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 15:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665762424; x=1697298424;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tiHaOM2qetKLbRtZUcwTK4iHytYL32CVIaUNBsRWsIo=;
 b=Ad1fwypft8mwOyR+vNDKOo9+rP0j1RpIGC2jekOYqHAtTYHiAO6MpJDr
 4CGHRVkQehJNTv8obH24S+wc8IK+f/+eIpv8p9jMhCNQssuKSpHMdobcd
 bRWjEMjYisJKxWtex2xGH3OEloXCo/I1D34D6zKKS8q46pgcfcdKnLw8l
 yQGZvtlqn+w6XGaxnoy4laWBdvmKZ7N1Xtp9n4C+EV33qnUNlrwftlIXt
 rePPeccP6lFWNEvvCIgksn/RNFz8Ulc65agqoOWjLeuHSBoqsFStLp84x
 Fbs8flYdiI+73qiwu/xv7Q31j977NKOMKPRwHqvZ8P363RQ2jA5H94fYc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285131699"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="285131699"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:47:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="658623078"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="658623078"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:47:02 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 17:46:55 +0200
Message-Id: <20221014154655.14075-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Print return value on error
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Print returned error code for better debuggability.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7211
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 112aa0447a0d..ab385d18ddcc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -175,7 +175,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 	}
 
 	if (IS_ERR(obj)) {
-		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
+		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
 		return PTR_ERR(obj);
 	}
 
@@ -256,7 +256,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	info = drm_fb_helper_alloc_fbi(helper);
 	if (IS_ERR(info)) {
-		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
+		drm_err(&dev_priv->drm, "Failed to allocate fb_info (%pe)\n", info);
 		ret = PTR_ERR(info);
 		goto out_unpin;
 	}
@@ -291,7 +291,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	vaddr = i915_vma_pin_iomap(vma);
 	if (IS_ERR(vaddr)) {
 		drm_err(&dev_priv->drm,
-			"Failed to remap framebuffer into virtual memory\n");
+			"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
 		ret = PTR_ERR(vaddr);
 		goto out_unpin;
 	}
-- 
2.37.3

