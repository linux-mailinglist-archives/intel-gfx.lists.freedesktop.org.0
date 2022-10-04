Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEDC5F4423
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E4D10E6FC;
	Tue,  4 Oct 2022 13:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BAE10E706
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664889589; x=1696425589;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qE0stFtDl4U2of9S3MG6Xz5/Ofv2I82YBK8wMkIpXoc=;
 b=SHFtbWphtXaR0AaYXNKZCoKGJmEuW3MUCf9s/pXXfcCJXsQYPxDYGzZj
 aCg0v6lxO3tNSi/VuYkW/RzsTlEqoiDNTfeD88gxvguHE8JAMfJuCv8rD
 oeISzUp/4REjywZjIfBgDZacfnKlSVXITMmeNqsa4qEB7X49EJxPJWZCK
 9QPYxSfzspVI2EUUPfgaAGjhOEq0hetMkAW5B6MkunQlkR7hL7lT/D3zh
 ijijE+8faNa6iDibD8f7YoCYUpM15cXEx+HrarjkmaGoBugHC4DfBC6W2
 vvS/0wPtqKt229zhHp54KeQMPaVCLOMmzUO5bQzRtf5VvD7xj8KUbSLkm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300507219"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="300507219"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:19:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654766937"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="654766937"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:19:39 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 14:19:12 +0100
Message-Id: <20221004131916.233474-1-matthew.auld@intel.com>
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

