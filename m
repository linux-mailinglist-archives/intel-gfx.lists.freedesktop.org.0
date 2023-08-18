Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E265780B19
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 13:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC40210E4F8;
	Fri, 18 Aug 2023 11:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9617A10E4F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692358086; x=1723894086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Y02uonfCFsPSwYFlYN8yTM3oES4nUMwYG4RI05kvUY=;
 b=MtHqP8e4aUn2Zv0fvGnDTLgGHUD/Su8P+hVU+Y2kw/iSmkLCCIkQE/Lu
 RVnEyJ9i3TVjqoQzqN+rIjrAS9R9VjTfdDA0w/oeXtzQ7oPcXPXVLIdEf
 yKwMqivLN3w59Zp244iY4mO/0h9YK+mOoMUBgAf1xi4E73UTuSiLrSV8m
 D6RylO7c4AOEDB9bI7X3g20OVhX/VIk4DZ4cyFKsJLzGv6zf4GRUYHrLS
 orxS+1tMdMka2LLGcmiSXthAXI8n0k9GiClb8hpoZPTJoUxiOUJyjM3Zh
 qYVA18wq1Wr2YxNSTdELiXjXuRoO7VggTpePB/bBpvAaZ34UWBLyJ/4kq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370539107"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370539107"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="825090616"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="825090616"
Received: from rladysz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.175])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:28:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 14:27:58 +0300
Message-Id: <20230818112758.3586545-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/vma: constify unbind_fence_ops
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

unbind_fence_ops can be const and placed in rodata.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_vma_resource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
index 6ba7a7feceba..53d619ef0c3d 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.c
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -94,7 +94,7 @@ static void unbind_fence_release(struct dma_fence *fence)
 	call_rcu(&fence->rcu, unbind_fence_free_rcu);
 }
 
-static struct dma_fence_ops unbind_fence_ops = {
+static const struct dma_fence_ops unbind_fence_ops = {
 	.get_driver_name = get_driver_name,
 	.get_timeline_name = get_timeline_name,
 	.release = unbind_fence_release,
-- 
2.39.2

