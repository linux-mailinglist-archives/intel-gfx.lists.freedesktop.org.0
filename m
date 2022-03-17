Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFFE4DCDAA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4886510E735;
	Thu, 17 Mar 2022 18:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4468F10E735
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542203; x=1679078203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DLi7llELoNI+UevQuIDo1OMQHXX7vjq6GeNmZdx4kcg=;
 b=Jdqp6sFW5bH5Zq08e6tYedgYsOdGeeOw8rBuX7sPHSeapvIMgMv7pb1y
 /HJ1v3je5RMz6JdZWVdgEjDI982lg/Mch8i67+tAKESxMetnnT9bRKCnw
 tgUzbyOma96FX36fMVyyL2TucSaYPiyGvixDPq1WV2nZFJkuGoa0DxYXp
 x0vwVn3bDBgj6//teiU2O4k8cvXXlb8xm2/YOD3pdpkk6SnHWK3HrP90l
 6FkPSoGM4yb17j2l0hvGcuLqDgfNg5R6jWKgVdIeFamAN+hMfqeXEZZXP
 VMKdGB9YUrvLnIy/OPJNh7OHJNJ6tTfxHaqe/JFcxU+C2eMsUNf0fDfMP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257139649"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="257139649"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516878612"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:16 +0200
Message-Id: <b35d1cab535265d04cd2161b0f8984d5d93af5c4.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/dmc: fix i915_reg_t usage
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

i915_reg_t is supposed to be a somewhat opaque data type, not to be
looked inside.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2e11725a0828..5de13f978e57 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -816,7 +816,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	struct drm_i915_private *i915 = m->private;
 	intel_wakeref_t wakeref;
 	struct intel_dmc *dmc;
-	i915_reg_t dc5_reg, dc6_reg = {};
+	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
 
 	if (!HAS_DMC(i915))
 		return -ENODEV;
@@ -868,7 +868,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	}
 
 	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(i915, dc5_reg));
-	if (dc6_reg.reg)
+	if (i915_mmio_reg_valid(dc6_reg))
 		seq_printf(m, "DC5 -> DC6 count: %d\n",
 			   intel_de_read(i915, dc6_reg));
 
-- 
2.30.2

