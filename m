Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDB286AC22
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 11:25:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A946B10E221;
	Wed, 28 Feb 2024 10:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bKNm3gmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8D910E221
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 10:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709115920; x=1740651920;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1fDm6vBaSivMaLoCcEOcZEar/skv3vm65I3BXV9eOs0=;
 b=bKNm3gmN9w/lKjyQ9Az7Pr+ISmqT0kZTh7x+J6eKPzbDTcsDP5Tw9xMZ
 +Ndw3cPbnEQPxRxkjZ7bKrvqd5gskLQWa4z1/lzFLn4RURgn2wF2MkINY
 jwS5i2juw56CMtiPlXPgWKCOHqic3GWukFayNYDUsvaTkmUXTgeml0JqZ
 VMeE/lNpzW9S7XaOF9eD4TllWOrpJWxR4yyvBJvB0CTsbvjLfD9sHKh+Q
 GBIv0eeRNZFH6Jl3IC223nK/ZcwiEhgzIjWJ1YbruskSH7MgGaqO3u0vg
 0VqHog9UGSUvT9n899G65E+dznRZy6HHPyGofZPJEY6Sgu9wAS32Mu1zq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="28939163"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="28939163"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 02:25:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="12102404"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orviesa003.jf.intel.com with ESMTP; 28 Feb 2024 02:25:17 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH V2] drm/i915/mtl: Update workaround 14018575942
Date: Wed, 28 Feb 2024 16:07:38 +0530
Message-Id: <20240228103738.2018458-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Applying WA 14018575942 only on Compute engine has impact on
some apps like chrome. Updating this WA to apply on Render
engine as well as it is helping with performance on Chrome.

Note: There is no concern from media team thus not applying
WA on media engines. We will revisit if any issues reported
from media team.

V2(Matt):
 - Use correct WA number

Fixes: 668f37e1ee11 ("drm/i915/mtl: Update workaround 14018778641")
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d67d44611c28..25413809b9dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1653,6 +1653,7 @@ static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
 	/* Wa_14018575942 / Wa_18018781329 */
+	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
-- 
2.25.1

