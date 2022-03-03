Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E554CC73C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 21:45:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D2F10E489;
	Thu,  3 Mar 2022 20:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E6710E489
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 20:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646340341; x=1677876341;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j1z0lAuxEOtHRIPWoqtSaKOQG+Vclv/9Doozc/SBQws=;
 b=KgZEHpRHYMnpP4QLQpnE/GjfjYJ/sgOREqZhEguYyp5YjZKvRyyLTYl5
 GN7g7rmtSIdrbaK/8RHL1wwAg+bBQBRhCUQA4zMAf/BlANOWN3Uxx+777
 5afhXqjDece6GwOuQKuyn7vzvxZLYY3mJrWWItximzcvADEe2kRoPlPiP
 LWwEufcuSUcLiBAfuli+qSkahOwNfKVxAGNP2Ot+LNneBQHDPVeqX8fkf
 WHHALBu/dleE90RD3BE15jBEDPih9+EBFgJWZTk45WGHgFyH2HKWgTVHP
 s6cybD3BbKZ43Ujqe2WKOD6+DG+11uMaL5ZJw7DTjlhuPSpvj5/cbY86i w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="233767445"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="233767445"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 12:45:40 -0800
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="710079249"
Received: from telordan-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 12:45:38 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 20:45:27 +0000
Message-Id: <20220303204528.885217-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/2] drm/i915/fbdev: fixup setting screen_size
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

