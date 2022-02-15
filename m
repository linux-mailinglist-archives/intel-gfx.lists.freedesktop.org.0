Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08044B7B4E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 00:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463C610E46B;
	Tue, 15 Feb 2022 23:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB6710E5BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 23:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644968530; x=1676504530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+uj4E2bb5yAjfaqO/aX9MlAHhvKT7LDSNFoyuNapB2U=;
 b=Q9mGiymmHI2SjyjYjecthgItXlypt3lQGhWeqoGXYJ+iLU6/tdXAYr42
 e3vXXPq6wfqm3LDC3VBEgXn92NWVVKpeg/Gc9hrqasbhFkjwHioJpi8Cl
 90TQAW2XPoMM1WsvN9ZDarhjtu7QSUk5vkQQ3QySpQm2mQ6C7FaafH+oU
 QH87gKoojBE4Y0B35+F4JZvF0fcWcsdqbqP+Kl5C/3wdrBQWqXfOUIG2U
 X65+1pmauh1qs05xKOVscFyDFmVYH4ayTMlxPZQta2ArA81AcMODkm3CF
 ui19afAYyDuDmeh0oG/ue42S8ZKJNDD/Ii8GOp7ql2SgJ4OkLArUXclel w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237888545"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237888545"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 15:41:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="681250543"
Received: from leemi-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.251.143.221])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 15:41:52 -0800
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 15:41:46 -0800
Message-Id: <20220215234146.304035-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220215234146.304035-1-casey.g.bowman@intel.com>
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v3 1/1] i915/drm: Split out x86/arm64 for
 run_as_guest
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Splitting out run_as_guest into platform-specific functions
as arm64 does not support this functionality.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1bca510a946d..fdec2b025540 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1381,10 +1381,18 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
 
+#if IS_ENABLED(CONFIG_X86)
 static inline bool run_as_guest(void)
 {
 	return !hypervisor_is_type(X86_HYPER_NATIVE);
 }
+#elif IS_ENABLED(CONFIG_ARM64)
+static inline bool run_as_guest(void)
+{
+	/* Not supported for arm64, so we return false  */
+	return false;
+}
+#endif
 
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
-- 
2.25.1

