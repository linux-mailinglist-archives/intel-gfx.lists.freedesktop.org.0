Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1309570843F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 16:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19A810E0E1;
	Thu, 18 May 2023 14:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5216310E0E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 14:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684421463; x=1715957463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L+oQP+GxwM3Pwrw+LkNGtHH4rG1wS86zD5WkKfX3EkY=;
 b=R63SjGDu5KVSe7R/tOgePDgFGQKJF/Gbywcn6XMhcyHjGkZJqLE0Kfnf
 o6dAc/+QLJD8TNwW/iCxKWqJbvqEG2iESM02NtwXXCpI4imDc2SEo7VKq
 tf9xEQYhRI85s03vuhwrkwltCR64LYA4kP+2O26HEzcLAdIJYbZ2UI5bK
 wT1Nif5o4n6Yz6zT3zlaj7dA5l9NYfvHJJqtx0JKiWcUxOIECkl/wAwqu
 T+IKLXtsfKno1agLjPU/W67eNESciBNTfzW7a/WSbSMsk38+cLjxLgcBF
 NT92yCsUFEohww1BZAqY8aLy7kKi5lMXQF4XRhmxtxMKDK+3Jymg6CbDx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="352100978"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="352100978"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 07:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="826406420"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="826406420"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 07:51:00 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
Date: Thu, 18 May 2023 16:50:52 +0200
Message-Id: <20230517-mtl_disable_render_pg-v2-1-0b51180a43f0@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
References: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.2
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mtl: do not enable render
 power-gating on MTL
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple CI tests fails with forcewake ack timeouts if render
power gating is enabled.
BSpec 52698 states it should be 0 for MTL, but apparently
this info is outdated. Anyway since the patch makes MTL pass basic
tests added FIXME tag informing this is temporary workaround.

v2: added FIXME tag

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Changes in v2:
- added FIXME tag
- Link to v1: https://lore.kernel.org/r/20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 908a3d0f2343f4..58bb1c55294c93 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -117,8 +117,14 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_RC_CTL_RC6_ENABLE |
 			GEN6_RC_CTL_EI_MODE(1);
 
-	/* Wa_16011777198 - Render powergating must remain disabled */
-	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	/*
+	 * Wa_16011777198 and BSpec 52698 - Render powergating must be off.
+	 * FIXME BSpec is outdated, disabling powergating for MTL is just
+	 * temporary wa and should be removed after fixing real cause
+	 * of forcewake timeouts.
+	 */
+	if (IS_METEORLAKE(gt->i915) ||
+	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |

---
base-commit: 641646b29337c97681e0edb67ad2e08aef3fb850
change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

