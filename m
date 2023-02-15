Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F284A6987C8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 23:24:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9938310EC68;
	Wed, 15 Feb 2023 22:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B2710EC68
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676499873; x=1708035873;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r9WhrL5ScuU7bm8VqRevlN86MpbBoxcyOX0R2zNtH8k=;
 b=CMbmA6ugB3UjADuDjZv2D6jT6Wy8ch9DYwAEkjqCM+PZbhegRmCpQEVL
 nuIhisxhRTYwrI1M8SKI47bBzd0mT98qKlBAE7roN3JLfWvIPDne7Wyxx
 3CrBu/cTN2bHXQP7pCjfRSwGA0+iciYNt4VaMXgoSYmMSALQuEyE7uRub
 Xxfq2uK3yLpuUKCd4eesPor/QfmYOIEAfChCiBw2qC9sUKHgQvj5nUUtt
 uB4+ywSNQpXi/+wp/ECiKvDzmD7GWLDS3/xY0tl2t9S/QeNPZ7+qpVeNX
 hCtfORqU50SPoIXekquy1trpb4uzp6Am5Silx3NiWK8R1NTQwkNtRz1Nb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="417780489"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="417780489"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 14:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="619771142"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="619771142"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga003.jf.intel.com with SMTP; 15 Feb 2023 14:24:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Feb 2023 00:24:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 00:24:26 +0200
Message-Id: <20230215222426.26085-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230215222426.26085-1-ville.syrjala@linux.intel.com>
References: <20230215222426.26085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add a few more debugs for failed
 framebuffer creation
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Most of the .fb_create() failure paths are annotated but there
are a few that seem capable of failing silently (well, higher
level code should print something, just not anything actually
useful). Drop a few more hints into the log to aid in debugging.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 1ba052a127b9..799bdc81a6a9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2007,6 +2007,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 		vm = intel_dpt_create(intel_fb);
 		if (IS_ERR(vm)) {
+			drm_dbg_kms(&dev_priv->drm, "failed to create DPT\n");
 			ret = PTR_ERR(vm);
 			goto err;
 		}
@@ -2049,6 +2050,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
 		/* object is "remote", not in local memory */
 		i915_gem_object_put(obj);
+		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
 		return ERR_PTR(-EREMOTE);
 	}
 
-- 
2.39.1

