Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4760A6B8EAB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF80410E167;
	Tue, 14 Mar 2023 09:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB8C10E167
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678786053; x=1710322053;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6inblaNnQqk1yMv5WBgkNPB3Oi4kBrwTGLsl9YYLkBg=;
 b=FiJY0xiZzk0ZLU0E9twlt7Cb/eQDozX7z4hUV2xdJ5YjbnIeK7c5W/qe
 8XD61ld+0z6ZVDDuX0Ye8MuO0fHeaE2rEZkBOt56w3Y+I8kohP5kRElKS
 RVXkg8YIJySQffWzqxICSGKALVuYYsD84/3yu7c8kWKO3+zP72JxwtE8a
 JY3g3Jba2ApjM8EIOFLd6OJ5WkhBf+1QtoS39zsbpTPLIKLBvDw43v1RP
 Vk9CECWovgHv0u/54arFBszh/VZj7/aEXvK6CX1mE1Q6JYuiyUiSzpoi/
 TJM4iO3aeZxVxLa3H+YFA3L88rsVObHNVqpytWXLxXCKK2i/XaZYqz0FK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="339739849"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="339739849"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="711452394"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="711452394"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:27:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 11:27:28 +0200
Message-Id: <20230314092728.3977741-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/opregion: Fix CONFIG_ACPI=n builds
 adding missing intel_opregion_cleanup() prototype
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the missing intel_opregion_cleanup() prototype fixing CONFIG_ACPI=n
builds.

Fixes: 3e226e4a2180 ("drm/i915/opregion: Cleanup opregion after errors during driver loading")
Cc: Jani Nikula <jani.nikula@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Link: https://lore.kernel.org/oe-kbuild-all/202303141610.6L1VO7Gw-lkp@intel.com/
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 181eb3e9abbf3..fd2ea8ef0fa20 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -86,6 +86,10 @@ static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
+static inline void intel_opregion_cleanup(struct drm_i915_private *i915)
+{
+}
+
 static inline void intel_opregion_register(struct drm_i915_private *dev_priv)
 {
 }
-- 
2.37.1

