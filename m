Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5192D4E2816
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:51:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923EF10E266;
	Mon, 21 Mar 2022 13:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D93EE10E266
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870677; x=1679406677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uYe+MthyLIiuPHh3EH/9E/9qT504nDLaD493FghwHKI=;
 b=Q+O80W1IicwDBim0sjVUcAfNQKyNIyRfakuVsZVvRJqY5nrua/FHLQnS
 jhTrw+HqSJ9r+twdW8lWRPzG2k5eB92Gnke9lK/c/kgumLwxfLNzBD4Ng
 T2/KwwR1a1YEKHpgg7pV/TLzGiGmORw9i4X99zNQJrKL9IO5eB/kkB5JL
 w+CbB3mIcUaSuMwJwdtZ7DerLnPhklM2Lx2nElcO1rKEh0xJUeO4+pbdK
 ahkksMc5T0uJuDHpQicLn38KwIrhfiCr9Og54S9+Tn6mjkmsspf5ePvw8
 hJECCy89Kf0RPeyDhmQsnGL5PUgqeqd0nBABxmTVaH82Diz0pbdYLWS+j g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="282382378"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="282382378"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="648570600"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:32 +0200
Message-Id: <b813d0cf1b800386742eb3f919b0ba8d5c182a2a.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
References: <cover.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915/dmc: fix i915_reg_t usage
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_reg_t is supposed to be a somewhat opaque data type, not to be
looked inside.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
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

