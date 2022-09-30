Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697B35F0FA2
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 18:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D472E10ED76;
	Fri, 30 Sep 2022 16:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0391910ED73
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 16:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664554340; x=1696090340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qE0stFtDl4U2of9S3MG6Xz5/Ofv2I82YBK8wMkIpXoc=;
 b=nIrNs+NxBFCd3QZW9aQ4DT+auDUEmwM6+xn96VKnZvbkUSXHdeYPlj8l
 8rV1aJLjCUwlqnPakFdMwngQCJPCR/EQ7ASd8xPN0S27lV387sipaPW+5
 I/dFUn2L/yrRnsXVUEGQLJ5O8N52vZPkmG1P3Nb3XXi5TJauGHqg05M+O
 n2/ZPdiQCF89jVoTO7lvrB7JNzXMeBZpcW5Xi2mhTvefMXomrj4QnYUk5
 /WCrkV/YYGNiwkIG6fJgnzaGUuhxwuzfFUJ6wH6G+uw8MUmFBhGv779aU
 HRWQA9Ae8XAyH7xvXVzmY8eu5Zavm5La0i6RyZhKHBceVcIlmvgCZqA5z g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="299828212"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="299828212"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 09:12:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="726910746"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="726910746"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.39])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 09:12:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 17:12:00 +0100
Message-Id: <20220930161203.432540-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915: remove the TODO in
 pin_and_fence_fb_obj
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The copy is async (if there even is one), but when later updating the
GGTT we always sync against the binding, which will in turn sync against
any moves.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jianshui Yu <jianshui.yu@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index c86e5d4ee016..0cd9e8cb078b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -141,7 +141,6 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 		ret = i915_gem_object_attach_phys(obj, alignment);
 	else if (!ret && HAS_LMEM(dev_priv))
 		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
-	/* TODO: Do we need to sync when migration becomes async? */
 	if (!ret)
 		ret = i915_gem_object_pin_pages(obj);
 	if (ret)
-- 
2.37.3

