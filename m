Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA2B4C911F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6505E10E55F;
	Tue,  1 Mar 2022 17:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA4E10E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646154544; x=1677690544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j1z0lAuxEOtHRIPWoqtSaKOQG+Vclv/9Doozc/SBQws=;
 b=PjarISNSmsydHXbLF46rcQo5Qp+L43Si237BxVZ1O/zx3YY89jzxmaqW
 ja4WsR+F9gWSqp4eFa4hs2Gw07uA1bMN0Doyw4PMzO1bMB5O8ikAdLrTV
 ptoFuScr49QLE0MYozLuUgBnVHWZm1jhfovigaB9pTOdDu4b9f5c5kMab
 WhTXFqVf10U4++1gNRO4AqI+4rLRZV4rgqJGqSk9YCVlhdVKuztewxgTl
 IqdrDNeV+n+drHeZ3QuzPmJrEkuCXXukYHcPL9aOPOUKRvji4SxpSTba4
 VZ/zB7bjZl5wq37FOOqi5c8v2uvk4B6KjDPnuKLhTbsW8UrGjCxMQ6519 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="313904424"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="313904424"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:09:04 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="493185398"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.82])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:09:03 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 17:08:34 +0000
Message-Id: <20220301170835.682715-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301170835.682715-1-matthew.auld@intel.com>
References: <20220301170835.682715-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/3] drm/i915/fbdev: fixup setting screen_size
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

Since we are actually mapping the object and not the vma, when dealing
with LMEM, we should be careful and use the obj->base.size here, since
the vma could have all kinds of funny padding constraints.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 2cd62a187df3..3167ae334684 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -290,7 +290,10 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unpin;
 	}
 	info->screen_base = vaddr;
-	info->screen_size = vma->node.size;
+	if (i915_gem_object_is_lmem(obj))
+		info->screen_size = vma->obj->base.size;
+	else
+		info->screen_size = vma->node.size;
 
 	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
 
-- 
2.34.1

