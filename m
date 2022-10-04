Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B03FE5F4111
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBAB810E052;
	Tue,  4 Oct 2022 10:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D997910E052
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664880689; x=1696416689;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qE0stFtDl4U2of9S3MG6Xz5/Ofv2I82YBK8wMkIpXoc=;
 b=gNnSbM81o+5ENKzzJ3pL8sPWssI8RMsWQltNqUnYp3wMFtx4pyRS326/
 v0IenaLlQUI0G4FIgkdAocm7Y94yRKXoDBwA7e8WtxG+DxEs4Fdjkzy1P
 QghWQtYsy9mrg2ypv3GP38WSVZmQP8hrNvx+QIp1GLaGMSh32XzyvYrdB
 5CBWr7xF9Dd1Nm3bSWRbxswz75Z9e4RiJ90lpq2tS64EKGSk6smjbNf7q
 qMU1the8Kc6lLDAh9QuzkSEXt0xXwYyRBuPG0EyxaKxGunDSlotL+c0ba
 LgLuv7M+pouBx3CIsoLPO20u/wbtrobkpLvXFuB8kSykStbIM+WDaX0d4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366977471"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="366977471"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:51:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="749333580"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="749333580"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:51:27 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 11:51:17 +0100
Message-Id: <20221004105121.203149-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/5] drm/i915: remove the TODO in
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

